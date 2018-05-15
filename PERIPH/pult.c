#include <stdio.h>
#include <Math.h>

#include "stm32f4xx.h"
#include "global.h"

#define __CountParams	8

struct ChangePrms_type {
		float Value[__CountParams];
		float	MinVal[__CountParams];
		float	MaxVal[__CountParams];
		float	StepVal[__CountParams];
			int PosVal[__CountParams];
			int PrecVal[__CountParams];
			int Flags[__CountParams];
		 char *StrVal[__CountParams];
			int Param;
			int Change;
} ChangePrms;

volatile int PultCount = 0;
				 int WorkPultKeyb = 0;
				 int Leds = 0x3F;

__align(4) unsigned char WorkPultBuff[36] = {0x7F,0xC0,0xFF,				
								  '"','E','N','E','R','G','O','K','O','M','P','L','E','K','T','"',
								  'E','K','-','P','P','-','0','2','1','5','-','1','2','-','x','x',
								  0x00};	

__align(4) unsigned char SendPultBuff[36] = {0x7F,0xC0,0xFF,
								  '"','E','N','E','R','G','O','K','O','M','P','L','E','K','T','"',
								  'E','K','-','P','P','-','0','2','1','5','-','1','2','-','x','x',
									0x00};

__align(4) unsigned char TableRusLCD[] = {
									0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,	/*0x00 - 0x0F*/
									0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,	/*0x10 - 0x1F*/
									0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2A,0x2B,0x2C,0x2D,0x2E,0x2F,	/*0x20 - 0x2F*/
									0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3A,0x3B,0x3C,0x3D,0x3E,0x3F,	/*0x30 - 0x3F*/
									0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F,	/*0x40 - 0x4F*/
									0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5A,0x5B,0x5C,0x5D,0x5E,0x5F,	/*0x50 - 0x5F*/
									0x0E,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6A,0x6B,0x6C,0x6D,0x6E,0x6F,	/*0x60 - 0x6F*/
									/* `																																													 */
									0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7A,0xD9,0x08,0xDA,0x0D,0x0E,	/*0x70 - 0x7F*/
									/*																										   {		|    }    ~ 						         */
									0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,	/*0x80 - 0x8F*/
									0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,	/*0x90 - 0x9F*/
									0x20,0x20,0x20,0x20,0x20,0x20,0x09,0x0E,0xA2,0x20,0x20,0x0B,0x20,0x20,0x20,0x20,	/*0xA0 - 0xAF*/
									/*															¦		 §									 «																		 */																			
									0xEF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xB5,0x09,0x20,0x0C,0x20,0x20,0x20,0x20,	/*0xB0 - 0xBF*/
									/*°																											 »																		 */						 
									0x41,0xA0,0x42,0xA1,0xE0,0x45,0xA3,0xA4,0xA5,0xA6,0x4B,0xA7,0x4D,0x48,0x4F,0xA8,	/*0xC0 - 0xCF*/
									0x50,0x43,0x54,0xA9,0xAA,0x58,0xE1,0xAB,0xAC,0xE2,0xAD,0xAE,0x62,0xAF,0xB0,0xB1,	/*0xD0 - 0xDF*/
									0x61,0xB2,0xB3,0xB4,0xE3,0x65,0xB6,0xB7,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0x6F,0xBE,	/*0xE0 - 0xEF*/
									0x70,0x63,0xBF,0x79,0xE4,0x78,0xE5,0xC0,0xC1,0xE6,0xC2,0xC3,0xC4,0xC5,0xC6,0xC7};	/*0xF0 - 0xFF*/

void ClearScreen(void) {
int i;	
for (i = 8; i > 0; i--) {((int*)SendPultBuff)[i] = 0x20202020;}
SendPultBuff[3]  = 0x20;
SendPultBuff[35] = 0x00;
}	
								

void InitPult(void) {
	
	if (PultSPI == SPI3) {																								
		if (RCC->APB1ENR & RCC_APB1ENR_SPI3EN) return;											/* Уже инициализировано	*/
		RCC->APB1ENR |= RCC_APB1ENR_SPI3EN;																	/* Clock enable fo SPI 3*/
	} else return;
	
	PultSPI->CR1 = 	SPI_CR1_SPE |				/*SPI Enable								*/
									SPI_CR1_SSM | 			/*Software slave management	*/
									SPI_CR1_SSI | 			/*Internal slave select			*/	
									SPI_CR1_MSTR| 			/*Master selection					*/
//									SPI_CR1_CPHA| 			/*Clock phase								*/
									(7ul << 3);					/*Clock / 256								*/
}

void PultUpdate(void) {
int WorkPultCount;
	WorkPultCount = PultCount;
  if (WorkPultCount > 36) return;
  if (WorkPultCount > 0)  WorkPultKeyb |= PultSPI->DR;
  if (WorkPultCount < 36)	PultSPI->DR = WorkPultBuff[WorkPultCount];
  PultCount = WorkPultCount + 1;	
}

int WaitPultReady(void) {
	return (PultCount > 36) ? (WorkPultKeyb | 0x80) : 0;	
}	

int PultRefresh(void) {
int i;	
	if (PultCount < 37) return 1;																											/* Pult not Ready							*/
	
  for (i = 8; i >= 0; i--) {((int*)WorkPultBuff)[i] = ((int*)SendPultBuff)[i];}			/* Copy data to work buffer		*/	

  WorkPultBuff[0]  = (Leds&0x3F)|0x40;																							/* Leds 											*/							
	SendPultBuff[35] = 0;																															/* Disable change SHIFT mode	*/
	
  WorkPultKeyb = 0;																																	/**/
  PultCount = 0;

	return 0;																																					/* return OK	*/
}

__weak void Display(void) {
int PultKeyb = 0;
while (1) {
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);			/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
	ClearScreen();
	lcdoutDT(EvPrms.RTC_Date,EvPrms.RTC_Time,EvPrms.RTC_SSC);
	while (PultRefresh());
	} /* while (1) */
}	/* void Display() */	


/* -------------------------------------------------------------------------------------------------------------------------------------------- */	
void lcdoutBIN(int pos, unsigned short num) {
int i;
for (i = 15; i >= 0; i--) { SendPultBuff[(pos++&0x1F)+3] = 0x30 + ((num >> i) & 0x0001);} //for
} //lcdoutU160


void lcdout(int pos, int chcount, unsigned char *str) {
int i;
  pos = (pos & 0x1F) + 3;
  for (i = 0; i < chcount; i++) { 
		SendPultBuff[pos++] = TableRusLCD[str[i]];
    if (pos > 34) return;
		}//for
}

void lcdouttextl(int pos, float num, int prec, unsigned char str[]) {
char buff[11];
int i=0;
	switch (prec) {
		case 0:  {sprintf(buff,"%-10.0f",num);} break;
		case 1:  {sprintf(buff,"%-10.1f",num);} break;
		case 2:  {sprintf(buff,"%-10.2f",num);} break;
		default: {sprintf(buff,"%-10.3f",num);} break;
		}//switch
	for (i=0; i<10; i++) if (buff[i]!=' ') {SendPultBuff[(pos++&0x1F)+3] = buff[i];} 
	for (i=0; str[i]!='\0'; i++) {SendPultBuff[(pos++&0x1F)+3] = TableRusLCD[str[i]];} 
}//lcdouttext


void  lcdouthex8(int pos, int num) {
char buff[11];
 int i;
 int l;	
  l = _snprintf(buff,11,"0x%.8X",num);
  for (i=0; i<l; i++) {SendPultBuff[(pos++&0x1F)+3] = buff[i];} 
}

void  lcdouthex4(int pos, short num) {
char buff[11];
 int i;
 int l;	
  l = _snprintf(buff,11,"0x%.4hX",num);
  for (i=0; i<l; i++) {SendPultBuff[(pos++&0x1F)+3] = buff[i];} 
}

void  lcdoutDT(int D, int T, int SS) {
int pos = 3;
int i;
char DayWeek[16] = {' ',' ',0xA8,'H','B','T','C','P',0xAB,'T',0xA8,'T','C',0xA0,'B','C'};		/* Недели по-русски */
	
		SS = ((SS * 5) >> 7);
		_snprintf(&SendPultBuff[3],33," : %2.2x/%2.2x/%4.4x   B: %2.2x:%2.2x:%2.2x.%1.1u   ",\
																	D&0x3F,(D>>8)&0x1F,((D>>16)&0xFF)|0x2000,(T>>16)&0x3F,(T>>8)&0x7F,T&0x7F,SS);

		SendPultBuff[3] = 0xE0;																																	/* Буква Д */
		
		i = (D & 0xE000) >> 12;
		SendPultBuff[17] = DayWeek[i++];
		SendPultBuff[18] = DayWeek[i];
}

void  lcdoutDT3(int D, int T, int SS) {
int pos = 3;
int i;
char DayWeek[16] = {' ',' ',0xA8,'H','B','T','C','P',0xAB,'T',0xA8,'T','C',0xA0,'B','C'};		/* Недели по-русски */
	
		SS = ((SS * 1000) >> 8);
		_snprintf(&SendPultBuff[3],33," : %2.2x/%2.2x/%4.4x   B: %2.2x:%2.2x:%2.2x.%3.3u   ",\
																	D&0x3F,(D>>8)&0x1F,((D>>16)&0xFF)|0x2000,(T>>16)&0x3F,(T>>8)&0x7F,T&0x7F,SS);

		SendPultBuff[3] = 0xE0;																																	/* Буква Д */
		
		i = (D & 0xE000) >> 12;
		SendPultBuff[17] = DayWeek[i++];
		SendPultBuff[18] = DayWeek[i];
}	


int   SubItem(int Items, int Pos, char *ItemsSTR, int CheckPos) {
int PultKeyb = 0;

	WorkPultKeyb = 0;
	while (1) {
		do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);			/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
		lcdout(0,16,ItemsSTR);
	
		switch (PultKeyb & (0x7F & ~K_Shift)) {
			case K_Up:		Pos--; break;
			case K_Down:	Pos++; break;
			case K_Left:	return 0;
			case K_Enter:	return Pos;
		} /* switch (PultKeyb & (0x7F & ~K_Shift)) */

		if (Pos < 1) 		 Pos = 1;
		if (Pos > Items) Pos = Items; 	
	
		lcdout(16,16,ItemsSTR + (Pos << 4));

		if (CheckPos == Pos) SendPultBuff[19] = 0x0E;

		while (PultRefresh());
	} /* while (1) */	
}

void  FillData(int Num, float Val, float Min, float Max, float Step, int Pos, int Prec, char *Str, int Flags) {
	ChangePrms.Value[Num]   = Val;
	ChangePrms.MinVal[Num]  = Min;
	ChangePrms.MaxVal[Num]	= Max;
	ChangePrms.StepVal[Num] = Step;
	ChangePrms.PosVal[Num]  = Pos;
	ChangePrms.PrecVal[Num] = Prec;
	ChangePrms.StrVal[Num]  = Str;
	ChangePrms.Flags[Num]		= Flags;
	ChangePrms.Param = ChangePrms.Change = 0;
}

float GetValue(int Num) {
	return ChangePrms.Value[Num];
}

int 	ChangeParam(int Count, char *Header, char *Strs) {
			 int PultKeyb = 0;
			 int PultKeybPrev = 0;
			 int Delay = 0;
			 int RefDelay = 8;
			 int CountPress = 0;
			 int Delta = 0;

	WorkPultKeyb = 0;
	Count--;
	lcdout(0,16,Header);
	
	while (1) {
		do {PultKeyb  = WaitPultReady();} while (PultKeyb == 0);			/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
		if (PultKeyb != PultKeybPrev)	{CountPress = 0; Delay = 0; RefDelay = 8;}
		PultKeybPrev  = PultKeyb;
		
		switch (PultKeyb & (0x7F & ~K_Shift)) {
			case K_Plus:	{if (Delay==0) {Delta =  1; Delay = RefDelay; CountPress++;}} break;
			case K_Minus:	{if (Delay==0) {Delta = -1; Delay = RefDelay; CountPress++;}} break;
			case K_Up:		ChangePrms.Param--; break;
			case K_Down:	ChangePrms.Param++; break;
			case K_Left:	return 0;
			case K_Enter:	{ChangePrms.Change &= ~(1ul << ChangePrms.Param); return (ChangePrms.Param + 1);} break;
		} /* switch (PultKeyb & (0x7F & ~K_Shift)) */

		if (Delay) Delay--;
		
		if (ChangePrms.Param < 0) 			ChangePrms.Param = 0;
		if (ChangePrms.Param > Count) 	ChangePrms.Param = Count;

		if (CountPress > 9)  {RefDelay = 4;}
		if (CountPress > 29) {RefDelay = 0; CountPress = 51;}

		if (PultKeyb & K_Shift) Delta *= 10;
		
		ChangePrms.Value[ChangePrms.Param] += (Delta * ChangePrms.StepVal[ChangePrms.Param]);

		if (ChangePrms.Value[ChangePrms.Param] > ChangePrms.MaxVal[ChangePrms.Param]) {ChangePrms.Value[ChangePrms.Param] = ChangePrms.MaxVal[ChangePrms.Param];}
		if (ChangePrms.Value[ChangePrms.Param] < ChangePrms.MinVal[ChangePrms.Param]) {ChangePrms.Value[ChangePrms.Param] = ChangePrms.MinVal[ChangePrms.Param];}		
	
		lcdout(16,16,Strs + (ChangePrms.Param << 4));
		
		if ((ChangePrms.Flags[ChangePrms.Param] & TiFlag) && (ChangePrms.Value[ChangePrms.Param] == 0)) {lcdout(22,7," ОТКЛ. ");} else	
			lcdouttextl(ChangePrms.PosVal[ChangePrms.Param],ChangePrms.Value[ChangePrms.Param],ChangePrms.PrecVal[ChangePrms.Param],ChangePrms.StrVal[ChangePrms.Param]);

		if (Delta) {ChangePrms.Change |= (1ul << ChangePrms.Param);}
    if (ChangePrms.Change & (1ul << ChangePrms.Param)) {lcdout(31,1,"*");}
		Delta = 0;		
		
		while (PultRefresh());
	} /* while (1) */	
}//changeparam	
	
	
/*	
  Value[param]+=(delta*StepVal[param]);
  if (LimitFlag && param) {MaxVal[1]=Value[0]-2;}
  if (LimitFlag && !param) {MinVal[0]=Value[1]+2;}
  if (Value[param]>MaxVal[param]) {Value[param]=MaxVal[param];}
  if (Value[param]<MinVal[param]) {Value[param]=MinVal[param];}


*/  

int   SubMenuAsk(char *request) {
int PultKeyb = 0;

	WorkPultKeyb = 0;
	while (1) {
		do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);			/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
		lcdout( 0,16,request);
		lcdout(16,16," [|]-Да [«]-Нет ");
	
		switch (PultKeyb & (0x7F & ~K_Shift)) {
			case K_Left:	return 0;
			case K_Enter:	return 1;
		} /* switch (PultKeyb & (0x7F & ~K_Shift)) */

		while (PultRefresh());
	} /* while (1) */		
}//SubMenuAsk




