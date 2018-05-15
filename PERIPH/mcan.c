#include "stm32f4xx.h"
#include "global.h"



void InitCAN1(void) {
	
	RCC->APB1ENR |= RCC_APB1ENR_CAN1EN;

	CAN1->MCR 	  = CAN_MCR_INRQ;								/**/	
	while ((CAN1->MSR & CAN_MSR_INAK) == 0) {}	/* Ожидаем режим инициализации					*/
		
	CAN1->MCR		 |= CAN_MCR_ABOM |							/* Автоматическая Bus-off recovery			*/
									CAN_MCR_TXFP;								/* Приоритет отправки - хронологически	*/

		
/*
BaudRate = 1 / NominalBitTime		
		
NominalBitTime = 1 x tq + tBS1 + tBS2
with:
tBS1 = tq x (TS1[3:0] + 1),
tBS2 = tq x (TS2[2:0] + 1),
tq = (BRP[9:0] + 1) x tPCLK

		Итого:	NominalBitTime = 1 x tq + tBS1 + tBS2	= 9 x tq		
		tq = (18 + 1) / 42MHz
		
		BaudRate = 42MHz / [(18 + 1) * 9] = 245 kBaud
		
		Длина одного сообщения: 108 бит, время одного сообщения ~440 мкс
*/		
		
	CAN1->BTR		  = (18ul << 0) |								/* BRP*/
									(3ul << 16) |								/* TS1*/
									(3ul << 20) |								/* TS2*/
									(3ul << 24)	;								/* SJW*/
		
	CAN1->FMR			= (28ul << 8) | CAN_FMR_FINIT;
		
	CAN1->FM1R		= 0x0FFFFFFF;									/* List Mode	*/
	CAN1->FS1R		= 0;													/* Std ident	*/
	
	CAN1->sFilterRegister[0].FR1	= (0ul << 5) | (1u << 21);
	CAN1->sFilterRegister[0].FR2	= (2ul << 5) | (3u << 21); 

	CAN1->FA1R		= CAN_FA1R_FACT0;							/* Активируем фильтр 0										*/
		
	CAN1->FMR		 &=	~CAN_FMR_FINIT;							/* Сбрасываем бит инициализации фильтров	*/
	CAN1->MCR 	 &= ~CAN_MCR_INRQ;							/* Выключаем режим инициализации CAN			*/
};
