#include "stm32f4xx.h"
#include "global.h"

int	TermodatStatus = 0;
int TermodatStep   = 0;
int TermodatBUSY   = 0;
int TermodatError  = 0;
int TermodatInit   = 0;

unsigned char TxBufferTD[80];

static __inline unsigned char CharToASCII(unsigned char Symb) {
	return (Symb < 10) ? Symb + 0x30 : Symb + 0x37;
}

static __inline unsigned char ASCIIToChar(unsigned char Symb) {  
	if (Symb > 0x60) return (Symb - 0x57); else
	  if (Symb > 0x40) return (Symb - 0x37); else
			return (Symb - 0x30);
}
static __inline int CheckTermodatData(unsigned char *RxBuff) { 
unsigned char LRC = 0;
int  i;
	
  if (RxBuff[0]  != 0x3A) {return 1;}					//знак не ':'
  if (RxBuff[57] != 0x0D) {return 1;}					//знак не 'CR'
  if (RxBuff[58] != 0x0A) {return 1;}					//знак не 'LF'

  for (i = 0; i < 28; i++) {LRC += ((ASCIIToChar(RxBuff[(i<<1)+1])<<4)|(ASCIIToChar(RxBuff[(i<<1)+2])<<0));}
  if (LRC) return 2;
  return 0;	
}	//int CheckTermodatData(unsigned char *RxBuff)

void SetParam(unsigned short ParamAddr, unsigned short ParamValue, unsigned int ChNum, unsigned char *TxBuff)	{	
unsigned char TempBuff[7];
unsigned char LRC = 0;
unsigned int  i;

	ParamAddr  |= (ChNum << 10);												

	TempBuff[0] = 1;		
	TempBuff[1] = 6;
	((unsigned short *)TempBuff)[1] = ((ParamAddr & 0xFF00) >> 8)  | ((ParamAddr & 0x00FF) << 8);
	((unsigned short *)TempBuff)[2] = ((ParamValue & 0xFF00) >> 8) | ((ParamValue & 0x00FF) << 8);

	for (i = 0; i < 6; i++)	{LRC += TempBuff[i];}
  TempBuff[6] = -LRC;

	*TxBuff++ = 0x3A;									
  *TxBuff++ = 0x30;									
  *TxBuff++ = 0x31;									
	*TxBuff++ = 0x30;									
	*TxBuff++ = 0x36;									
	*TxBuff++ = CharToASCII((TempBuff[2]>>4)&0x0F);		
	*TxBuff++ = CharToASCII((TempBuff[2]>>0)&0x0F);			
	*TxBuff++ = CharToASCII((TempBuff[3]>>4)&0x0F);		
	*TxBuff++ = CharToASCII((TempBuff[3]>>0)&0x0F);			
	*TxBuff++ = CharToASCII((TempBuff[4]>>4)&0x0F);		
	*TxBuff++ = CharToASCII((TempBuff[4]>>0)&0x0F);			
	*TxBuff++ = CharToASCII((TempBuff[5]>>4)&0x0F);		
	*TxBuff++ = CharToASCII((TempBuff[5]>>0)&0x0F);			
	*TxBuff++ = CharToASCII((TempBuff[6]>>4)&0x0F);		
	*TxBuff++ = CharToASCII((TempBuff[6]>>0)&0x0F);			
	*TxBuff++ = 0x0D;
	*TxBuff++ = 0x0A;	
}

int  TermoRequest(void) {
  if (TermodatStatus)	{
	  switch (TermodatStep) {
	    case 0x00: {SetParam(0x01B0,0x0001,TDChannels-TermodatStatus,TxBufferTD);} break;
	    case 0x01: {SetParam(0x01B1,0x0000,TDChannels-TermodatStatus,TxBufferTD);} break;
	    case 0x02: {SetParam(0x01B5,  1000,TDChannels-TermodatStatus,TxBufferTD);} break;
	  }//switch
	  TermodatBUSY = 1;
		return 17;
	}
  else {/* Запрос температур	*/
		TxBufferTD[0]   = 0x3A;		
		TxBufferTD[1]   = 0x30;
		TxBufferTD[2]   = 0x31;	
		TxBufferTD[3]   = 0x30;		
		TxBufferTD[4]   = 0x33;		
		TxBufferTD[5]   = 0x30;		
		TxBufferTD[6]   = 0x30;		
		TxBufferTD[7]   = 0x30;		
		TxBufferTD[8]   = 0x30;		
		TxBufferTD[9]   = 0x30;		
		TxBufferTD[10]  = 0x30;		
		TxBufferTD[11]  = 0x30;		
		TxBufferTD[12]  = 0x43;		
		TxBufferTD[13]  = 0x46;		
		TxBufferTD[14]  = 0x30;		
		TxBufferTD[15]  = 0x0D;		
		TxBufferTD[16]  = 0x0A;
		TermodatBUSY = 1;
		return 17;
	} /* конец запроса температур	*/ 		
} //int TermoRequest(void) 

int  TermodatCycle(int Port) {
int TxCount;
  if (TermodatBUSY) {TermodatError = __QADD(TermodatError,1);	}
  if (TermodatError > 10) {TermodatInit = 0; TermodatStep = 0; TermodatStatus = 0;}	
  if (TermodatInit) {TermodatInit = 0; TermodatStep = 0; TermodatStatus = TDChannels;}	
  TxCount = TermoRequest();
	MasterSend(Port, TxCount, SendAlways, TxBufferTD);
	return TermodatError;
}	//void TermodatCycle(int Port)
int  RecieveTermodat(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) { 
int i = 0;
short T;
	/* Ошибка четности или кол-во принятых данных						*/
	if (Status & USART_RecieveError) {
		TermodatError = __QADD(TermodatError,1); 
		TermodatBUSY = 0;	
		return 0;
	}		
  /* Если мы отправляли команду, то ответ равен запросу 	*/
  if (TermodatStatus)	{	
	  if (RxCount != 17) {
			TermodatError = __QADD(TermodatError,1); 
			TermodatBUSY = 0;	
			return 0;
		}			
		
		for (i = 0; i < RxCount; i++) {
			if (TxBufferTD[i] != RxBuffer[i]) {
				TermodatError = __QADD(TermodatError,1); 
				TermodatBUSY = 0;	
				return 0;
			}		
		}

		TermodatStep++;							
		if (TermodatStep>2) {TermodatStatus--; TermodatStep = 0;}

		TermodatError = 0;
		TermodatBUSY = 0;
		return 0;
	} 
	
  /* Получение данных от термодата 				*/
  if (RxCount != 59) {
		TermodatError = __QADD(TermodatError,1); 
		TermodatBUSY = 0;	
		return 0;
	}	
  /* Проверка LRC													*/
  if (CheckTermodatData(RxBuffer)) {
		TermodatError = __QADD(TermodatError,1); 
		TermodatBUSY = 0;	
		return 0;
	}		

  /* Извлечение данных										*/
  for (i = 0;  i < TDChannels;  i++) {
		T = (ASCIIToChar(RxBuffer[(i<<2)+ 7])<<12)|	
				(ASCIIToChar(RxBuffer[(i<<2)+ 8])<< 8)|
				(ASCIIToChar(RxBuffer[(i<<2)+ 9])<< 4)|
				(ASCIIToChar(RxBuffer[(i<<2)+10])<< 0);
				EvPrms.TD[i] = T;
  }
  TermodatError = 0;
  TermodatBUSY = 0;
}




