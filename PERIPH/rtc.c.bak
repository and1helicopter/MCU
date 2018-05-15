#include "stm32f4xx.h"
#include "global.h"

int32_t RTC_OK = 0;

int32_t InitRTC(uint32_t Timeout) {
#if (RTC_Present == YES)
int  TempDate;
int  TempTime;

	/* Check for RTC clock	*/
	if (RCC->BDCR != 0x8103) 																									  /* Check RTC clock											*/
  {
		PWR->CR |= PWR_CR_DBP;																										/* Disable write protect for RCC->BDCR	*/
		
		if (RCC->BDCR & 0x0204) 																									/* LSI or HSE as RTC clock or LSE bypass*/
    {
			RCC->BDCR |= RCC_BDCR_BDRST;																						/* Reset BDCR to 00											*/
			while (RCC->BDCR & 0x0304);																							/* Wait for clear bit										*/
    }	//if (RCC->BDCR & 0x0204)
				
		RCC->BDCR &=~RCC_BDCR_BDRST;																							/* Clear RESET bit											*/
		RCC->BDCR |= RCC_BDCR_LSEON;																							/* Enable LSE clock											*/
		while (((RCC->BDCR & RCC_BDCR_LSERDY) == 0) && (--Timeout));							/* Wait for LSE clock ready							*/

		if (Timeout == 0) return 0;				
	
		RCC->BDCR	|= (RCC_BDCR_RTCSEL_LSE | RCC_BDCR_RTCEN);										/* Select LSE as RTC clock & Ena RTC 		*/
	} //if ((RCC->BDCR & 0x8303) != 0x8103)	
	
	/* if Clock not OK - return									*/
	if (RCC->BDCR != 0x8103) return 0;
	
	/* Check clock / calendar for already init	*/
	if (RTC->ISR & RTC_ISR_INITS) return 1;
  
  {	/* Расчет Даты / Время компиляции программы	*/
    TempTime = 	 (__TIME__[7] - 0x30) 			 | ((__TIME__[6] - 0x30) << 4) |
                ((__TIME__[4] - 0x30) << 8)  | ((__TIME__[3] - 0x30) << 12)|
                ((__TIME__[1] - 0x30) << 16) | ((__TIME__[0] - 0x30) << 20);
    
    TempDate = 	(__DATE__[5] - 0x30) | ((__DATE__[10] - 0x30) << 16) | ((__DATE__[9] - 0x30) << 20);
    if (__DATE__[4] != 0x20) TempDate |= ((__DATE__[4] - 0x30) << 4);
    
    switch (__DATE__[0]) 
    {
      case 0x4A:	{ if (__DATE__[1] == 0x61) TempDate |= 0x0100; else			/* Jan	*/	
                      if (__DATE__[2] == 0x6E) TempDate |= 0x0600; else		/* Jun 	*/	
                        TempDate |= 0x0700;																/* Jul	*/
                  } break;
      case 0x46:	TempDate |= 0x0200; break;															/* Feb	*/
      case 0x4D:	{	if (__DATE__[2] == 0x72) 	TempDate |= 0x0300; else		/* Mar 	*/	
                      TempDate |= 0x0500;																	/* May	*/
                  } break;
      case 0x41:	{	if (__DATE__[2] == 0x72) 	TempDate |= 0x0400; else		/* Apr 	*/	
                      TempDate |= 0x0800;																	/* Aug	*/
                  } break;
      case 0x53:	TempDate |= 0x0900; break;															/* Sep	*/
      case 0x4F:	TempDate |= 0x1000; break;															/* Oct	*/
      case 0x4E:	TempDate |= 0x1100; break;															/* Nov	*/
      case 0x44:	TempDate |= 0x1200; break;															/* Dec	*/
      default:		TempDate |= 0x0100; break;
    }	
  }
	/* По умолчанию ставим дату/время компилирования программы										*/
	PackRTC(TempTime, TempDate);
	return 2;
#else
	return 0;
#endif

}


int32_t  ReadRTC(int32_t RtcWait, uint32_t *RtcDate, uint32_t *RtcTime) {
#if (RTC_Present == YES)
static uint32_t OldSS = ~0ul;
static uint32_t ms = 0;
  
uint32_t SS, T, D;  
	if (!(RtcWait | (RTC->ISR & RTC_ISR_RSF))) return 0;				          /* Выходим, если бит часов не установлен и мы не ждем */
  while ((RTC->ISR & RTC_ISR_RSF) == 0);                                /* Wait for clock ready																*/
		
  SS = 0xFF - (RTC->SSR & 0xFF);
  T  = RTC->TR;
  D  = RTC->DR;

  if (SS != OldSS) 
  {
    ms = 0;
  }
  else 
  {
    ms = __usat(ms + 1, 2);
  }
  OldSS = SS;
  
	*RtcTime = (T & 0x003FFFFF) | ((((SS * 1000) << 14) + (ms << 22)) & 0xFFC00000);      /* Время + миллисекунды */
	*RtcDate = D | (SS << 24);                                                            /* Дата + ssc           */
	
  RTC->ISR = ~RTC_ISR_RSF;
	return 1;
#else
	return 0;
#endif	
}

void SetRTC(uint32_t Date, uint32_t Time) {
#if (RTC_Present == YES)
  if (RCC->BDCR != 0x8103) return;																						/* Выходим, если нет Clock-ов						*/
	
	/* Init clock / calendar										*/
	PWR->CR  |= PWR_CR_DBP;																											/* Disable clock - calendar protection	*/																										
	RTC->WPR 	= 0xCA;																													
	RTC->WPR 	= 0x53;
	RTC->ISR |= RTC_ISR_INIT;

	while ((RTC->ISR & RTC_ISR_INITF) == 0);																		/* wait for init mode		*/ 
    
	RTC->DR		= Date;
	RTC->TR 	= Time & 0x003F7F7F;

	RTC->ISR &= ~RTC_ISR_INIT;
  
//  RTC->SHIFTR = 0xFF - (((500 * 256) / 1000) & 0xFF) ;
  
	RTC->WPR 	= 0x00;
#endif	
}


void PackRTC(uint32_t S_M_H, uint32_t D_M_Y) {
#if (RTC_Present == YES)	
int32_t  i,Y,M,D,DW;
int8_t DayInMonth[12] = {31,29,31,30,31,30,31,31,30,31,30,31};
	
	/*Проверка данных - время	-----------------------------------------------	*/ 
	if ((S_M_H & 0x0F) > 0x09) S_M_H = ((S_M_H & ~0x0F) | 0x09);
	if ((S_M_H & 0xF0) > 0x50) S_M_H = ((S_M_H & ~0xF0) | 0x50);

	if ((S_M_H & 0x0F00) > 0x0900) S_M_H = ((S_M_H & ~0x0F00) | 0x0900);
	if ((S_M_H & 0xF000) > 0x5000) S_M_H = ((S_M_H & ~0xF000) | 0x5000);

	if ((S_M_H & 0x0F0000) > 0x090000) S_M_H = ((S_M_H & ~0x0F0000) | 0x090000);
	if ((S_M_H & 0x300000) > 0x200000) S_M_H = ((S_M_H & ~0x300000) | 0x200000);
	if ((S_M_H & 0x3F0000) > 0x230000) S_M_H = ((S_M_H & ~0x3F0000) | 0x230000);
	
//S_M_H	&= 0x003F7F7F;
	
	/*проверка данных - дата ------------------------------------------------	*/
	Y = ((D_M_Y & 0x0F0000) >> 16) + ((D_M_Y & 0xF00000) >> 20) * 10;
	if (Y<15) Y = 15; 
	if (Y>99) Y = 99;

	/*Проверка на високосный год - если не делится на 4, то в феврале 28	дней*/
	if (Y&0x3) DayInMonth[1] = 28;

	M = ((D_M_Y & 0x0F00) >> 8) + ((D_M_Y & 0x1000) >> 12) * 10;
	if (M<1) 	M = 1;
	if (M>12) M = 12;

	D = (D_M_Y & 0x0F) + ((D_M_Y & 0x30) >> 4) * 10;
	if (D<1) 	D = 1;
	if (D>DayInMonth[M-1]) D = DayInMonth[M-1]; 

	/* Определение дня недели */
	DW = (Y-12)*365 + (Y-13)/4;														/*Кол-во дней c 01 января 2012 до 01 января года Y*/
	for (i = 1; i < M; i++) DW += DayInMonth[i-1];				/*Кол-во дней полных месяцев											*/ 
	DW += D;																							/*Текущий день																		*/
	DW %= 7;																							/*Остаток от целых недель													*/
	if (DW == 0) DW = 7;																	/**/
	
	D_M_Y = (D%10) + ((D/10)<<4) + ((M%10)<<8) + ((M/10)<<12) + ((Y%10)<<16) + ((Y/10)<<20) + (DW << 13);

  SetRTC(D_M_Y, S_M_H);
#endif	
}






