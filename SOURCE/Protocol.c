#include "stm32f4xx.h"
#include "global.h"


int32_t Modbus04ExtMem(int32_t Count, uint8_t *RxBuff, uint8_t *TxBuff, uint16_t *DataAddr, uint32_t DataLen) {
int32_t i;
int j;
int k;	
uint32_t Data;
uint32_t Addr;	

	if (Count!=8) return ModbusErr(0x03, RxBuff, TxBuff);
	
	//Кол-во регистров 																				
	i = (RxBuff[4] << 8) | RxBuff[5];	
  if ((i <= 0) || (i > ((USART_Buff_length - 5) >> 1) )) return ModbusErr(0x02, RxBuff, TxBuff);
  
  //Адрес первого регистра * 32 слова
	Addr	= ((RxBuff[2] << 8) | RxBuff[3]) << 5;	
  if ((Addr + i) > (DataLen >> 1)) return ModbusErr(0x02, RxBuff, TxBuff);						
		
	DataAddr += Addr;																/* Начальный адрес считываемых данных */

	((uint16_t *)TxBuff)[0] = ((uint16_t *)RxBuff)[0];

	TxBuff[2] = (i << 1);														/* Кол-во байт данных */
					j = 3;
					k = 3 + (i << 1);												/**/

	/* Если начинается с нечетного адреса, то сначала считываем полуслово и таким образом выравниваем адрес на границу слова		*/
	if ((uint32_t)DataAddr & 0x02) {
		Data = (DataAddr++)[0]; 
		TxBuff[j++] = Data>>8;
		TxBuff[j++] = Data;
	}

	/* Далее считываем целиком словами 																																													*/
	for ( ; j<k ; )	{
		Data = *((uint32_t *)DataAddr++);					/* Считываем сразу слово = два полуслова		*/
		DataAddr++;		
		((uint32_t *)(&TxBuff[j]))[0] = ((Data & 0xFF00FF00) >> 8) | ((Data & 0x00FF00FF) << 8);
		j += 4;
	} 

	Data = CalcCRC(k, TxBuff);
	TxBuff[k++] = Data;
	TxBuff[k++]	= Data>>8;

	return k;
}

int ModbusStdProc(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) {
union UsartPrms_union Prms;
	
	if (Status & USART_RecieveError) return 0;				/* Ошибка четности или кол-во принятых данных	*/
	if (RxCount < 4) return 0;																							/* Слишком мало байт принято									*/
	if (CalcCRC(RxCount, RxBuffer)) return 0;																/* Ошибка CRC																	*/
																																					/* Проверка адреса Slave											*/
	Prms.AllParams = GetSavedUartParams(PortNum);
	if (Prms.Params.Addr1 != RxBuffer[0]) {return 0;}

	switch (RxBuffer[1]) {
	  case 0x03: return Modbus03(RxCount, RxBuffer, TxBuffer, (unsigned short *)&PrgData, sizeof(PrgData)); break;
		case 0x04: return Modbus04ExtMem(RxCount, RxBuffer, TxBuffer, (uint16_t *)&ExtMem16[0], sizeof(ExtMem16)); break;
		case 0x06: return Modbus06(RxCount, RxBuffer, TxBuffer, (unsigned short *)&PrgData, sizeof(PrgData)); break;
		case 0x08: return Modbus08(RxCount, RxBuffer, TxBuffer, (unsigned short *)&PrgData, sizeof(PrgData)); break;
		case 0x10: return Modbus16(RxCount, RxBuffer, TxBuffer, (unsigned short *)&PrgData, sizeof(PrgData)); break;
		default:	 return ModbusErr(0x01, RxBuffer, TxBuffer);
		}
}

int RecieveTemprData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) {
union UsartPrms_union Prms;
int i;
	
	if (Status & USART_RecieveError) return 0;															/* Ошибка четности или кол-во принятых данных	*/
	if (RxCount != 26) return 0;																						/* Слишком мало байт принято									*/
	if (CalcCRC(RxCount, RxBuffer)) return 0;																/* Ошибка CRC																	*/
																																					/* Проверка адреса Slave											*/
	for (i = 0; i < 24; i++) {EvPrms.T[i] = RxBuffer[i];}

	return 0;
}	//int RecieveCellData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum)

int RecieveSlaveData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) {
union UsartPrms_union Prms;
short *SendDataPtr;
int i;
	
	if (Status & USART_RecieveError) return 0;															/* Ошибка четности или кол-во принятых данных	*/
	if (RxCount != 62) return 0;																						/* Слишком мало байт принято									*/
	if (CalcCRC(RxCount, RxBuffer)) return 0;																/* Ошибка CRC																	*/
																																					/* Проверка адреса Slave											*/
	SendDataPtr = &EvPrms.I1Flt2;
	for (i = 0; i < 12; i++) *SendDataPtr++ = ((short *)RxBuffer)[i];

	SendDataPtr = EvPrms.TD;
	for (i = 12; i < 16; i++) *SendDataPtr++ = ((short *)RxBuffer)[i];
	for (i = 16; i < 18; i++) *SendDataPtr++ = __USAT((((short *)RxBuffer)[i] - 800), 16);

	SendDataPtr = (short *)EvPrms.T;
	for (i = 18; i < 30; i++) *SendDataPtr++ = ((short *)RxBuffer)[i];

	return 0;
}	//int RecieveCellData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) 

int RecieveDriverData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) {
short *SendDataPtr;
int i;
	
	if (Status & USART_RecieveError) return 0;															/* Ошибка четности или кол-во принятых данных	*/
	if (RxCount != 18) return 0;																						/* Слишком мало байт принято									*/
	if (CalcCRC(RxCount, RxBuffer)) return 0;																/* Ошибка CRC																	*/
	
	if (PortNum == X14_15) {
		if (RxBuffer[0] == 0x01) {SendDataPtr = EvPrms.IGBTStat3;} else {SendDataPtr = EvPrms.IGBTStat1;} 
	} else if (PortNum == X16_17) {
		if (RxBuffer[0] == 0x01) {SendDataPtr = EvPrms.IGBTStat4;} else {SendDataPtr = EvPrms.IGBTStat2;} 
	} else return 0;
	
	for (i = 1; i < 8; i++) *SendDataPtr++ = ((short *)RxBuffer)[i];
	
	return 0;
}	//int RecieveCellData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum) 
