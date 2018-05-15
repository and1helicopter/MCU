#include "stm32f4xx.h"
#include "global.h"

#include <Math.h>

#define DB_3us	(0xC0 | 0x1F)
#define DB_5us	(0xE0 | 0x14)
#define SetDB	DB_5us

#define __MinImpuls 250

#define ENATIMOffset	SavePrms.ENATIMOffset

__align(4) struct Metro_type Metro;

/* Входы / выходы */

static __inline void FixCorrect(void)	{

	if (SavePrms.EnaFixCorrect == 0) {PrgData.GammaT1_1_fixcorrect = PrgData.GammaT1_3_fixcorrect = PrgData.GammaT8_1_fixcorrect = PrgData.GammaT8_3_fixcorrect = 0; return;}

	/* Первый шкаф	*/

	if (PrgData.Ia12_fixcorrect >  5) PrgData.GammaT8_3_fixcorrect++;
	if (PrgData.Ia12_fixcorrect < -5) PrgData.GammaT8_3_fixcorrect--;
	
	if (PrgData.Ic12_fixcorrect >  5) PrgData.GammaT8_1_fixcorrect++;
	if (PrgData.Ic12_fixcorrect < -5) PrgData.GammaT8_1_fixcorrect--;

	/* Второй шкаф	*/

	if (PrgData.Ia34_fixcorrect >  5) PrgData.GammaT1_3_fixcorrect++;
	if (PrgData.Ia34_fixcorrect < -5) PrgData.GammaT1_3_fixcorrect--;
	
	if (PrgData.Ic34_fixcorrect >  5) PrgData.GammaT1_1_fixcorrect++;
	if (PrgData.Ic34_fixcorrect < -5) PrgData.GammaT1_1_fixcorrect--;
		
	PrgData.GammaT8_1_fixcorrect = __SSAT(PrgData.GammaT8_1_fixcorrect, 9);
	PrgData.GammaT8_3_fixcorrect = __SSAT(PrgData.GammaT8_3_fixcorrect, 9);

	PrgData.GammaT1_1_fixcorrect = __SSAT(PrgData.GammaT1_1_fixcorrect, 9);
	PrgData.GammaT1_3_fixcorrect = __SSAT(PrgData.GammaT1_3_fixcorrect, 9);
	
}


static __inline void CAN_Message(int Cycle) {			/* Физический обмен по CAN								*/
int TempData;
	
	/* Прием / отправка данных по CAN */
	if ((Cycle & 0x07) == 0) {

		/* Проверка статуса прошлого отправленного сообщения	*/
		if (CAN1->TSR & (CAN_TSR_ALST0 | CAN_TSR_TERR0)) {								/* Если ошибка передачи*/
			CAN1->TSR	|= (CAN_TSR_ALST0 | CAN_TSR_TERR0 | CAN_TSR_ABRQ0);		/* Сбрасываем ошибки и отменяем сообщение	*/
		}	//if (CAN1->TSR & (CAN_TSR_ALST0 | CAN_TSR_TERR0))
		
		/* Счетчик отсутвия связи		*/
		StdPrms.CANLink1 = (short)__QADD16(StdPrms.CANLink1, 1);
		
		/* Если приемное фифо не пустое, то считываем полученные данные	*/
		while (CAN1->RF0R & 0x03)	{
			if ((CAN1->sFIFOMailBox[0].RDTR & 0x0000FF00) == 0) {							/* Номер идентификатора CAN - сообщения	*/
				TempData  			 = CAN1->sFIFOMailBox[0].RDLR;									/* Принятые данные по CAN								*/
				Metro.CANRefUdc	 = TempData >> 16;
				Metro.CANStatus	 = (short)TempData;
				Metro.CANCmndRx  = CAN1->sFIFOMailBox[0].RDHR;									/* Принятая команда по CAN							*/
				StdPrms.CANLink1 = 0;
			}
			PeriphBB(CAN1->RF0R, 5) = 1;
		}	//while (CAN1->RF0R & 0x03)

		/* Сбрасываем команду, подтверждение о получении которой мы получили*/
		Metro.CANCmndTx &= ~((Metro.CANCmndRx >> 16) & 0xFFFF);
		
		/* Сбрасываем все команды, если нет связи более х циклов						*/
		if (StdPrms.CANLink1 > 10)	{	Metro.CANCmndTx = 0;}
		
		/* Пробуем отправлять данные																				*/
		if (CAN1->TSR & CAN_TSR_TME0) {																			/* Если Mailbox свободен	*/
			CAN1->sTxMailBox[0].TDLR = StdPrms.Status | (Metro.WorkRefUdc1 << 16);												/* 32 бит данных LO	*/
			CAN1->sTxMailBox[0].TDHR = (Metro.CANCmndTx & 0xFFFF) | (Metro.CANCmndRx << 16);						/* 32 бит данных HI	*/
			CAN1->sTxMailBox[0].TDTR = 8;																			/* Длина посылки		*/
			CAN1->sTxMailBox[0].TIR	 = (0ul << 21) | CAN_TI0R_TXRQ;						/* Иденнтификатор + запрос на отправку				*/
		} 
		
		/* Переходим в режим инициализации если ошибок очень много					*/
//		if (StdPrms.CANLink1 > 20) {
//			CAN1->MCR	|= CAN_MCR_INRQ;
//			while ((CAN1->MSR & CAN_MSR_INAK) == 0) {}												/* Ожидаем режим инициализации								*/
//			CAN1->MCR &= ~CAN_MCR_INRQ;																				/* Выключаем режим инициализации CAN					*/
//		}			
	}	//if ((Cycle & 0x07) == 0) 
} //CAN_Message(int Cycle)

static __inline void CheckCANCmnd(void) {					/* Включение по CAN и автоподхват					*/
	/* Включение по CAN		*/
	if (Metro.CANCmndRx & 0x0001) {Metro.NeedEnable  |= 0x0001; Metro.CANCmndRx &= ~0x0001;}
	/* Выключение по CAN	*/
	if (Metro.CANCmndRx & 0x0002) {
		Metro.CANCmndRx &= ~0x0002;
		if ((StdPrms.Status == 5) || (StdPrms.Status == 6) || (StdPrms.Status == 7)) Metro.NeedDisable |= 0x0001; 
	}
	
	/* Автоподхват при потери связи	*/
	if ((StdPrms.CANLink1 > 25) && (StdPrms.CANLink1 < 1000)) {						/* Если связь только пропала			*/
		if ((Metro.CANStatus == 5) || (Metro.CANStatus == 6) || (Metro.CANStatus == 7)) {Metro.NeedEnable |= 0x0001; Metro.CANStatus = 0;}
	}
}


static __inline  int Delay(int Expr, int TimeDelay, int *Counter) {
int Temp;
	Temp = *Counter;
	if (Expr) {Temp = __QADD(Temp,1);} else {Temp = 0;}
	*Counter = Temp;
	return (Temp > TimeDelay);	
}

static __inline  int Blink(int PeriodOn, int PeriodOff, int *Counter, int *Out) {
int TempPeriod;
int TempOut;
	
	TempPeriod = *Counter;
	TempOut    = *Out; 

	TempPeriod++;
	
	if (((TempOut) && (TempPeriod > PeriodOn )) || ((TempOut == 0) && (TempPeriod > PeriodOff))) {TempOut ^= 0x01; TempPeriod = 0;}
		
	*Counter = TempPeriod;
	*Out     = TempOut;
	return TempOut;
}

static __inline void CalcDigOut(void) {						/* Расчет дискретных выходов							*/
int TempDigOut = 0;
int i;
	
	/* Счетчики включения контакторов	*/
	if (PrgData.KM1ENA) 		{PrgData.KM1ENA = __QADD(PrgData.KM1ENA,1);}												/* Инкремент флага включения контактора	*/
	if (PrgData.ACZaradENA) {PrgData.ACZaradENA = __QADD16(PrgData.ACZaradENA,1);}							/* Инкремент флага включения контактора	*/
	if (PrgData.AC_KM_ENA) 	{PrgData.AC_KM_ENA = __QADD16(PrgData.AC_KM_ENA,1);}								/* Инкремент флага включения контактора	*/
	
	/* Расчет дискретных выходов			*/
	if (StdPrms.Status == 2)	{	TempDigOut |= (1ul << 0);	}																			/* Готовность 					*/

	if (StdPrms.Status == 5) 	{	TempDigOut |= (1ul << 3);	}																			/* Работа								*/
	
	if (EvPrms.AlarmWord1)		{	TempDigOut |= (1ul << 9) | (1ul << 2);}													/* Авария								*/
	
	if (PrgData.KM1ENA)				{	TempDigOut |= (1ul << 7);	}																			/* Включение контактора заряда DC	*/

	if (PrgData.ACZaradENA)		{	TempDigOut |= (1ul << 6);	}																			/* Включение контактора заряда AC	*/

	if (PrgData.AC_KM_ENA)		{	TempDigOut |= (1ul << 5);	}																			/* Включение контактора  AC				*/
	
	if (PrgData.CountRazrad)	{ PrgData.CountRazrad--; TempDigOut |= (1ul << 2); }							/* Отключение контактора  AC			*/																		
	
	StdPrms.DigOut1 		=  TempDigOut;																													/* Расчитанные выходы							*/
}

static __inline void CalcDigIn(void) {						/* Расчет дискретных входов								*/
	
	/* Обработка входов группы 1 ************************************************************************************************************	*/
	PrgData.K_Alarm  = ((StdPrms.DigInput1 & 0x0001) == 0) ? 0 : __QADD16(PrgData.K_Alarm, 1);
	PrgData.K_Start  = ((StdPrms.DigInput1 & 0x0008) == 0) ? 0 : __QADD16(PrgData.K_Start, 1);
	PrgData.K_Stop   = ((StdPrms.DigInput1 & 0x0010) == 0) ? 0 : __QADD16(PrgData.K_Stop,  1);
	PrgData.K_Zarad  = ((StdPrms.DigInput1 & 0x0002) == 0) ? 0 : __QADD16(PrgData.K_Zarad, 1);
	PrgData.K_Razrad = ((StdPrms.DigInput1 & 0x0004) == 0) ? 0 : __QADD16(PrgData.K_Razrad,1);

	PrgData.KM1ON    = ((StdPrms.DigInput1 & 0x1000) == 0) ? 0 : __QADD(PrgData.KM1ON, 1);
	
	PrgData.AC_KM_ON = ((StdPrms.DigInput1 & 0x0400) == 0) ? 0 : __QADD16(PrgData.AC_KM_ON, 1);
	
	

}

static __inline void DigInOut(void) {							/* Считывание / выдача входжов / выходов 	*/
	
	/* Считывание входов и выдача выходов	*/
	PeriphBB(GPIOC->ODR, 3) = 0;								//CS1 

	EvPrms.DigOutPut1 	= (StdPrms.DigOut1 | StdPrms.DigOut1Or) & StdPrms.DigOut1And;										/* Для журнала событий								*/
	StdPrms.DigOutput1 	= ~EvPrms.DigOutPut1;																														/* Инвертированные выходы для выдачи	*/
	
	GPIOH->BSRR = ((StdPrms.DigOutput1 & 0x07FF) << 2) | (( (~StdPrms.DigOutput1) & 0x07FF) << 18);
	GPIOA->BSRR = ((StdPrms.DigOutput1 & 0x1800) >>11) | (( (~StdPrms.DigOutput1) & 0x1800) << 5);	
	GPIOF->BSRR = ((StdPrms.DigOutput1 & 0x2000) >> 2) | (( (~StdPrms.DigOutput1) & 0x2000) << 14);
	GPIOC->BSRR = ((StdPrms.DigOutput1 & 0xC000) >>14) | (( (~StdPrms.DigOutput1) & 0xC000) << 2);
	
	nop(10);
	StdPrms.DigIn1 = (GPIOI->IDR & 0x0FFF) | ((GPIOF->IDR & 0x03C0)<<6);		/* Аппаратный вход	*/ 
	PeriphBB(GPIOC->ODR, 3) = 1;								//CS1
	/* Фильтрация входа	*/
	EvPrms.DigInput1 = StdPrms.DigInput1 = FiltDigIn( (((StdPrms.DigIn1 | StdPrms.DigIn1Or) & StdPrms.DigIn1And) << 16) | StdPrms.DigInput1,
																										&StdPrms.PrevDigIn1,
																										StdPrms.DigIn1Count,
																										19);
	/* OE	*/
	PeriphBB(GPIOC->ODR, 2) = 0;
}


static __inline  int AnalyzeUgol() {							/* Анализируем угол	*/
int x = 50;	
int d01,d12,d02;
	
	d01 = ABS((short)((Metro.Ugol_n0 - Metro.Ugol_n1) & 0xFFFF));
	d12 = ABS((short)((Metro.Ugol_n1 - Metro.Ugol_n2) & 0xFFFF));
	d02 = ABS((short)((Metro.Ugol_n0 - Metro.Ugol_n2) & 0xFFFF));
	
	if ((d01 > (65536ul / (80ul + x))) && (d01 < (65536ul / (80 - x)))) return 0;
	/* Если ошибка в данной фазе смотрим предыдущую	*/
	if ((d12 > (65536ul / (80ul + x))) && (d12 < (65536ul / (80 - x)))) return 0;
	/* Если ошибка в предыдущей тоже, то смотрим сравниваем n0 и n2 */
	if ((d02 > (65536ul / ((80ul + x)>>1))) && (d02 < (65536ul / ((80 - x)>>1)))) return 0;
	
	return 1;
}
static __inline  int AnalyzeUgol2(int NewUgol) {	/* Анализируем угол	*/
static int i = 0;
static int ErrorCounter = 0;
			 int DeltaUgol = 0;
				
	DeltaUgol	= Metro.PrevUgols[i];
	Metro.PrevUgols[i] = NewUgol;
	if (++i > 39) i = 0;

	DeltaUgol = ABS((short)((NewUgol - DeltaUgol) & 0xFFFF));
		
	/*16.384 * 40 * f*/

	if ((DeltaUgol > 0x0000828F) || (DeltaUgol < 0x00007D70)) ErrorCounter++; else ErrorCounter = 0;
	
	return ErrorCounter;
}
static __inline void NormIntADC(int chs, int k) {	/* Нормализуем данные от внутреннего АЦП 	*/
int i;
	for (i = 0; i < chs; i++) {
		StdPrms.ADCDataNorm[i+16] = ((short)__QSUB16((StdPrms.IntADCData[i + (k + ADCxCycle)*chs] << 3), SavePrms.ADCOffs[i+16]) * SavePrms.ADCK[i+16]) >> 15;
	}
}

static __inline void NormExtADC(int chs, int k) {	/* Нормализуем данные от внешнего АЦП 		*/
int i;
	for (i = 0; i < chs; i++) { 
		StdPrms.ADCDataNorm[i] = ((short)__QSUB16(PrgData.ExtADCArray[i + (k + ADCxCycle)*chs], SavePrms.ADCOffs[i]) * SavePrms.ADCK[i]) >> 16;
	}	
}

static __inline void CalcSensUdc(int k) {					/* Расчет напряжений Udc									*/
static int SummUdc1 = 0;
static int SummUdc2 = 0;
short UdcNotFlt;

	UdcNotFlt = -StdPrms.ADCDataNorm[_Udc1];
	EvPrms.Udc1Flt = AP_REG(UdcNotFlt, SavePrms.ParamFiltUdc / ADCxCycle,  &Metro.BufFiltUdc1);
	SummUdc1 += UdcNotFlt;

	UdcNotFlt = StdPrms.ADCDataNorm[_Udc2];
	EvPrms.Udc2Flt = AP_REG(UdcNotFlt, SavePrms.ParamFiltUdc / ADCxCycle,  &Metro.BufFiltUdc2);
	SummUdc2 += UdcNotFlt;
	
	if (k == (ADCxCycle - 1)) 
	{
		EvPrms.Udc1Flt_rms = SummUdc1 / ADCxCycle;
		EvPrms.Udc2Flt_rms = SummUdc2 / ADCxCycle;
		SummUdc1 = SummUdc2 = 0;
	}
}	//static __inline void CalcSensUdc(int k)

static __inline void CalcSensU(int k) {
short SUNotFlt;
	
	/* Инвертируем датчики напряжения - особенность аналоговой платы	*/
	EvPrms.Uab = -StdPrms.ADCDataNorm[_Uab];
  EvPrms.Ubc = -StdPrms.ADCDataNorm[_Ubc];
	EvPrms.Uca = -StdPrms.ADCDataNorm[_Uca];
	
	/* Рассчитываем напряжение синхронизации													*/
	EvPrms.SUNotFlt = __SSAT(CalcU_I(EvPrms.Uab, EvPrms.Ubc), 16);
	EvPrms.SUFlt = AP_REG(EvPrms.SUNotFlt, SavePrms.ParamFiltSU / ADCxCycle, &Metro.BufFiltSU);
	
	EvPrms.Ua = __SSAT(( 2*(int)EvPrms.Uab + (int)EvPrms.Ubc) / 3, 16);
	EvPrms.Ub =           ((int)EvPrms.Ubc - (int)EvPrms.Uab) / 3;
	EvPrms.Uc = __SSAT((-2*(int)EvPrms.Ubc - (int)EvPrms.Uab) / 3, 16);
	
} //static __inline void CalcSensU(int k)

static __inline void CalcSensI(int k) {
static int SummI12 = 0;
static int SummI34 = 0;
	
static int SummIa12 = 0;
static int SummIc12 = 0;
static int SummIa34 = 0;
static int SummIc34 = 0;
static int Count = 0;
	
	
	EvPrms.Ia1Ia2   = (short)__QADD16(StdPrms.ADCDataNorm[_Ia1], StdPrms.ADCDataNorm[_Ia2]);
	EvPrms.Ib1Ib2   = (short)__QADD16(StdPrms.ADCDataNorm[_Ib1], StdPrms.ADCDataNorm[_Ib2]);
	EvPrms.Ic1Ic2   = (short)__QADD16(StdPrms.ADCDataNorm[_Ic1], StdPrms.ADCDataNorm[_Ic2]);
	SummI12 				+= EvPrms.Ic1Ic2;
	/*	Для коррекции постоянки		*/
	SummIa12				+= EvPrms.Ia1Ia2;
	SummIc12 				+= EvPrms.Ic1Ic2;
	
	EvPrms.Ia3Ia4   = (short)__QADD16(StdPrms.ADCDataNorm[_Ia3], StdPrms.ADCDataNorm[_Ia4]);
	EvPrms.Ib3Ib4   = (short)__QADD16(StdPrms.ADCDataNorm[_Ib3], StdPrms.ADCDataNorm[_Ib4]);
	EvPrms.Ic3Ic4   = (short)__QADD16(StdPrms.ADCDataNorm[_Ic3], StdPrms.ADCDataNorm[_Ic4]);	
	SummI34 				+=	EvPrms.Ic3Ic4;
	/*	Для коррекции постоянки		*/
	SummIa34				+= EvPrms.Ia3Ia4;
	SummIc34 				+= EvPrms.Ic3Ic4;
	
	/* Рассчет токов по шкафам																				*/
	EvPrms.I1Flt = AP_REG(__SSAT(CalcU_I(StdPrms.ADCDataNorm[_Ia1],StdPrms.ADCDataNorm[_Ic1]),16), SavePrms.ParamFiltI1 / ADCxCycle, &Metro.BufFiltI1);
	EvPrms.I2Flt = AP_REG(__SSAT(CalcU_I(StdPrms.ADCDataNorm[_Ia2],StdPrms.ADCDataNorm[_Ic2]),16), SavePrms.ParamFiltI2 / ADCxCycle, &Metro.BufFiltI2);
	EvPrms.I3Flt = AP_REG(__SSAT(CalcU_I(StdPrms.ADCDataNorm[_Ia3],StdPrms.ADCDataNorm[_Ic3]),16), SavePrms.ParamFiltI1 / ADCxCycle, &Metro.BufFiltI3);
	EvPrms.I4Flt = AP_REG(__SSAT(CalcU_I(StdPrms.ADCDataNorm[_Ia4],StdPrms.ADCDataNorm[_Ic4]),16), SavePrms.ParamFiltI2 / ADCxCycle, &Metro.BufFiltI4);

	if (k == (ADCxCycle - 1)) 
	{
		EvPrms.Ic12_rms = SummI12 / ADCxCycle;
		EvPrms.Ic34_rms = SummI34 / ADCxCycle;
		SummI12 = SummI34 = 0;
	}

	
	if (++Count == (MainCycle * ADCxCycle / 50 ))
	{
		PrgData.Ia12_fixcorrect = SummIa12 / (MainCycle * ADCxCycle / 50 );
		PrgData.Ic12_fixcorrect = SummIc12 / (MainCycle * ADCxCycle / 50 );
		PrgData.Ia34_fixcorrect = SummIa34 / (MainCycle * ADCxCycle / 50 );
		PrgData.Ic34_fixcorrect = SummIc34 / (MainCycle * ADCxCycle / 50 );
		Count = SummIa12 = SummIa34 = SummIc12 = SummIc34 = 0;
		
		FixCorrect();
	}	
	
	
	
}	//static __inline void CalcSensU(int k) 


static __inline void CalcSensPQ(void) {							/* Расчет токов, напряжений, мощностей		*/
short TempP;
short TempQ;
static int SummQ12 = 0;
static int SummQ34 = 0;
static int QCount = 0;

	
	TempQ = __SSAT(CalcQ3Ph(EvPrms.Uab, EvPrms.Ubc, EvPrms.Uca, EvPrms.Ia1Ia2, EvPrms.Ib1Ib2, EvPrms.Ic1Ic2), 16);
	SummQ12 += TempQ;
	TempQ = __SSAT(CalcQ3Ph(EvPrms.Uab, EvPrms.Ubc, EvPrms.Uca, EvPrms.Ia3Ia4, EvPrms.Ib3Ib4, EvPrms.Ic3Ic4), 16);
	SummQ34 += TempQ;
	
	if (++QCount == (MainCycle * ADCxCycle / 50 ))
	{
		EvPrms.Q12Flt_rms = SummQ12 / (MainCycle * ADCxCycle / 50 );
		EvPrms.Q34Flt_rms = SummQ34 / (MainCycle * ADCxCycle / 50 );		
		QCount = SummQ12 = SummQ34 = 0;
	}

	/* Расчет по стандартному алгоритму	*/
	TempP = __SSAT(CalcP(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia1],StdPrms.ADCDataNorm[_Ic1]),16);
	EvPrms.P1Flt	  = AP_REG(TempP, SavePrms.ParamFiltP1, &Metro.BufFiltP1);	
	
	TempQ = __SSAT(CalcQ(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia1],StdPrms.ADCDataNorm[_Ic1]),16);
	EvPrms.Q1Flt	  = AP_REG(TempQ, SavePrms.ParamFiltQ1, &Metro.BufFiltQ1);

	/* Расчет по стандартному алгоритму	*/
	TempP = __SSAT(CalcP(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia2],StdPrms.ADCDataNorm[_Ic2]),16);
	EvPrms.P2Flt	  = AP_REG(TempP, SavePrms.ParamFiltP2, &Metro.BufFiltP2);	
	
	TempQ = __SSAT(CalcQ(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia2],StdPrms.ADCDataNorm[_Ic2]),16);
	EvPrms.Q2Flt	  = AP_REG(TempQ, SavePrms.ParamFiltQ2, &Metro.BufFiltQ2);

	/* Расчет по стандартному алгоритму	*/
	TempP 					= __SSAT(CalcP(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia3],StdPrms.ADCDataNorm[_Ic3]),16);
	EvPrms.P3Flt	  = AP_REG(TempP, SavePrms.ParamFiltP2, &Metro.BufFiltP3);	
	
	TempQ					  = __SSAT(CalcQ(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia3],StdPrms.ADCDataNorm[_Ic3]),16);
	EvPrms.Q3Flt	  = AP_REG(TempQ, SavePrms.ParamFiltQ2, &Metro.BufFiltQ3);

	/* Расчет по стандартному алгоритму	*/
	TempP 					= __SSAT(CalcP(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia4],StdPrms.ADCDataNorm[_Ic4]),16);
	EvPrms.P4Flt	  = AP_REG(TempP, SavePrms.ParamFiltP2, &Metro.BufFiltP4);	
	
	TempQ					  = __SSAT(CalcQ(EvPrms.Uab,EvPrms.Ubc,StdPrms.ADCDataNorm[_Ia4],StdPrms.ADCDataNorm[_Ic4]),16);
	EvPrms.Q4Flt	  = AP_REG(TempQ, SavePrms.ParamFiltQ2, &Metro.BufFiltQ4);
	
}

static __inline  int CalcRMS(short *Data) {				/* Расчет действующего значения величины	*/
static long long Summ    = 0;
static 			 int Counter = 80;
static 			 int Result  = 0;
int Temp; 	

	Summ   += ((long long)*Data) * ((long long)*Data);
	if (--Counter) return Result;

	Temp    = Summ >> 6;
	Result  = __SSAT(__sqrtf(Temp * 0.8f),16);
	Counter = 80;
	Summ    = 0;
	return Result;
}
static __inline	 int CalcInitAMP(int Udc) {					/* */
int	Amp;
	
	Udc = (Udc * 0x0000B505) >> 16;	/* Udc умножаем на 0.707	- это максимальное действующее значение, которое можем выдать */
	Amp = ((int)Metro.ARR * (int)EvPrms.SUFlt) / Udc;
	if (Amp > Metro.ARR) Amp = Metro.ARR;
	if (Amp < (Metro.ARR >> 4)) Amp = Metro.ARR >> 4;
	return Amp;
}


static __inline  int Alarms(int OldErrorCode) {		/* Защиты																	*/
static int  In[6] = {0,0,0,0,0,0};
static int  In0[6] = {0,0,0,0,0,0};
static int dIn[6] = {0,0,0,0,0,0};
static int cIn[6] = {0,0,0,0,0,0};	
	
int AbsIa, AbsIb, AbsIc;
int AbsUdc1, AbsUdc2;
	
int ErrorCode = 0;	
int i;

int RefdI;
int RefdIt;

{	/* Защита по высокочастотному току	*/
//	In[0] = StdPrms.ADCDataNorm[_Ia1];
//	In[1] = StdPrms.ADCDataNorm[_Ib1];
//	In[2] = StdPrms.ADCDataNorm[_Ic1];
//	
//	In[3] = StdPrms.ADCDataNorm[_Ia2];
//	In[4] = StdPrms.ADCDataNorm[_Ib2];
//	In[5] = StdPrms.ADCDataNorm[_Ic2];	
//	
//	RefdI  = SavePrms.RefIHighFreq;
//	RefdIt = SavePrms.RefTHighFreq;
//	
//	for (i = 0; i < 6; i++) {
//		cIn[i] = __QADD(cIn[i],1);
//		if (ABS(dIn[i]) < RefdI) cIn[i] = 0; else
//			if (ABS(In[i] - In0[i]) < RefdI) cIn[i] = 0; else
//				if (dIn[i] * (In[i] - In0[i]) >= 0) cIn[i] = 0;
//		dIn[i] = In[i] - In0[i];
//		In0[i] = In[i];
//		if (cIn[i] > RefdIt) {ErrorCode |= (1ul << 15); cIn[i] = 0;}
//	}
}
	
{	/* Защиты по току МТЗ 1			*/ 
	
	AbsIa = (StdPrms.ADCDataNorm[_Ia1] > 0) ? StdPrms.ADCDataNorm[_Ia1] : 0 - StdPrms.ADCDataNorm[_Ia1];
	AbsIb = (StdPrms.ADCDataNorm[_Ib1] > 0) ? StdPrms.ADCDataNorm[_Ib1] : 0 - StdPrms.ADCDataNorm[_Ib1];
	AbsIc = (StdPrms.ADCDataNorm[_Ic1] > 0) ? StdPrms.ADCDataNorm[_Ic1] : 0 - StdPrms.ADCDataNorm[_Ic1];
	
	if (AbsIa < SavePrms.RefMtzI) Metro.MTZIa1Counter = SavePrms.RefMtzT; else Metro.MTZIa1Counter = (unsigned short)__UQSUB16(Metro.MTZIa1Counter,1);
	if (AbsIb < SavePrms.RefMtzI) Metro.MTZIb1Counter = SavePrms.RefMtzT; else Metro.MTZIb1Counter = (unsigned short)__UQSUB16(Metro.MTZIb1Counter,1);
	if (AbsIc < SavePrms.RefMtzI) Metro.MTZIc1Counter = SavePrms.RefMtzT; else Metro.MTZIc1Counter = (unsigned short)__UQSUB16(Metro.MTZIc1Counter,1);
	
	if ((Metro.MTZIa1Counter == 0) || (Metro.MTZIb1Counter == 0) || (Metro.MTZIc1Counter == 0)) {
		if (StdPrms.Status == 5) ErrorCode |= (1ul << 0); else ErrorCode |= (1ul << 13);
		Metro.MTZIa1Counter = Metro.MTZIb1Counter = Metro.MTZIc1Counter = SavePrms.RefMtzT;
	}
}
{	/* Защиты по току МТЗ 2			*/
	AbsIa = (StdPrms.ADCDataNorm[_Ia2] > 0) ? StdPrms.ADCDataNorm[_Ia2] : 0 - StdPrms.ADCDataNorm[_Ia2];
	AbsIb = (StdPrms.ADCDataNorm[_Ib2] > 0) ? StdPrms.ADCDataNorm[_Ib2] : 0 - StdPrms.ADCDataNorm[_Ib2];
	AbsIc = (StdPrms.ADCDataNorm[_Ic2] > 0) ? StdPrms.ADCDataNorm[_Ic2] : 0 - StdPrms.ADCDataNorm[_Ic2];
	
	if (AbsIa < SavePrms.RefMtzI) Metro.MTZIa2Counter = SavePrms.RefMtzT; else Metro.MTZIa2Counter = (unsigned short)__UQSUB16(Metro.MTZIa2Counter,1);
	if (AbsIb < SavePrms.RefMtzI) Metro.MTZIb2Counter = SavePrms.RefMtzT; else Metro.MTZIb2Counter = (unsigned short)__UQSUB16(Metro.MTZIb2Counter,1);
	if (AbsIc < SavePrms.RefMtzI) Metro.MTZIc2Counter = SavePrms.RefMtzT; else Metro.MTZIc2Counter = (unsigned short)__UQSUB16(Metro.MTZIc2Counter,1);
	
	if ((Metro.MTZIa2Counter == 0) || (Metro.MTZIb2Counter == 0) || (Metro.MTZIc2Counter == 0)) {
		if (StdPrms.Status == 5) ErrorCode |= (1ul << 1); else ErrorCode |= (1ul << 14);
		Metro.MTZIa2Counter = Metro.MTZIb2Counter = Metro.MTZIc2Counter = SavePrms.RefMtzT;
	}		
}
{	/* Защиты по току МТЗ 3			*/
	AbsIa = (StdPrms.ADCDataNorm[_Ia3] > 0) ? StdPrms.ADCDataNorm[_Ia3] : 0 - StdPrms.ADCDataNorm[_Ia3];
	AbsIb = (StdPrms.ADCDataNorm[_Ib3] > 0) ? StdPrms.ADCDataNorm[_Ib3] : 0 - StdPrms.ADCDataNorm[_Ib3];
	AbsIc = (StdPrms.ADCDataNorm[_Ic3] > 0) ? StdPrms.ADCDataNorm[_Ic3] : 0 - StdPrms.ADCDataNorm[_Ic3];
	
	if (AbsIa < SavePrms.RefMtzI) Metro.MTZIa3Counter = SavePrms.RefMtzT; else Metro.MTZIa3Counter = (unsigned short)__UQSUB16(Metro.MTZIa3Counter,1);
	if (AbsIb < SavePrms.RefMtzI) Metro.MTZIb3Counter = SavePrms.RefMtzT; else Metro.MTZIb3Counter = (unsigned short)__UQSUB16(Metro.MTZIb3Counter,1);
	if (AbsIc < SavePrms.RefMtzI) Metro.MTZIc3Counter = SavePrms.RefMtzT; else Metro.MTZIc3Counter = (unsigned short)__UQSUB16(Metro.MTZIc3Counter,1);
	
	if ((Metro.MTZIa3Counter == 0) || (Metro.MTZIb3Counter == 0) || (Metro.MTZIc3Counter == 0)) {
		ErrorCode |= (1ul << 10);
		Metro.MTZIa3Counter = Metro.MTZIb3Counter = Metro.MTZIc3Counter = SavePrms.RefMtzT;
	}		
}
{	/* Защиты по току МТЗ 4			*/
	AbsIa = (StdPrms.ADCDataNorm[_Ia4] > 0) ? StdPrms.ADCDataNorm[_Ia4] : 0 - StdPrms.ADCDataNorm[_Ia4];
	AbsIb = (StdPrms.ADCDataNorm[_Ib4] > 0) ? StdPrms.ADCDataNorm[_Ib4] : 0 - StdPrms.ADCDataNorm[_Ib4];
	AbsIc = (StdPrms.ADCDataNorm[_Ic4] > 0) ? StdPrms.ADCDataNorm[_Ic4] : 0 - StdPrms.ADCDataNorm[_Ic4];
	
	if (AbsIa < SavePrms.RefMtzI) Metro.MTZIa4Counter = SavePrms.RefMtzT; else Metro.MTZIa4Counter = (unsigned short)__UQSUB16(Metro.MTZIa4Counter,1);
	if (AbsIb < SavePrms.RefMtzI) Metro.MTZIb4Counter = SavePrms.RefMtzT; else Metro.MTZIb4Counter = (unsigned short)__UQSUB16(Metro.MTZIb4Counter,1);
	if (AbsIc < SavePrms.RefMtzI) Metro.MTZIc4Counter = SavePrms.RefMtzT; else Metro.MTZIc4Counter = (unsigned short)__UQSUB16(Metro.MTZIc4Counter,1);
	
	if ((Metro.MTZIa4Counter == 0) || (Metro.MTZIb4Counter == 0) || (Metro.MTZIc4Counter == 0)) {
		ErrorCode |= (1ul << 11);
		Metro.MTZIa4Counter = Metro.MTZIb4Counter = Metro.MTZIc4Counter = SavePrms.RefMtzT;
	}		
}



{	/* Защита по току диодов 1	*/
//	if (EvPrms.I1Flt < SavePrms.RefMtzIVD) Metro.MTZI1CounterVD = SavePrms.RefMtzTVD; else Metro.MTZI1CounterVD = (unsigned short)__UQSUB16(Metro.MTZI1CounterVD,1);
//	/* Если коммутация включена, то эта зашита блокируется	*/
//	if (PeriphBB(TIM1->BDTR,TIM_BDTR_MOE_bit)) { Metro.MTZI1CounterVD = SavePrms.RefMtzTVD;}
//	if (Metro.MTZI1CounterVD == 0) { ErrorCode |= (1ul << 10); Metro.MTZI1CounterVD = SavePrms.RefMtzTVD; }
}

{	/* Защита по току диодов 2	*/
//	if (EvPrms.I2Flt < SavePrms.RefMtzIVD) Metro.MTZI2CounterVD = SavePrms.RefMtzTVD; else Metro.MTZI2CounterVD = (unsigned short)__UQSUB16(Metro.MTZI2CounterVD,1);
//	/* Если коммутация включена, то эта зашита блокируется	*/
//	if (PeriphBB(TIM8->BDTR,TIM_BDTR_MOE_bit)) { Metro.MTZI2CounterVD = SavePrms.RefMtzTVD;}
//	if (Metro.MTZI2CounterVD == 0) { ErrorCode |= (1ul << 11); Metro.MTZI2CounterVD = SavePrms.RefMtzTVD; }
}	

{	/* Защита по Udc,SU min/max	*/
	if ((StdPrms.Status == 2) || (StdPrms.Status == 5) || (StdPrms.Status == 6) || (StdPrms.Status == 7))	{
	{	/* Udc Max								*/
		AbsUdc1	= ABS(StdPrms.ADCDataNorm[_Udc1]);
		AbsUdc2	= ABS(StdPrms.ADCDataNorm[_Udc2]);
	
		if (AbsUdc1 < SavePrms.RefUdcmaxU) Metro.Udc1MaxCounter = SavePrms.RefUdcmaxT; else Metro.Udc1MaxCounter = (unsigned short)__UQSUB16(Metro.Udc1MaxCounter,1);
		if (AbsUdc2 < SavePrms.RefUdcmaxU) Metro.Udc2MaxCounter = SavePrms.RefUdcmaxT; else Metro.Udc2MaxCounter = (unsigned short)__UQSUB16(Metro.Udc2MaxCounter,1);
	
		if ((Metro.Udc1MaxCounter == 0) || (Metro.Udc2MaxCounter == 0)) {ErrorCode |= (1ul << 2); Metro.Udc1MaxCounter = Metro.Udc2MaxCounter = SavePrms.RefUdcmaxT;}
	}		
	{	/* UdcMin									*/
		if (AbsUdc1 > SavePrms.RefUdcminU) Metro.Udc1MinCounter = SavePrms.RefUdcminT; else Metro.Udc1MinCounter = (unsigned short)__UQSUB16(Metro.Udc1MinCounter,1);
		if (AbsUdc2 > SavePrms.RefUdcminU) Metro.Udc2MinCounter = SavePrms.RefUdcminT; else Metro.Udc2MinCounter = (unsigned short)__UQSUB16(Metro.Udc2MinCounter,1);
	
		if ((Metro.Udc1MinCounter == 0) || (Metro.Udc2MinCounter == 0)) {ErrorCode |= (1ul << 3); Metro.Udc1MinCounter = Metro.Udc2MinCounter = SavePrms.RefUdcminT;}
	}
	{	/* SU	min									*/
//		if (EvPrms.SUNotFlt > SavePrms.RefSUminU) Metro.SUMinCounter = SavePrms.RefSUminT; else Metro.SUMinCounter = (unsigned short)__UQSUB16(Metro.SUMinCounter, 1);
//		if (Metro.SUMinCounter == 0) {ErrorCode |= (1ul << 7); Metro.SUMinCounter = SavePrms.RefSUminT;}
	}
	{	/* SU	max									*/
//		if (EvPrms.SUNotFlt < SavePrms.RefSUmaxU) Metro.SUMaxCounter = SavePrms.RefSUmaxT; else Metro.SUMaxCounter = (unsigned short)__UQSUB16(Metro.SUMaxCounter, 1);
//		if (Metro.SUMaxCounter == 0) {ErrorCode |= (1ul << 9); Metro.SUMaxCounter = SavePrms.RefSUmaxT;}
	}
	} else {	/* Статус отличается от готовности и работы, спящего режима	*/
		Metro.Udc1MaxCounter = Metro.Udc2MaxCounter = SavePrms.RefUdcmaxT;
		Metro.Udc1MinCounter = Metro.Udc2MinCounter = SavePrms.RefUdcminT;
		Metro.SUMinCounter = SavePrms.RefSUminT;
		Metro.SUMaxCounter = SavePrms.RefSUmaxT;
	}
}
{	/* Защита по BKIN	и синхр.	*/
	if ((StdPrms.Status == 5) || (StdPrms.Status == 6) || (StdPrms.Status == 7))	{
		if (Metro.ErrorTIM1Flag) {ErrorCode |= (1ul << 4); Metro.ErrorTIM1Flag = 0;}
		if (Metro.ErrorTIM8Flag) {ErrorCode |= (1ul << 5); Metro.ErrorTIM8Flag = 0;}

//		/* Потеря синхронизации 		*/
//		if (Metro.SynchError > 40) {ErrorCode |= (1ul << 6);}
	}
}	
{	/* Защита по температуре		*/
	for (i = 0; i < 24; i++) 
	{
		if (Delay(EvPrms.T[i] > (SavePrms.RefTempr / 10), MainCycle, &PrgData.TemprProtect[i])) {ErrorCode |= (1ul << 8);}
	}
	if (ErrorCode & (1ul << 8)) { for (i = 0; i < 24; i++) PrgData.TemprProtect[i] = 0;}
}	
{	/* Защита разрядного резистора	*/
//	if (Metro.FlagRazradError) {ErrorCode |= (1ul << 12); Metro.TimeRazrad = 0; Metro.FlagRazradError = 0;}
}	
{	/* Контроль Заряда и KM-ов	*/
	/* Ограничиваем длительность включения KM1, если он не включается ---------------------------------------	*/
	if ((PrgData.KM1ENA > 2000) && (PrgData.KM1ON == 0)) 
	{
		PrgData.KM1ENA = PrgData.ACZaradENA = PrgData.AC_KM_ENA = PrgData.FlagNeedACZarad = 0;
		PrgData.FlagErrorZarad |= 0x01;																														/* Отказ KM1						*/
	}

	if ((PrgData.KM1ON > SavePrms.RefWorkKM1) && ((EvPrms.Udc1Flt < SavePrms.RefUdcZarad) || (EvPrms.Udc2Flt < SavePrms.RefUdcZarad))) 
	{
		PrgData.KM1ENA = PrgData.ACZaradENA = PrgData.AC_KM_ENA = PrgData.FlagNeedACZarad = 0;
		PrgData.FlagErrorZarad |= 0x02;																														/* Неуспешный AC заряд	*/
	}	
	
	if ((PrgData.ACZaradENA > 2000) && (EvPrms.SUFlt < SavePrms.RefSUZarad)) 
	{
		PrgData.KM1ENA = PrgData.ACZaradENA = PrgData.AC_KM_ENA = PrgData.FlagNeedACZarad = 0;
		PrgData.FlagErrorZarad |= 0x04;																														/* Неуспешный AC заряд	*/
	}
	
	ErrorCode |= (PrgData.FlagErrorZarad << 16);																					
	PrgData.FlagErrorZarad = 0;
}	

{	/* Аварийный грибок					*/
	if (PrgData.K_Alarm) {ErrorCode |= (1ul << 31); }
}	

	/* Анализ сработавших защит -------------------------------------------------------------------------------------------------------------	*/
	if (ErrorCode == 0) return 0;

	/* Запуск осциллографа по любой защите */
	if ((OldErrorCode ^ ErrorCode) & ErrorCode) 
	{ 
		Metro.OscilCmnd.OscilNeed = 1; 
		EvPrms.EventCode = 0x0853;
		PrgData.KM1ENA = PrgData.ACZaradENA = PrgData.AC_KM_ENA = PrgData.FlagNeedACZarad = 0;
	}

	return ErrorCode;
}


static __inline  int CheckReady(void) {						/* Проверка готовности к включению				*/
int TempCode = 0;

	if (EvPrms.AlarmWord1 != 0)	TempCode |= (1ul << 0);														/*	Не сквитирована авария	*/
	
	TempCode |= (PeriphBB(TIM1->SR, TIM_SR_BIF_bit) << 1);												/* Флаг TIM1 BKIN						*/
	TempCode |= (PeriphBB(TIM8->SR, TIM_SR_BIF_bit) << 2);												/* Флаг TIM8 BKIN						*/

	if (EvPrms.IGBTStat1[0] | EvPrms.IGBTStat2[0] | EvPrms.IGBTStat3[0] | EvPrms.IGBTStat4[0]) 	TempCode |= (1ul << 3);									/* Статус IGBT							*/

	if ((EvPrms.Udc1Flt < SavePrms.RefUdcZarad) || (EvPrms.Udc2Flt < SavePrms.RefUdcZarad)) 		TempCode |= (1ul << 4);
	if (EvPrms.SUFlt < SavePrms.RefSUZarad)																											TempCode |= (1ul << 5);
	
	if ((PrgData.KM1ENA) || (PrgData.KM1ON) || (PrgData.ACZaradENA) || (PrgData.AC_KM_ENA) || (PrgData.FlagNeedACZarad)) TempCode |= (1ul << 6);

	if (PrgData.AC_KM_ON == 0)  TempCode |= (1ul << 7);
	
	return TempCode;
}

static __inline void Disable(int NewStatus) {			/* Выключение															*/
	PeriphBB(TIM8->BDTR, TIM_BDTR_MOE_bit) = 0; 
	PeriphBB(TIM1->BDTR, TIM_BDTR_MOE_bit) = 0;
	Metro.NeedDisable = 0;
	StdPrms.Status		= NewStatus;
}	//static __inline void Disable()

static __inline void Enable(int Mode) {										/* Включение															*/
int Mode1, Mode8;
	Metro.NewMode  = Metro.Mode = Mode;
	
	Mode1 = (Metro.Mode & 0x0001);
	Mode8 = (Metro.Mode & 0x0002) >> 1;
	
	StdPrms.Status = 5;
	
	PeriphBB(TIM1->SR,TIM_SR_UIF_bit) = 0;													/* Сбрасываем TIM1_UPDATE								*/
//	PeriphBB(TIM1->DIER,TIM_DIER_BIE_bit) = Mode1;
	PeriphBB(TIM1->DIER,TIM_DIER_UIE_bit) = Mode1;									/* Включаем прерывание TIM1_UPDATE			*/	
	
	PeriphBB(TIM8->SR,TIM_SR_UIF_bit) = 0;													/* Сбрасываем TIM8_UPDATE								*/
//	PeriphBB(TIM8->DIER,TIM_DIER_BIE_bit) = Mode8;
	PeriphBB(TIM8->DIER,TIM_DIER_UIE_bit) = Mode8;									/* Включаем прерывание TIM8_UPDATE			*/	
	
}	//static __inline void Enable()

static __inline void Zarad(void) {								/* Процедура начального заряда Udc				*/
	/* Если идет разряд, то ничего не делаем	*/
	if (PrgData.CountRazrad) return;
	
	/* Проверяем необходимость заряда	-------	*/
	if ((PrgData.K_Zarad == 1) && (EvPrms.SUFlt < SavePrms.RefSUZarad) && (PrgData.KM1ON == 0) && (PrgData.KM1ENA == 0) && (EvPrms.AlarmWord1 == 0) && (PrgData.FlagNeedACZarad == 0) && (PrgData.AC_KM_ON == 0))	
	{				
		PrgData.KM1ENA = 1;																															/* Включаем KM1								*/
	}

	/* Проверяем, что заряжено DC							*/
	if ((PrgData.KM1ENA) /*&& (PrgData.KM1ON > SavePrms.RefWorkKM1)*/ && (EvPrms.Udc1Flt > SavePrms.RefUdcZarad) && (EvPrms.Udc2Flt > SavePrms.RefUdcZarad) && (PrgData.FlagNeedACZarad == 0)) 
	{
		PrgData.KM1ENA = 0;																															/* Отключаем KM1							*/
		PrgData.FlagNeedACZarad = 1;																										/* Необходимо заряжать дальше	*/
	}	

	/* Проверяем необходимость заряда	AC			*/
	if ((PrgData.FlagNeedACZarad == 1) && (PrgData.KM1ON == 0) && (PrgData.KM1ENA == 0) && (EvPrms.AlarmWord1 == 0))	
	{				
		PrgData.ACZaradENA = 1;																													/* Включаем заряд AC					*/
		PrgData.FlagNeedACZarad = 2;																										/* Необходимо заряжать дальше	*/
	}

	/* Проверяем необходимость заряда	AC			*/
	if ((PrgData.FlagNeedACZarad == 2) && (PrgData.ACZaradENA > 2000) && (EvPrms.SUFlt >= SavePrms.RefSUZarad) && (EvPrms.AlarmWord1 == 0))	
	{				
		PrgData.AC_KM_ENA = 1;																													/* Включаем крнтактор AC			*/
		PrgData.FlagNeedACZarad = 3;																										/* Необходимо заряжать дальше	*/
	}
	
	if (PrgData.AC_KM_ENA > 2000)	
	{
		PrgData.AC_KM_ENA = PrgData.ACZaradENA = PrgData.FlagNeedACZarad = 0;
	}

} //static __inline void Zarad(void)


static __inline void ManRazrad(void) {						/* Процедура разряда Udc по кнопке				*/
	if ((PrgData.K_Razrad == 1) && (PrgData.CountRazrad == 0))	{
		PrgData.CountRazrad = MainCycle;
		
		/* Отключаем контакторы	*/
		PrgData.KM1ENA = PrgData.ACZaradENA = PrgData.AC_KM_ENA = PrgData.FlagNeedACZarad = 0;
	}
}  //static __inline void Razrad(void)


static __inline void CalcRegs(void) {							/* Регуляторы Udc (угла) и Q (амплитуды)	*/
	/* Рассчитываем амплитуду	*/
	/*!!! Т.к. при 2 кГц ARR > 0x7FFF, то выход ПИ-регулятора умножаем на 2 ( << 1 ),	А буфер ПИ-регулятора делим на 2	( >> 1)							*/

  if (PrgData.FixUgolMode == 0)
	{
//		Metro.AMP1 = PI_REG(SavePrms.RefQ, (short)__QADD16(EvPrms.Q1Flt, EvPrms.Q2Flt), &Metro.BufRegQ1, &SavePrms.RegQ) << 1; 
	  Metro.AMP1 = PI_REG(SavePrms.RefQ, EvPrms.Q12Flt_rms, &Metro.BufRegQ1, &SavePrms.RegQ) << 1; 
		
		if ((Metro.BufRegQ1 >> (16 - 1)) < (Metro.ARR >> 3)) 	Metro.BufRegQ1 = (Metro.ARR << (13 - 1));	
		if ((Metro.BufRegQ1 >> (16 - 1)) > (Metro.ARR)) 			Metro.BufRegQ1 = (Metro.ARR << (16 - 1));	

		if (Metro.AMP1 < (Metro.ARR >> 3)) Metro.AMP1 = (Metro.ARR >> 3);
		if (Metro.AMP1 >  Metro.ARR) 			 Metro.AMP1 =  Metro.ARR;		

//		Metro.AMP2 = PI_REG(SavePrms.RefQ, (short)__QADD16(EvPrms.Q3Flt, EvPrms.Q4Flt), &Metro.BufRegQ2, &SavePrms.RegQ) << 1; 
	  Metro.AMP2 = PI_REG(SavePrms.RefQ, EvPrms.Q34Flt_rms, &Metro.BufRegQ2, &SavePrms.RegQ) << 1; 
		
		if ((Metro.BufRegQ2 >> (16 - 1)) < (Metro.ARR >> 3)) 	Metro.BufRegQ2 = (Metro.ARR << (13 - 1));	
		if ((Metro.BufRegQ2 >> (16 - 1)) > (Metro.ARR)) 			Metro.BufRegQ2 = (Metro.ARR << (16 - 1));	

		if (Metro.AMP2 < (Metro.ARR >> 3)) Metro.AMP2 = (Metro.ARR >> 3);
		if (Metro.AMP2 >  Metro.ARR) 			 Metro.AMP2 =  Metro.ARR;
	}
	/* Рассчитываем угол			*/
	if (Metro.FixUgolMode) 
	{
//		Metro.IncPhase1 = Metro.IncPhase2 = SavePrms.RefFi1;
		PrgData.IncPhase1 = PrgData.FiltIncPhase1;
		PrgData.IncPhase2 = PrgData.FiltIncPhase2;

		if (ABS((PrgData.WorkRefUdc1 >> 16) - EvPrms.Udc1Flt) > SavePrms.RefDeltaUdc) {PrgData.FixUgolMode = 0;}
		
	}	
	else 
	{ 
//		Metro.IncPhase1 = PI_REG(Metro.WorkRefUdc1 >> 16, EvPrms.Udc1Flt, &Metro.BufRegUdc1, &SavePrms.RegUdc);
//		Metro.IncPhase2 = PI_REG(Metro.WorkRefUdc2 >> 16, EvPrms.Udc2Flt, &Metro.BufRegUdc2, &SavePrms.RegUdc);
		Metro.IncPhase1 = PI_REG(Metro.WorkRefUdc1 >> 16, EvPrms.Udc1Flt_rms, &Metro.BufRegUdc1, &SavePrms.RegUdc);
		Metro.IncPhase2 = PI_REG(Metro.WorkRefUdc2 >> 16, EvPrms.Udc2Flt_rms, &Metro.BufRegUdc2, &SavePrms.RegUdc);
	
		/* Ограничиваем выход регулятора +/- 45 град	*/
		Metro.IncPhase1  = __SSAT(Metro.IncPhase1, 14);
		Metro.BufRegUdc1 = __SSAT(Metro.BufRegUdc1, 30);
		
		Metro.IncPhase2  = __SSAT(Metro.IncPhase2, 14);
		Metro.BufRegUdc2 = __SSAT(Metro.BufRegUdc2, 30);		
		
		/*Фильтрация значения угла										*/
		PrgData.FiltIncPhase1 = AP_REG(PrgData.IncPhase1, 65536 / MainCycle, &PrgData.BufFiltIncPhase1);
		PrgData.FiltIncPhase2 = AP_REG(PrgData.IncPhase2, 65536 / MainCycle, &PrgData.BufFiltIncPhase2);
		
		PrgData.FiltIncPhaseCalc = AP_REG(PrgData.IncPhaseCalc, 65536 / MainCycle, &PrgData.BufFiltIncPhaseCalc);
		
	}	
		
} //static __inline void CalcRegs(void)


static __inline void ChangeMode2(void) {					/* Включение / отключен мостов на ходу	 */
/*
	010  <=>  011  <=>  001  <=>  111  <=>  110
	 |         |         |         |         |______ Левый мост с КМ4
	 |         |         |         |________________ Левый мост с КМ4 + Правый мост
	 |         |         |__________________________ Правый мост
	 |         |____________________________________ Левый мост без KM4 + Правый мост
	 |______________________________________________ Левый мост без KM4
*/
	
int NewMode;
int Mode;
int x;	
	
	x 			= SavePrms.BridgeUgolCorrect;
	NewMode = Metro.NewMode & 0x0007;
	Mode		= Metro.Mode & 0x0007;

	if (Mode == 0x05) {Metro.KM4ENA = 0; Metro.Mode = Mode = 0x01; }

	if (NewMode == Mode) return;
	
	if ((Mode == 0x01) && ((NewMode & 0x06) == 0x06)) {									/* Включени Левого моста с КМ4					*/
		if (Metro.KM4ON > 2000) {																					/* KM4 включен													*/
			Metro.KM4ENA |= 1;
			Metro.Mode = 0x07;
			/* Корректируем угол и вводим левый мост		*/
			Metro.IncPhase1 = ((Metro.IncPhase1 - x) >> 1);
			Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
			
			PeriphBB(TIM8->SR,TIM_SR_UIF_bit) = 0;													/* Сбрасываем TIM8_UPDATE								*/
			PeriphBB(TIM8->DIER,TIM_DIER_UIE_bit) = 1;											/* Включаем прерывание TIM8_UPDATE			*/				
		}	else { Metro.KM4ENA |= 1;}																			/* Выдаем сигнал на включени KM4				*/
		return;
	} //if ((Mode == 0x01) && ((NewMode & 0x06) == 0x06)) 
	else if ((Mode == 0x07) && (NewMode == 0x06)) {											/* Отключение Правого моста при включенном левом с КМ4	*/			

		Metro.Mode   =  0x06;
		/* Корректируем угол и выводим правый мост		*/
		Metro.IncPhase1 = (Metro.IncPhase1 << 1) + x;
		Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
	
		PeriphBB(TIM1->SR,TIM_SR_UIF_bit) = 0;														/* Сбрасываем TIM1_UPDATE								*/
		PeriphBB(TIM1->DIER,TIM_DIER_UIE_bit) = 1;												/* Включаем прерывание TIM1_UPDATE			*/		
	
		return;
	} //if ((Mode == 0x07) && (NewMode == 0x06))
	else if (Mode == 0x06) {																						/* Включение Правого моста при включенном левом с КМ4	*/
		Metro.Mode   =  0x07;
		/* Корректируем угол и ввводим правый мост		*/
		Metro.IncPhase1 = ((Metro.IncPhase1 - x) >> 1);
		Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
	
		PeriphBB(TIM1->SR,TIM_SR_UIF_bit) = 0;														/* Сбрасываем TIM1_UPDATE								*/
		PeriphBB(TIM1->DIER,TIM_DIER_UIE_bit) = 1;												/* Включаем прерывание TIM1_UPDATE			*/		
	
		return;
	}	//if (Mode == 0x06)
	else if ((Mode == 0x07) && (NewMode != 0x06))	{											/* Отключаем левый мост с КМ4						*/
		
		Metro.Mode   =  0x05;
		/* Корректируем угол и выводим левый мост		*/
		Metro.IncPhase1 = (Metro.IncPhase1 << 1) + x;
		Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
	
		PeriphBB(TIM8->SR,TIM_SR_UIF_bit) = 0;														/* Сбрасываем TIM1_UPDATE								*/
		PeriphBB(TIM8->DIER,TIM_DIER_UIE_bit) = 1;												/* Включаем прерывание TIM1_UPDATE			*/		
		return;
	} else if ((Mode == 0x01) && ((NewMode & 0x06) != 0x06)) {
	}
}

static __inline void AutoSecondBridge(int ClearCounters) {		/* Автоматическиое включение / отключени второго моста	*/
static int EnaCounter = 0;
static int DisCounter = 0;
	/**/
	if (ClearCounters) {EnaCounter = DisCounter = 0; return;}
	
	/* Проверяем разрешение на управление мостом	*/
	if (SavePrms.EnaAuto2ndBridge == 0) { Metro.NewMode = SavePrms.DefMode; EnaCounter = DisCounter = 0; return;}
	
	/* */
//	if ((Metro.EscalatorInUse ^ Metro.EscalctorInUse_1) & Metro.EscalatorInUse)  {Metro.NewMode = 0x07; DisCounter = 0;} else
	if (Delay(ABS(EvPrms.P1Flt+EvPrms.P2Flt) > SavePrms.RefPEna2ndBridge, SavePrms.RefTEna2ndBridge, &EnaCounter)) {Metro.NewMode = 0x07; DisCounter = 0;}
	if (Delay(ABS(EvPrms.P1Flt+EvPrms.P2Flt) < SavePrms.RefPDis2ndBridge, SavePrms.RefTDis2ndBridge, &DisCounter)) {Metro.NewMode = 0x01; EnaCounter = 0;}

}


static __inline void SetInitAmpAngle(void) {			/* Установка начальных параметров					*/
	/* Начальная амплитудаи регулятор Q		*/
	
	Metro.AMP1			= CalcInitAMP((int)EvPrms.Udc1Flt);
	Metro.BufRegQ1  = Metro.AMP1 << (16 - 1);				/*!!! Т.к. при 2 кГц ARR > 0x7FFF, то выход ПИ-регулятора умножаем на 2 ( << 1 ),				*/

	Metro.AMP2			= CalcInitAMP((int)EvPrms.Udc2Flt);
	Metro.BufRegQ2  = Metro.AMP2 << (16 - 1);				/*!!! Т.к. при 2 кГц ARR > 0x7FFF, то выход ПИ-регулятора умножаем на 2 ( << 1 ),				*/
	
	/* Начальная уставка Udc							*/
	Metro.WorkRefUdc1= EvPrms.Udc1Flt << 16;	
	Metro.WorkRefUdc2= EvPrms.Udc2Flt << 16;	
	
	/* Начальный угол	и регулятор Udc			*/
	Metro.IncPhase2	= SavePrms.RefFi1;
	
	if (ENATIMOffset == 2) {Metro.IncPhase1	= SavePrms.RefFi1 - ((0x00320000ul / PWMFreq) >> 1);}
	else if (ENATIMOffset == 4) {Metro.IncPhase1	= SavePrms.RefFi1 - ((0x00320000ul / PWMFreq) >> 2);}	
	else {PrgData.IncPhase1	= SavePrms.RefFi1;}
	
	Metro.BufRegUdc1 = Metro.IncPhase1 << 16;
	Metro.BufRegUdc2 = Metro.IncPhase2 << 16;
	
}

static __inline void SoftChangeUdc(void) {				/* Плавный набор уставки Udc							*/
	if (SavePrms.RefUdc > (Metro.WorkRefUdc1 >> 16)) {Metro.WorkRefUdc1 += SavePrms.SoftStartUdc;} 
		else if (SavePrms.RefUdc < (Metro.WorkRefUdc1 >> 16)) {Metro.WorkRefUdc1 -= SavePrms.SoftStartUdc;}

	if (SavePrms.RefUdc > (Metro.WorkRefUdc2 >> 16)) {Metro.WorkRefUdc2 += SavePrms.SoftStartUdc;} 
		else if (SavePrms.RefUdc < (Metro.WorkRefUdc2 >> 16)) {Metro.WorkRefUdc2 -= SavePrms.SoftStartUdc;}
}

static __inline void NotReady(void) {							/* Состояние неготовности									*/
	
	/* Пытаемся сбросить аварийные флаги	*/
	PeriphBB(TIM1->SR, TIM_SR_BIF_bit) = Metro.ErrorTIM1Flag = 0;
	PeriphBB(TIM8->SR, TIM_SR_BIF_bit) = Metro.ErrorTIM8Flag = 0;	
	
  ManRazrad();
	Zarad();

	/* Сбрасываем флаг включения					*/
	Metro.NeedEnable = 0;	
	
	/* Сброс защит	---------------------	*/
	if ((Metro.NeedDisable) || (Metro.K_Stop == 1)) {
		EvPrms.AlarmWord1 = 0; Metro.NeedDisable = 0; 
		EvPrms.IGBTStat1[0] = EvPrms.IGBTStat2[0] = EvPrms.IGBTStat3[0] = EvPrms.IGBTStat4[0] = 0;
	}
	/* ----------------------------------	*/

	EvPrms.ReadyWord1 = CheckReady();																/* Проверка готовности									*/
	if (EvPrms.ReadyWord1 == 0) {StdPrms.Status = 2;}								/* Переходим в состояние готовности			*/
}

static __inline void OffReady(void) {							/* Состояние готовности										*/
	EvPrms.ReadyWord1 = CheckReady();																/* Проверка готовности									*/
	if (EvPrms.ReadyWord1 != 0) {StdPrms.Status = 1;	return;}			/* Переходим в состояние неготовности		*/
	
	SetInitAmpAngle();
	
	if (((Metro.NeedEnable)||(Metro.K_Start == 1)) && ((Metro.K_Stop | Metro.NeedDisable) == 0))	{
		Enable(0x07);																											/* Включение														*/

		Metro.NeedEnable = 0;																					/* Сбрасываем флаг включения						*/
		Metro.NeedDisable = 0;																				/* Сбрасываем флаг выключения						*/

		PrgData.OscilCmnd.OscilNeed = 1; 
		
		EvPrms.EventCode = 0x0153;
		return;
	}	//if (Metro.NeedEnable)

	Metro.NeedEnable = 0;																						/* Сбрасываем флаг включения						*/
	Metro.NeedDisable = 0;																					/* Сбрасываем флаг выключения						*/
	
	ManRazrad();																										/* Процедура разряда										*/
}	//static __inline void OffReady(void)


static __inline void Working(void) {							/* Состояние работы												*/
	/* Выключаем */
	if  (EvPrms.AlarmWord1)	{/*Metro.CANCmndTx |= 0x0001; */Disable(1); } else										/* Отправляем команду на подхват	*/	
		if ((Metro.NeedDisable)||(Metro.K_Stop)) { EvPrms.EventCode = 0x0253; PrgData.OscilCmnd.OscilNeed = 1; Disable(1); return; }

	/* Подгонка уставки Udc						*/
	SoftChangeUdc();
		
	/* Расчитываем угол и апмлитуды		*/
	CalcRegs();
	
}

static __inline void StandBy(void) {
unsigned short RefT;
				 short RefI;
	
	/* Выключаем */
	if  (EvPrms.AlarmWord1)	{Metro.CANCmndTx |= 0x0001; Disable(1); } else										/* Отправляем команду на подхват	*/	
		if ((Metro.NeedDisable)||(Metro.K_Stop)) { EvPrms.EventCode = 0x0253; Disable(1); return; }

	SetInitAmpAngle();
	
	RefT = SavePrms.RefStandByIvdT;
	RefI = SavePrms.RefStandByIvdI;
	
	if ((Metro.K_Start == 1) || (Metro.EscalatorInUse) || (Delay(EvPrms.I1Flt > RefI, RefT, &Metro.CounterI1Flt)) || (Delay(EvPrms.I2Flt > RefI, RefT, &Metro.CounterI2Flt)) ) {
		Metro.CounterEscalatorNotUse = 0;
		Metro.EnaDiodeModeCounter = 0;
		Enable(0x01);
		AutoSecondBridge(1);
	}
}  //static __inline void StandBY(void)

static __inline void DiodeMode(void) {
	
	/* Выключаем */
	if  (EvPrms.AlarmWord1)	{Metro.CANCmndTx |= 0x0001; Disable(1); } else										/* Отправляем команду на подхват	*/	
		if ((Metro.NeedDisable)||(Metro.K_Stop)) { EvPrms.EventCode = 0x0253; Disable(1); return; }

	SetInitAmpAngle();

	if ( (ABS(EvPrms.Udc1Flt) >= SavePrms.RefUdc) || 
			 (Delay(ABS(EvPrms.Udc1Flt) > SavePrms.RefUdcDisDiodeMode, 400, &Metro.DisDiodeModeCounterUdc)) || 
			 (Delay((-EvPrms.P1Flt-EvPrms.P2Flt) < SavePrms.RefPDisDiodeMode, SavePrms.RefTDisDiodeMode, &Metro.DisDiodeModeCounterP)) ){
		Metro.KM4ENA = 0;
		Metro.CounterEscalatorNotUse = 0;
		Metro.EnaDiodeModeCounter = 0;
		Enable(0x07);
		AutoSecondBridge(1);		
		return;
	}		
}  //static __inline void DiodeMode(void)

static __inline  int CalcLeds(void)	{							/* Светодиоды пульта											*/
short TempLeds = 0x3F;	
	if (EvPrms.AlarmWord1) TempLeds &= ~Led_Alarm;
	if ((StdPrms.Status == 5) || (StdPrms.Status == 6) || (StdPrms.Status == 7))	TempLeds &= ~Led_Ena;
	
	if (PrgData.FixUgolMode) TempLeds &= ~Led_TorqN;
	
	return TempLeds;
}
static __inline void CalcStatus(void)	{						/* Статус																	*/
	if (EvPrms.AlarmWord1) EvPrms.StatusWord1 |= 0x08ul; else EvPrms.StatusWord1 &= ~0x08ul;
	if (StdPrms.Status == 5) EvPrms.StatusWord1 |= 0x02ul; else EvPrms.StatusWord1 &= ~0x02ul;
	if (StdPrms.Status == 2) EvPrms.StatusWord1 |= 0x01ul; else EvPrms.StatusWord1 &= ~0x01ul;
}	

static __inline	void CalcGamma(int Phase, int AMP, int ARR, TIM_TypeDef	*TIM) {
int G1,G2;
	/*	Расчитываем новые гаммы	-------------------------------------------------------------------------------------------

           G1   G2				|   G2   G1        |   G1   G2        |   G2   G1        |   G1   G2        |   G2   G1        
A(CCR3)	__--------------__|_______----_______|__________________|__________________|_______----_______|__--------------__
B(CCR2) _______----_______|__--------------__|__--------------__|_______----_______|__________________|__________________	
C(CCR1)	__________________|__________________|_______----_______|__--------------__|__--------------__|_______----_______
          V100 V110       |   V010 V110         V010 V011          V001 V011          V001 V101          V100 V101
	*/
	if (Phase < 0x2AAB)					{	/* Угол 0..60, G1 - V100, G2 = V110 */
		G1 = AMP * sinf(Pi/3 - Pi * Phase / 0x8000);
		G2 = AMP * sinf(Pi * Phase / 0x8000);		

		TIM->CCR1	= ARR;
		TIM->CCR2	=	ARR - G2;													 
		TIM->CCR3	= ARR - (G1 + G2);		
															
	} else if (Phase < 0x5555)	{	/* Угол 60..120, G1 - V110, G2 = V010 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x2AAB) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x2AAB) / 0x8000);		
		
		TIM->CCR1	= ARR;														
		TIM->CCR2	= ARR - (G1 + G2);		
		TIM->CCR3	=	ARR - G1;													 

	}	else if (Phase < 0x8000)	{	/* Угол 120..180, G1 - V010, G2 = V011 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x5555) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x5555) / 0x8000);		
		
		TIM->CCR1	=	ARR - G2;													 
		TIM->CCR2	= ARR - (G1 + G2);		
		TIM->CCR3	= ARR;
		
	}	else if (Phase < 0xAAAB)	{	/* Угол 180..240, G1 - V011, G2 = V001 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x8000) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x8000) / 0x8000);		
		
		TIM->CCR1	= ARR - (G1 + G2);		
		TIM->CCR2	=	ARR - G1;													 
		TIM->CCR3	= ARR;
		
	} else if (Phase < 0xD555)	{	/* Угол 240..300, G1 - V001, G2 = V101 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0xAAAB) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0xAAAB) / 0x8000);		
		
		TIM->CCR1	= ARR - (G1 + G2);		
		TIM->CCR2	= ARR;
		TIM->CCR3	=	ARR - G2;													 
		
	} else														{	/* Угол 300..360, G1 - V101, G2 = V100 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0xD555) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0xD555) / 0x8000);		
		
		TIM->CCR1	=	ARR - G1;													 
		TIM->CCR2	= ARR;
		TIM->CCR3	= ARR - (G1 + G2);		
	} 
} //static __inline	void CalcGamma(int Phase, int AMP, int ARR, TIM_TypeDef	*TIM)

static __inline	void CalcGamma2(int Phase, int AMP, int ARR, TIM_TypeDef *TIM) {
int G1,G2,G3;
	
	/*	Расчитываем новые гаммы	-------------------------------------------------------------------------------------------

         G3   G1   G2	  G3 					     |   G2   G1        |   G1   G2        |   G2   G1        |   G1   G2        |   G2   G1        
A(CCR3)	_____-----------------------_____|_______----_______|__________________|__________________|_______----_______|__--------------__
B(CCR2) __________-------------__________|__--------------__|__--------------__|_______----_______|__________________|__________________	
C(CCR1)	______________-----______________|__________________|_______----_______|__--------------__|__--------------__|_______----_______
        V000 V100 V110 V111   				   |   V010 V110         V010 V011          V001 V011          V001 V101          V100 V101
	*/
	if (Phase < 0x2AAC)					{	/* Угол 0..60, G1 - V100, G2 = V110 */
		G1 = AMP * sinf(Pi/3 - Pi * Phase / 0x8000);
		G2 = AMP * sinf(Pi * Phase / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/

		TIM->CCR1	= ARR - G3;
		TIM->CCR2	=	ARR - (G2 + G3);													 
		TIM->CCR3	= ARR - (G1 + G2 + G3);		
															
	} else if (Phase < 0x5555)	{	/* Угол 60..120, G1 - V110, G2 = V010 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x2AAC) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x2AAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/

		TIM->CCR1	= ARR - G3;														
		TIM->CCR2	= ARR - (G1 + G2 + G3);		
		TIM->CCR3	=	ARR - (G1 + G3);													 

	}	else if (Phase < 0x8000)	{	/* Угол 120..180, G1 - V010, G2 = V011 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x5555) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x5555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		TIM->CCR1	=	ARR - (G2 + G3);													 
		TIM->CCR2	= ARR - (G1 + G2 + G3);		
		TIM->CCR3	= ARR - G3;
		
	}	else if (Phase < 0xAAAC)	{	/* Угол 180..240, G1 - V011, G2 = V001 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x8000) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x8000) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		TIM->CCR1	= ARR - (G1 + G2 + G3);		
		TIM->CCR2	=	ARR - (G1 + G3);													 
		TIM->CCR3	= ARR - G3;
		
	} else if (Phase < 0xD555)	{	/* Угол 240..300, G1 - V001, G2 = V101 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0xAAAC) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0xAAAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		TIM->CCR1	= ARR - (G1 + G2 + G3);		
		TIM->CCR2	= ARR - G3;
		TIM->CCR3	=	ARR - (G2 + G3);													 
		
	} else														{	/* Угол 300..360, G1 - V101, G2 = V100 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0xD555) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0xD555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		TIM->CCR1	=	ARR - (G1 + G3);													 
		TIM->CCR2	= ARR - G3; 
		TIM->CCR3	= ARR - (G1 + G2 + G3);		
	} 
} //static __inline	void CalcGamma2(int Phase, int AMP, int ARR, TIM_TypeDef	*TIM)

static __inline int CheckMinImpuls(int CCR, int ARR, int MinImpuls){
//	if (CCR < MinImpuls) {return 0;} else 
		if (CCR < (2 * MinImpuls)) {return 2 * MinImpuls;} else
//			if (CCR > (ARR - MinImpuls)) {return ARR;} else
				if (CCR > (ARR - 2 * MinImpuls)) {return (ARR - (2 * MinImpuls));} else
					return CCR;
}

static __inline	void CalcGamma3(int Phase, int AMP, int ARR, TIM_TypeDef *TIM, short Gamma1, short Gamma3) {
int G1,G2,G3;
int CCR1,CCR2,CCR3;
	
	/*	Расчитываем новые гаммы	-------------------------------------------------------------------------------------------

         G3   G1   G2	  G3 					     |   G2   G1        |   G1   G2        |   G2   G1        |   G1   G2        |   G2   G1        
A(CCR3)	_____-----------------------_____|_______----_______|__________________|__________________|_______----_______|__--------------__
B(CCR2) __________-------------__________|__--------------__|__--------------__|_______----_______|__________________|__________________	
C(CCR1)	______________-----______________|__________________|_______----_______|__--------------__|__--------------__|_______----_______
        V000 V100 V110 V111   				   |   V010 V110         V010 V011          V001 V011          V001 V101          V100 V101
	*/
	if (Phase < 0x2AAC)					{	/* Угол 0..60, G1 - V100, G2 = V110 */
		G1 = AMP * sinf(Pi/3 - Pi * Phase / 0x8000);
		G2 = AMP * sinf(Pi * Phase / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/

		CCR1	= ARR - G3;
		CCR2	=	ARR - (G2 + G3);													 
		CCR3	= ARR - (G1 + G2 + G3);		
															
	} else if (Phase < 0x5555)	{	/* Угол 60..120, G1 - V110, G2 = V010 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x2AAC) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x2AAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/

		CCR1	= ARR - G3;														
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	=	ARR - (G1 + G3);													 

	}	else if (Phase < 0x8000)	{	/* Угол 120..180, G1 - V010, G2 = V011 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x5555) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x5555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	=	ARR - (G2 + G3);													 
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	= ARR - G3;
		
	}	else if (Phase < 0xAAAC)	{	/* Угол 180..240, G1 - V011, G2 = V001 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0x8000) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0x8000) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	=	ARR - (G1 + G3);													 
		CCR3	= ARR - G3;
		
	} else if (Phase < 0xD555)	{	/* Угол 240..300, G1 - V001, G2 = V101 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0xAAAC) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0xAAAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	= ARR - G3;
		CCR3	=	ARR - (G2 + G3);													 
		
	} else														{	/* Угол 300..360, G1 - V101, G2 = V100 */
		G1 = AMP * sinf(Pi/3 - Pi * (Phase - 0xD555) / 0x8000);
		G2 = AMP * sinf(Pi * (Phase - 0xD555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	=	ARR - (G1 + G3);													 
		CCR2	= ARR - G3; 
		CCR3	= ARR - (G1 + G2 + G3);		
	} 
	
	CCR1 += Gamma1;	if (CCR1 < 0) {CCR1 = 0;} else if (CCR1 > ARR) {CCR1 = ARR;}
//CCR2 += Gamma2; if (CCR2 < 0) {CCR2 = 0;} else if (CCR2 > ARR) {CCR2 = ARR;}
	CCR3 += Gamma3; if (CCR3 < 0) {CCR3 = 0;} else if (CCR3 > ARR) {CCR3 = ARR;}

	
	TIM->CCR1 = CheckMinImpuls(CCR1, ARR, __MinImpuls); //StdPrms.Temp[0];//
	TIM->CCR2 = CheckMinImpuls(CCR2, ARR, __MinImpuls);
	TIM->CCR3 = CheckMinImpuls(CCR3, ARR, __MinImpuls);
	
} //static __inline	void CalcGamma3(int Phase, int AMP, int ARR, TIM_TypeDef	*TIM)

static __inline	void CalcGamma4(float Phase, int AMP, int ARR, TIM_TypeDef *TIM) {
int G1,G2,G3;
int CCR1,CCR2,CCR3;
	
	/*	Расчитываем новые гаммы	-------------------------------------------------------------------------------------------

         G3   G1   G2	  G3 					     |   G2   G1        |   G1   G2        |   G2   G1        |   G1   G2        |   G2   G1        
A(CCR3)	_____-----------------------_____|_______----_______|__________________|__________________|_______----_______|__--------------__
B(CCR2) __________-------------__________|__--------------__|__--------------__|_______----_______|__________________|__________________	
C(CCR1)	______________-----______________|__________________|_______----_______|__--------------__|__--------------__|_______----_______
        V000 V100 V110 V111   				   |   V010 V110         V010 V011          V001 V011          V001 V101          V100 V101
	*/
	if (Phase < (Pi/3))						{	/* Угол 0..60, G1 - V100, G2 = V110 */
		G1 = AMP * sinf(Pi/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/

		CCR1	= ARR - G3;
		CCR2	=	ARR - (G2 + G3);													 
		CCR3	= ARR - (G1 + G2 + G3);		
															
	} else if (Phase < (2*Pi/3))	{	/* Угол 60..120, G1 - V110, G2 = V010 */
		Phase -= Pi/3;
		
		G1 = AMP * sinf(Pi/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/

		CCR1	= ARR - G3;														
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	=	ARR - (G1 + G3);													 

	}	else if (Phase < Pi)	{	/* Угол 120..180, G1 - V010, G2 = V011 */
		Phase -= 2*Pi/3;
		G1 = AMP * sinf(Pi/3 - Phase);
		G2 = AMP * sinf(Phase);			
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	=	ARR - (G2 + G3);													 
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	= ARR - G3;
		
	}	else if (Phase < 4*Pi/3)	{	/* Угол 180..240, G1 - V011, G2 = V001 */
		Phase -= Pi;
		G1 = AMP * sinf(Pi/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	=	ARR - (G1 + G3);													 
		CCR3	= ARR - G3;
		
	} else if (Phase < 5*Pi/3)	{	/* Угол 240..300, G1 - V001, G2 = V101 */
		Phase -= 4*Pi/3;
		G1 = AMP * sinf(Pi/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	= ARR - G3;
		CCR3	=	ARR - (G2 + G3);													 
		
	} else														{	/* Угол 300..360, G1 - V101, G2 = V100 */
		Phase -= 5*Pi/3;
		G1 = AMP * sinf(Pi/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								/* Половина нулевого состояния*/
		
		CCR1	=	ARR - (G1 + G3);													 
		CCR2	= ARR - G3; 
		CCR3	= ARR - (G1 + G2 + G3);		
	} 
	
//	CCR1 += Metro.Gamma1;	if (CCR1 < 0) {CCR1 = 0;} else if (CCR1 > ARR) {CCR1 = ARR;}
//	CCR2 += Metro.Gamma2; if (CCR2 < 0) {CCR2 = 0;} else if (CCR2 > ARR) {CCR2 = ARR;}
//	CCR3 += Metro.Gamma3; if (CCR3 < 0) {CCR3 = 0;} else if (CCR3 > ARR) {CCR3 = ARR;}

	
	TIM->CCR1 = CheckMinImpuls(CCR1, ARR, __MinImpuls); 
	TIM->CCR2 = CheckMinImpuls(CCR2, ARR, __MinImpuls);
	TIM->CCR3 = CheckMinImpuls(CCR3, ARR, __MinImpuls);

} //static __inline	void CalcGamma4(int Phase, int AMP, int ARR, TIM_TypeDef	*TIM)

static __inline  int CalcUgol() {									/* Расчет текущей фазы напряжения					*/
int x,y;		
	/* Расчитываем текущий фазовый угол	*/
	x = 2 * EvPrms.Uab + EvPrms.Ubc;
	y = 1 * EvPrms.Ubc;
	return (int)(atan2f(y*__sqrtf(3),x) / Pi * 32768.0f);
	
}	//static __inline  int CalcUgol()

static __inline  int CalcUgol3() {								/* Расчет текущей фазы напряжения					*/
int x,y;
int u1,u2,u3;	
	/* Расчитываем текущий фазовый угол	*/
	x = 2 * EvPrms.Uab + EvPrms.Ubc;
	y = 1 * EvPrms.Ubc;
	u1 = atan2f(y*__sqrtf(3),x) / Pi * 32768.0f;
	
	x =  -(2 * EvPrms.Uca + EvPrms.Ubc);
	y =  1 * EvPrms.Ubc;
	u2 = atan2f(y*__sqrtf(3),x) / Pi * 32768.0f;	
	
	x =  EvPrms.Uab - EvPrms.Uca;
	y = -EvPrms.Uab - EvPrms.Uca;
	u3 = atan2f(y*__sqrtf(3),x) / Pi * 32768.0f;		
	
	return ((u1 + u2 + u3) / 3);
	
}	//static __inline  int CalcUgol()

static __inline int SoftwarePLL(int Ua, int Ub, int Uc, int Theta) {
int Va;
int Vb;
	
int Vq;	

	/* Clark transform 
	| Va |               |    1      cos(2*pi/3)	cos(4*pi/3) | |Ua|               | sin(wt) |
	| Vb | = sqrt(2/3) * |    0      sin(2*pi/3)	sin(4*pi/3) |*|Ub| = sqrt(2/3) * | sin(wt) | * V
	| Vo |               | 1/sqrt(2)  1/sqrt(2)    1/sqrt(2)  | |Uc|               |    0    |

	cos(2*pi/3) = -0.5
	cos(4*pi/3) = -0.5

	sin(2*pi/3) =  sqrt(3)/2 
	sin(4*pi/3) = -sqrt(3)/2	
	*/

  Va = ((Ua - (Ub >> 1) - (Uc >> 1)) * 0xD106ull) >> 16 ;
	Vb = ((Ub - Uc) *0xB505ull ) >> 16;
	
	/* Park transform	

	Vq = -sin(theta)*Va + cos(theta)*Vb

	*/

	Theta += PrgData.IncPhaseCalc;
  Theta	&= 0xFFFF;
	
	Vq = -sinf(Pi * Theta / 0x8000) * Va + cosf(Pi * Theta / 0x8000) * Vb;

	PrgData.IncPhaseCalc = PI_REG(__SSAT(Vq,16), 0, &PrgData.BufFiltdPhase, &SavePrms.RegPLL);

	return Theta;//(Theta + PrgData.IncPhaseCalc) & 0xFFFF;
}



static __inline void CalcPWM(void) {							/* Расчет ШИМ-а														*/
static TIM_TypeDef TIM8x;

//	PrgData.Phase1 += 0x0667;
//	PrgData.Phase1 &= 0xFFFF;	

//	Metro.AMP1 = Metro.ARR * PrgData.TestAMP / 5000;
//	if (PrgData.AMP1 > PrgData.ARR) PrgData.AMP1 = PrgData.ARR;		
//	
//	CalcGamma3(PrgData.Phase1, PrgData.AMP1, PrgData.ARR, TIM8);

//	TIM1->CCR1 = TIM8->CCR1;
//	TIM1->CCR2 = TIM8->CCR2;
//	TIM1->CCR3 = TIM8->CCR3;	

//	return;	
	
	/* Расчитываем текущий фазовый угол	по сети	*/
  Metro.Ugol_n0	= PrgData.WorkUgol = CalcUgol();
	
	/* Подгоняем внутренний генератор к сети		*/
	if (SavePrms.EnaIntGen == 1)
	{
		Metro.dPhaseFlt	 		= AP_REG(Metro.Ugol_n0 - (Metro.PhaseCalc >> 16), SavePrms.T1dPhase, &Metro.BufFiltdPhase);
		Metro.IncPhaseCalc += (Metro.dPhaseFlt * SavePrms.K1dPhase);
		Metro.PhaseCalc		 += (Metro.IncPhaseCalc + Metro.dPhaseFlt * SavePrms.K2dPhase);
		
		if (Metro.IncPhaseCalc > (0x03363333 << 1)) Metro.IncPhaseCalc = (0x03363333 << 1);
		if (Metro.IncPhaseCalc < (0x03300000 << 1)) Metro.IncPhaseCalc = (0x03300000 << 1);
		
		PrgData.WorkUgol  = (Metro.PhaseCalc >> 16);	
	}
	else if (SavePrms.EnaIntGen == 2)
	{
		PrgData.PhaseCalc = (SoftwarePLL(EvPrms.Uab, EvPrms.Ubc, EvPrms.Uca, PrgData.PhaseCalc >> 16) << 16);
		PrgData.WorkUgol  = (Metro.PhaseCalc >> 16) - 0x1555ul;
	}
	
	PrgData.Phase1  = PrgData.WorkUgol - Metro.IncPhase1;
	PrgData.Phase1 &= 0xFFFF;
	
	PrgData.Phase2  = PrgData.WorkUgol - Metro.IncPhase2;
	PrgData.Phase2 &= 0xFFFF;	
	
	/* TIM8 - левый разъем - первый шкаф 																															*/
	if (ENATIMOffset > 0) 
	{
		CalcGamma3(PrgData.Phase1 , PrgData.AMP1, PrgData.ARR, &TIM8x, PrgData.GammaT8_1_fixcorrect, PrgData.GammaT8_3_fixcorrect);
		PrgData.TIM8_CCR1 = TIM8x.CCR1;
		PrgData.TIM8_CCR2 = TIM8x.CCR2;
		PrgData.TIM8_CCR3 = TIM8x.CCR3;
	} 
	else
	{	
		CalcGamma3(PrgData.Phase1 , PrgData.AMP1, PrgData.ARR, TIM8, PrgData.GammaT8_1_fixcorrect, PrgData.GammaT8_3_fixcorrect);
	}
	
	/* TIM1 - правый разъем	- второй шкаф																															*/
	CalcGamma3(PrgData.Phase2, PrgData.AMP2, PrgData.ARR, TIM1, PrgData.GammaT1_1_fixcorrect, PrgData.GammaT1_3_fixcorrect);

	//Для осциллографирования
	PrgData.TIM1_CCR1 = TIM1->CCR1;
	PrgData.TIM1_CCR2 = TIM1->CCR2;
	PrgData.TIM1_CCR3 = TIM1->CCR3;

	PrgData.OscilAMP1 = PrgData.AMP1 >> 1;
	PrgData.OscilAMP2 = PrgData.AMP2 >> 1;
	
	if (ENATIMOffset > 0) 
	{
		if ((TIM8->CR1 & TIM_CR1_DIR) == 0) 
		{
			TIM8->CCR1 = PrgData.TIM8_CCR1;
			TIM8->CCR2 = PrgData.TIM8_CCR2;
			TIM8->CCR3 = PrgData.TIM8_CCR3;
		}
	}
}

static __inline void APV(void) {
	/* Декрементируем счетчик */
	if (Metro.CounterAlarmAutoPause) Metro.CounterAlarmAutoPause--;

	/* Если АПВ не включено, то выходим	*/
	if (Metro.EnaAPV == 0) return;
	
	/* Декрементируем счетчик */
	if (Metro.CounterAlarmAutoClear) Metro.CounterAlarmAutoClear--;
	
	if (Metro.CounterAlarmAutoClear) return;
	
	/* Счетчик досчитал	---------------------------------------------------------------------	*/
	Metro.CounterAlarmAutoPause	= SavePrms.RefAlarmAutoPause;

	/* Сбрасываем защиту */
	if (EvPrms.AlarmWord1) {EvPrms.AlarmWord1 = 0; return;}

	/* Если защита сработала в состоянии неготовности, то больше ничего не делаем							*/
	if (Metro.EnaAPV == 1) {Metro.EnaAPV = 0; return;}
	
	/* Если мы в состоянии готовности и были включены, то проверяем резерв и включаемся				*/
	if (EvPrms.ReadyWord1 == 0) {
		if ((Metro.EnaAPV > 2)	&& (Metro.CANStatus < 5)) {Metro.NeedEnable |= 1;}
		Metro.EnaAPV = Metro.AutoZarad = 0;
		return;
	}

	/* Если мы не заряжены, то заряжаемся	*/
	if (EvPrms.ReadyWord1 & ~0x18) {Metro.EnaAPV = Metro.AutoZarad = 0;} else {Metro.AutoZarad = 1;}
	
} //static __inline void APV(void)

static __inline void ResChannel(void) {
static int AutoDisableCounter = 0;
	
	if (Delay(((SavePrms.MainCh == 0) && (StdPrms.Status >= 5) && (StdPrms.CANLink1 < 5) && (Metro.CANStatus >= 5)), 25 * 4, &AutoDisableCounter)) Metro.NeedDisable |= 1;

}

static __inline void IGBTStatus(int DigIn, int *Status) {
//static int IGBTStatCounterL = 0;
//static int IGBTStatCounterR = 0;
			 int i;
	
  if (DigIn & 0x4000) {PrgData.IGBTStatCounterR = __QADD(PrgData.IGBTStatCounterR,1);} else {	
	  for (i = 0; i < 6; i++) {
		  if ((PrgData.IGBTStatCounterR > (((50*i)+40)*MainCycle/1000)) && (PrgData.IGBTStatCounterR < (((50*i)+60)*MainCycle/1000))) {*Status |= (1ul<<(16+i)); break;}
		}
		PrgData.IGBTStatCounterR = 0;
	}	//else

  if (DigIn & 0x8000) {PrgData.IGBTStatCounterL = __QADD(PrgData.IGBTStatCounterL,1);} else {	
	  for (i = 0; i < 6; i++) {
		  if ((PrgData.IGBTStatCounterL > (((50*i)+40)*MainCycle/1000)) && (PrgData.IGBTStatCounterL < (((50*i)+60)*MainCycle/1000))) {*Status |= (1ul<<(22+i)); break;}
		}
		PrgData.IGBTStatCounterL = 0;
	}	//else	
} //static __inline void IGBTStatus(int DigIn, int *Status)

static __inline void CopyADCBuffer(void) {
int i;
short *s;
short *d;
short *e;	

	/* Копируем массив измеренных данных и внутреннего АЦП	*/
	s = &PrgData.ExtADCArray[0];
	d = e = &PrgData.ExtADCArray[16*ADCxCycle];
	while (s != e) {*d ++ = *s++;}
	
	s = &StdPrms.IntADCData[0];
	d = e = &StdPrms.IntADCData[4*ADCxCycle];
	while (s != e) {*d ++ = *s++;}
	
}

void DMA2_Stream4_IRQHandler() {
int i;
	
	if (ENATIMOffset > 0) 
	{	
		TIM8->CCR1 = PrgData.TIM8_CCR1;
		TIM8->CCR2 = PrgData.TIM8_CCR2;
		TIM8->CCR3 = PrgData.TIM8_CCR3;
	}
	
	/* Clear DMA interrupr status bits ------	*/
	DMA2->HIFCR	= (0x3Dul << 0);																								

	LedToggle();

	/* Копируем полученные данные от АЦП в рабочие буферы	*/
	CopyADCBuffer();
	
	/* Счетчик циклов	-----------------------------------	*/
	StdPrms.CycleCounter++;
	
	/*	Считываем часы реального времени ----------------	*/
	ReadRTC(NotWaitClock,&EvPrms.RTC_Date,&EvPrms.RTC_Time);	
	
	/* Нормализуем сигналы от АЦП	*/
	/* После завершения расчета - в стандартных переменных будут последние значения - аналогично старому алгоритму	*/
	for (i = 0; i < ADCxCycle; i++)							/* Рассчитываем аналоговые значения	*/ 
	{
		NormIntADC(4, i);
		NormExtADC(16, i);

		CalcSensUdc(i);														/* Расчет усредненного Udc на периоде ШИМ														*/
		CalcSensU(i);															/* Расчет напряжения																								*/
		CalcSensI(i);															/* Расчет токов																											*/

		/* Расчитываем величины -----	*/
		CalcSensPQ();
		
		/* Встроенный осциллограф ---	*/
		Oscil();
		
	}
	
	Metro.RMSData = CalcRMS(Metro.CalibrData);
	/*Входы / выходы	-----------	*/
	DigInOut();
	CalcDigIn();
	
	/* Защиты	-------------------	*/
	EvPrms.AlarmWord1 |= Alarms(EvPrms.AlarmWord1);
	/* --------------------------	*/
	switch (StdPrms.Status)	{
		case  1:	NotReady(); break;
		case  2:	OffReady(); break;
		case  5:	Working();	break;
//	case  6:  StandBy();	break;
//	case  7:  DiodeMode();break;
		default:	StdPrms.Status = 1;	break;
	} //switch (StdPrms.Status)

	/* Светодиоды пульта --------	*/
	Leds = CalcLeds();
	
	CalcStatus();
	
	/* Расчет длительностей ШИМ-а	*/
	CalcPWM();

	/* Выходы	-------------------	*/
	CalcDigOut();
	
	/* Сохранение параметров и журнал событий	*/
  SaveParamsProc();
//	/* Встроенный осциллограф ---	*/
//	Oscil();
	
	LedToggle(); 

}


/* ---------------------------------------------------------------------------------------------------------------------------------------- */

void InitParams(int ParamsLoaded)	{
int i;
	Metro.Mode = 1;
	Metro.TestAMP	= 100;
	
	StdPrms.DigIn1Or 	 = StdPrms.DigIn2Or 	= StdPrms.DigIn3Or   = StdPrms.DigIn4Or   = 0x0000;
	StdPrms.DigOut1Or  = StdPrms.DigOut2Or  = StdPrms.DigOut3Or  = StdPrms.DigOut4Or  = 0x0000;
	
	StdPrms.DigIn1And  = StdPrms.DigIn2And	= StdPrms.DigIn3And  = StdPrms.DigIn4And  = 0xFFFF;
	StdPrms.DigOut1And = StdPrms.DigOut2And = StdPrms.DigOut3And = StdPrms.DigOut4And = 0xFFFF;

	Metro.CalibrData = &StdPrms.ADCDataNorm[_Ia1];
	
//	for (i = 0; i < 6; i++) {Metro.T[i] = 35900;}					/* 25 °C */
	
	if (ParamsLoaded) {
		for (i = 0; i < 8; i++) {
			/* Внутренний АЦП	*/
			SavePrms.ADCOffs[i+16] = 0x4000;
			SavePrms.ADCK[i+16]    = 0xFFFF;
			/* Внешний АЦП		*/
			((unsigned int *)SavePrms.ADCOffs)[i] = 0;
			((unsigned int *)SavePrms.ADCK)[i]    = 0xFFFFFFFF;
		}
		
		SavePrms.ADCK[_Uab]  = SavePrms.ADCK[_Ubc]  = SavePrms.ADCK[_Uca]  = 13333ul * 220 / 52.3; /*R1 = 220 / Rn = 200*/
		SavePrms.ADCK[_Udc1] = SavePrms.ADCK[_Udc2] = 40000ul * 220 / 200;

		SavePrms.ADCK[_Ia1]  = SavePrms.ADCK[_Ib1]  = SavePrms.ADCK[_Ic1] = 10 * 4000 / 5.1;			/* 100 * Ksens = 5000 / Rn = 30.1	*/
		SavePrms.ADCK[_Ia2]  = SavePrms.ADCK[_Ib2]  = SavePrms.ADCK[_Ic2] = 10 * 4000 / 5.1;			/* 100 * Ksens / Rn	*/
		SavePrms.ADCK[_Ia3]  = SavePrms.ADCK[_Ib3]  = SavePrms.ADCK[_Ic3] = 10 * 4000 / 5.1;			/* 100 * Ksens = 5000 / Rn = 30.1	*/
		SavePrms.ADCK[_Ia4]  = SavePrms.ADCK[_Ib4]  = SavePrms.ADCK[_Ic4] = 10 * 4000 / 5.1;			/* 100 * Ksens / Rn	*/
		
		SavePrms.RefMtzI = 8000;
		SavePrms.RefMtzT = 4;

		SavePrms.RefUdcmaxU = 5000;
		SavePrms.RefUdcmaxT = 4;

		SavePrms.RefUdcminU = 1000;
		SavePrms.RefUdcminT = 4;
		
		SavePrms.RefUdcRazrad = 7000;		//700 B

		SavePrms.RefSUminU 	= 3000;
		SavePrms.RefSUminT 	= 4;

		SavePrms.RefSUmaxU 	= 5000;
		SavePrms.RefSUmaxT 	= 4;
		
		SavePrms.RefMtzIVD = 1000;
		SavePrms.RefMtzTVD = 40000;		
		
		SavePrms.RefTempr		= 800;
		
		SavePrms.ParamFiltSU  = ((0x3E80000 / MainCycle) / 40);
		SavePrms.ParamFiltI1  = ((0x3E80000 / MainCycle) / 40);
		SavePrms.ParamFiltI2  = ((0x3E80000 / MainCycle) / 40);
		SavePrms.ParamFiltP1  = ((0x3E80000 / MainCycle) / 5);
		SavePrms.ParamFiltP2  = ((0x3E80000 / MainCycle) / 5);
		SavePrms.ParamFiltQ1  = ((0x3E80000 / MainCycle) / 5);
		SavePrms.ParamFiltQ2  = ((0x3E80000 / MainCycle) / 5);
		SavePrms.ParamFiltUdc = ((0x3E80000 / MainCycle) / 5);
		
		SavePrms.RefUdcZarad	= 5000;			//500 В
		SavePrms.RefSUZarad		= 3500;			//350 В
		SavePrms.KM3Active		= 4000;			//1 сек
		SavePrms.KM3Pause			= 6*4000;		//6 сек
		SavePrms.RefDeltaUdc	= 100;			//10 В
		SavePrms.RefUdcZero		= 50;				//5 В
		SavePrms.RefWorkKM1		= 60 * MainCycle;  //60 секунд
		SavePrms.RefCountRazrad	=	100*4;	//100 мс
		
		SavePrms.RefUdc	= 750;//6500;						//650 В
		SavePrms.RefQ		= 0;
		SavePrms.RefFi1	= 0xF666;								//	-13.5 град				//0xFB32;					//-6.75 град
		
		SavePrms.SoftStartUdc = 0x1000;		//25 B/c
		
		SavePrms.RegUdc.Kp = 0x0200;
		SavePrms.RegUdc.Ti = 0x0129;
		SavePrms.RegQ.Kp   = 0x0500;
		SavePrms.RegQ.Ti   = 0x0010;
		
		
		for (i=0; i<8; i++) {SavePrms.UartParams[i] = 0x01010400;}	/* Addr = 1, 115200, odd, 1 stop-bit	*/
		
		SavePrms.Xn[0] = 300;							SavePrms.Tn[0] = 1100;
		SavePrms.Xn[1] = 500;							SavePrms.Tn[1] = 1080;
		SavePrms.Xn[2] = 1300;						SavePrms.Tn[2] = 1030;
		SavePrms.Xn[3] = 2700;						SavePrms.Tn[3] = 980;
		SavePrms.Xn[4] = 10300;						SavePrms.Tn[4] = 780;
		SavePrms.Xn[5] = 11700;						SavePrms.Tn[5] = 720;
		SavePrms.Xn[6] = 19500;						SavePrms.Tn[6] = 600;
		SavePrms.Xn[7] = 22400;						SavePrms.Tn[7] = 500;
		SavePrms.Xn[8] = 28100;						SavePrms.Tn[8] = 400;
		SavePrms.Xn[9] = 33000;						SavePrms.Tn[9] = 300;
		SavePrms.Xn[10] = 35900;					SavePrms.Tn[10] = 250;
		SavePrms.Xn[11] = 40400;					SavePrms.Tn[11] = 130;
		SavePrms.Xn[12] = 43000;					SavePrms.Tn[12] = 80;
		SavePrms.Xn[13] = 45800;					SavePrms.Tn[13] = 0;
		
		SavePrms.RefWorkRazrad  =  5 * 4000;
		SavePrms.RefPauseRazrad	= 60 * 4000;
		
		SavePrms.RefStandByEnaT = 120 * 4000;
		SavePrms.RefStandByIvdI = 20 * 10;
		SavePrms.RefStandByIvdT = 800;
		
		SavePrms.RefAlarmAutoClear = 5 * 4000;
		SavePrms.RefAlarmAutoPause = 15 * 4000;
		
		SavePrms.DefMode = 0x01;
		SavePrms.EnaAuto2ndBridge = 0;
		SavePrms.RefTEna2ndBridge =  2 * 4000;
		SavePrms.RefTDis2ndBridge	= 10 * 4000;
		
		SavePrms.RefPEna2ndBridge = 200 * 14.095465572f + 0.5f;
		SavePrms.RefPDis2ndBridge = 100 * 14.095465572f + 0.5f;
		
		SavePrms.BridgeUgolCorrect = 0x1555;
		SavePrms.EnaRegParamsCorrect = 0;
		
		SavePrms.MaskAlarmKMsOffReady = 0x003F6E8C;
		SavePrms.MaskAlarmKMsOffWork  = 0x003F6C00;
		
		SavePrms.RefPEnaDiodeMode = 50 * 14.095465572f + 0.5f;		/* Уставка P включения диодного режима													*/
		SavePrms.RefPDisDiodeMode = 10 * 14.095465572f + 0.5f;		/* Уставка P отключения диодного режима													*/
		SavePrms.RefTEnaDiodeMode = 400;													/* Выдержка времени на включение диодного режима								*/
		SavePrms.RefTDisDiodeMode = 400;													/* Выдержка времени на отключение диодного режима								*/
		SavePrms.RefUdcDisDiodeMode = 6000;												/* Уставка Udc отключения диодного режима												*/
		SavePrms.EnaDiodeMode = 0;																/* Разрешение диодного режима																		*/

		SavePrms.RefIHighFreq = 1000;
		SavePrms.RefTHighFreq = 4;
	}
	
	Metro.MTZIa1Counter = Metro.MTZIb1Counter = Metro.MTZIc1Counter = SavePrms.RefMtzT;
	Metro.MTZIa2Counter = Metro.MTZIb2Counter = Metro.MTZIc2Counter = SavePrms.RefMtzT;
	Metro.Udc1MaxCounter = Metro.Udc2MaxCounter = SavePrms.RefUdcmaxT;
	Metro.Udc1MinCounter = Metro.Udc2MinCounter = SavePrms.RefUdcminT;
	Metro.SUMinCounter = SavePrms.RefSUminT;
	Metro.SUMaxCounter = SavePrms.RefSUmaxT;

	Metro.MTZI1CounterVD = Metro.MTZI2CounterVD = SavePrms.RefMtzTVD;
	
}



void TIM1_Init(int freq) {
TIM_TypeDef	*TIM = TIM1;	

	/*Включаем такстирование таймера TIM1	*/
	RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
	
	TIM->PSC 		= 0;
	/* Таймер считает от 0 до TIM->ARR (срабатывает overflow),																				*/
	/* и потом обратно до 0 (срабатывает underflow)	=> Период тайиера = (ARR - 1) * 2									*/
	/* freq = (APB2CLK * 2) / (ARR * 2) => ARR = APB2CLK / freq																				*/
	TIM->ARR 		= APB2CLK / freq;																												

	/* Регистры сравнения																																							*/
	TIM->CCR1		= TIM->ARR + 1;
	TIM->CCR2		= TIM->ARR + 1;
	TIM->CCR3		= TIM->ARR + 1;
	TIM->CCR4 	= TIM->ARR + 1;

  /*Для всех четырех каналов используются режим PWM2:																								*/
	/*PWM mode 2 - In upcounting, channel x is inactive as long as TIMx_CNT < TIMx_CCRx else active. 	*/
	/*In downcounting, channel x is active as long as TIMx_CNT>TIMx_CCRx else inactive.								*/
	TIM->CCMR1	= TIM_CCMR1_OC1M_PWM2 | TIM_CCMR1_OC1PE | TIM_CCMR1_OC2M_PWM2 | TIM_CCMR1_OC2PE;
	TIM->CCMR2	= TIM_CCMR2_OC3M_PWM2 | TIM_CCMR2_OC3PE | TIM_CCMR2_OC4M_PWM2 | TIM_CCMR2_OC4PE;
	/*Регистры CCRx - буферированы (биты TIM_CCMRy_OCxPE установлены),																*/
	/*Данные в рабочие регистры CCRx записываются во время undeflow и overflow (два раза за период)		*/
	/*Чтобы обновлялись через раз (фактически 1 раз за период), устанавливаем TIMx_RCR= 1							*/
	/*Непосредственно в счетчик данные из TIM->RCR записываются по событию UPDATE											*/
	TIM->RCR		= 1;

	/*Для канала CH4 аварийный уровень - высокий, для остальных каналов (CH1,CH1N...CH3,CH3N)-высокий	*/
	/*TIM1 - включает TIM8																																						*/
	TIM->CR2		= TIM_CR2_OIS4 | 
								TIM_CR2_OIS3 |
								TIM_CR2_OIS3N|
								TIM_CR2_OIS2 |
								TIM_CR2_OIS2N|
								TIM_CR2_OIS1 |
								TIM_CR2_OIS1N|
								TIM_CR2_MMS_Enable;			

	/*DeadTime	= 5 us; OSSR, OSSI = 0 - выходы в Z-состоянии (не выдаются), когда выключены					*/
	TIM->BDTR		= SetDB | TIM_BDTR_BKE | TIM_BDTR_BKP;

	/*Включаем каналы: CH1,CH1N...CH3,CH3N - активны низким уровнем, CH4 - активен низким уровнем			*/
	TIM->CCER		=	0x3FFF;

	/*Вызываем событие UPDATE																																					*/
	TIM->EGR		= TIM_EGR_UG;

	/*Прерывание Update																																								*/
//TIM->DIER 	= TIM_DIER_UIE;
	TIM->DIER 	= TIM_DIER_BIE;
											
//TIM->BDTR	 |= TIM_BDTR_MOE;
	TIM->CR1		= (TIM_CR1_CEN | TIM_CR1_ARPE | TIM_CR1_CMS_Center3);	

	NVIC_SetPriority(TIM1_UP_TIM10_IRQn, TIM1_UP_TIM10_Prty);
	NVIC_EnableIRQ(TIM1_UP_TIM10_IRQn);

	NVIC_SetPriority(TIM1_BRK_TIM9_IRQn, TIM1_BRK_TIM9_Prty);
	NVIC_EnableIRQ(TIM1_BRK_TIM9_IRQn);

	/* ACT245 OE	PG6	*/
	PeriphBB(GPIOG->ODR, 6) = 0;
}	

void TIM8_Init(int freq) {
TIM_TypeDef	*TIM = TIM8;	

	/*Включаем такстирование таймера TIM8	*/
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN;
	
	TIM->PSC 		= 0;
	/* Таймер считает от 0 до TIM->ARR (срабатывает overflow),																				*/
	/* и потом обратно до 0 (срабатывает underflow)	=> Период тайиера = (ARR - 1) * 2									*/
	/* freq = (APB2CLK * 2) / (ARR * 2) => ARR = APB2CLK / freq																				*/
	TIM->ARR 		= APB2CLK / freq;																												

	/* Регистры сравнения																																							*/
	TIM->CCR1		= TIM->ARR + 1;
	TIM->CCR2		= TIM->ARR + 1;
	TIM->CCR3		= TIM->ARR + 1;
	TIM->CCR4 	= TIM->ARR + 1;

  /*Для всех четырех каналов используются режим PWM2:																								*/
	/*PWM mode 2 - In upcounting, channel x is inactive as long as TIMx_CNT < TIMx_CCRx else active. 	*/
	/*In downcounting, channel x is active as long as TIMx_CNT>TIMx_CCRx else inactive.								*/
	TIM->CCMR1	= TIM_CCMR1_OC1M_PWM2 | TIM_CCMR1_OC1PE | TIM_CCMR1_OC2M_PWM2 | TIM_CCMR1_OC2PE;
	TIM->CCMR2	= TIM_CCMR2_OC3M_PWM2 | TIM_CCMR2_OC3PE | TIM_CCMR2_OC4M_PWM2 | TIM_CCMR2_OC4PE;
	/*Регистры CCRx - буферированы (биты TIM_CCMRy_OCxPE установлены),																*/
	/*Данные в рабочие регистры CCRx записываются во время undeflow и overflow (два раза за период)		*/
	/*Чтобы обновлялись через раз (фактически 1 раз за период), устанавливаем TIMx_RCR= 1							*/
	/*Непосредственно в счетчик данные из TIM->RCR записываются по событию UPDATE											*/
	TIM->RCR		= 1;
	
	/*Для канала CH4 аварийный уровень - высокий, для остальных каналов (CH1,CH1N...CH3,CH3N)-высокий	*/
	/*TIM8 запускает встроенное АЦП	*/
	TIM->CR2		= TIM_CR2_OIS4 | 
								TIM_CR2_OIS3 |
								TIM_CR2_OIS3N|
								TIM_CR2_OIS2 |
								TIM_CR2_OIS2N|
								TIM_CR2_OIS1 |
								TIM_CR2_OIS1N|
								TIM_CR2_MMS_Update;

	/*DeadTime	= 5 us; OSSR, OSSI = 0 - выходы в Z-состоянии (не выдаются), когда выключены					*/
	TIM->BDTR		= SetDB | TIM_BDTR_BKE | TIM_BDTR_BKP;

	/*Включаем каналы: CH1,CH1N...CH3,CH3N - активны низким уровнем, CH4 - активен низким уровнем			*/
	TIM->CCER		=	0x3FFF;

	/*Вызываем событие UPDATE																																					*/
	TIM->EGR		= TIM_EGR_UG;
	
	/*Прерывание Update																																								*/
//TIM->DIER 	= TIM_DIER_UIE;
	TIM->DIER 	= TIM_DIER_BIE;

	/*TIM8 включается от TIM1																																					*/
	TIM->SMCR		= TIM_SMCR_SMS_Gate;

//TIM->BDTR	 |= TIM_BDTR_MOE;

	//Смещение коммутации						/*160216*/
	if (ENATIMOffset == 2) {TIM->CNT 		= TIM->ARR -  1;} 
		else if (ENATIMOffset == 4) {TIM->CNT 		= TIM->ARR >> 1;}
	
	TIM->CR1		= (TIM_CR1_CEN | TIM_CR1_ARPE | TIM_CR1_CMS_Center3);	

	NVIC_SetPriority(TIM8_UP_TIM13_IRQn, TIM8_UP_TIM13_Prty);
	NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
	
  NVIC_SetPriority(TIM8_BRK_TIM12_IRQn, TIM8_BRK_TIM12_Prty);
  NVIC_EnableIRQ(TIM8_BRK_TIM12_IRQn);

	/* ACT245 OE	PG7	*/	
	PeriphBB(GPIOG->ODR, 7) = 0;
	
	/*Временно*/
	Metro.AMP1 = Metro.ARR = TIM->ARR;
	Metro.Phase1 = 0;
	Metro.IncPhase1 = 0;

}


void TIM8_UP_TIM13_IRQHandler() {
	PeriphBB(TIM8->SR, TIM_SR_UIF_bit) = 0;
	PeriphBB(TIM8->DIER,TIM_DIER_BIE_bit) = ((Metro.Mode & 0x0002) >> 1);
	PeriphBB(TIM8->BDTR,TIM_BDTR_MOE_bit) = ((Metro.Mode & 0x0002) >> 1);
	PeriphBB(TIM8->DIER,TIM_DIER_UIE_bit) = 0;
}

void TIM1_UP_TIM10_IRQHandler() {
	PeriphBB(TIM1->SR, TIM_SR_UIF_bit) = 0;	
	PeriphBB(TIM1->DIER,TIM_DIER_BIE_bit) = ((Metro.Mode & 0x0001) >> 0);
	PeriphBB(TIM1->BDTR,TIM_BDTR_MOE_bit) = ((Metro.Mode & 0x0001) >> 0);
	PeriphBB(TIM1->DIER,TIM_DIER_UIE_bit) = 0;
}


void TIM8_BRK_TIM12_IRQHandler() {
	PeriphBB(TIM1->BDTR, TIM_BDTR_MOE_bit) = 0;
 	PeriphBB(TIM8->DIER, TIM_DIER_BIE_bit) = 0;
	PeriphBB(TIM8->SR, TIM_SR_BIF_bit) = 0;
	Metro.ErrorTIM8Flag = 1;
}	

void TIM1_BRK_TIM9_IRQHandler() {
	PeriphBB(TIM8->BDTR, TIM_BDTR_MOE_bit) = 0;
	PeriphBB(TIM1->DIER,TIM_DIER_BIE_bit) = 0;
	PeriphBB(TIM1->SR, TIM_SR_BIF_bit) = 0;
	Metro.ErrorTIM1Flag = 1;
}

void TIM2_TIM5_Init(void) {
	TIM_TypeDef	*TIM = TIM2;	
	
	RCC->APB1ENR |=	(RCC_APB1ENR_TIM2EN | RCC_APB1ENR_TIM5EN);
	/*	Частота T2 и T5 = APB1CLK * 2 = 84МГц 							*/
	TIM->CNT = 0;
	TIM->PSC = 0;
	TIM->ARR = 0xFFFFFFFF;
	
	TIM->CCMR1 = TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0 | TIM_CCMR1_IC1F | TIM_CCMR1_IC2F;
	TIM->CCMR2 = TIM_CCMR2_CC3S_0 | TIM_CCMR2_CC4S_0 | TIM_CCMR2_IC3F | TIM_CCMR2_IC4F;
	
	TIM->CCER  = TIM_CCER_CC1E | TIM_CCER_CC2E | TIM_CCER_CC3E;
	TIM->DIER  = TIM_DIER_CC1IE | TIM_DIER_CC2IE | TIM_DIER_CC3IE;

	TIM->CR1  |= TIM_CR1_CEN;
	
	NVIC_SetPriority(TIM2_IRQn, TIM2_Prty);
	NVIC_EnableIRQ(TIM2_IRQn);

	/* Настраиваем таймер T5	------------------------------ */
	TIM = TIM5;

	TIM->CNT = 0;
	TIM->PSC = 0;
	TIM->ARR = 0xFFFFFFFF;
	
	TIM->CCMR1 = TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0 | TIM_CCMR1_IC1F | TIM_CCMR1_IC2F;
	TIM->CCMR2 = TIM_CCMR2_CC3S_0 | TIM_CCMR2_CC4S_0 | TIM_CCMR2_IC3F | TIM_CCMR2_IC4F;
	
	TIM->CCER  = TIM_CCER_CC1E | TIM_CCER_CC2E | TIM_CCER_CC3E;
	TIM->DIER  = TIM_DIER_CC1IE | TIM_DIER_CC2IE | TIM_DIER_CC3IE;

	TIM->CR1  |= TIM_CR1_CEN;
	
	NVIC_SetPriority(TIM5_IRQn, TIM5_Prty);
	NVIC_EnableIRQ(TIM5_IRQn);
}

void TIM2_IRQHandler(void) {
static unsigned int Ch1, Ch2, Ch3;
	
	if (TIM2->SR & TIM_SR_CC1IF) {			/* Прерывание от первого канала захвата		*/
		TIM2->SR &= ~TIM_SR_CC1IF;				/* Сбрасываем бит 											*/
		if (TIM2->CCER & TIM_CCER_CC1P) {
			TIM2->CCER &= ~TIM_CCER_CC1P;
			Metro.T[0] = (unsigned int)TIM2->CCR1 - Ch1;
		}	else {
			TIM2->CCER |= TIM_CCER_CC1P;
			Ch1 = TIM2->CCR1;
		} //if (TIM2->CCER & TIM_CCER_CC1P)	
	} //if (TIM2->SR & TIM_SR_CC1IF)
	
	if (TIM2->SR & TIM_SR_CC2IF) {			/* Прерывание от второго канала захвата		*/
		TIM2->SR &= ~TIM_SR_CC2IF;				/* Сбрасываем бит 											*/
		if (TIM2->CCER & TIM_CCER_CC2P) {
			TIM2->CCER &= ~TIM_CCER_CC2P;
			Metro.T[1] = (unsigned int)TIM2->CCR2 - Ch2;
		}	else {
			TIM2->CCER |= TIM_CCER_CC2P;
			Ch2 = TIM2->CCR2;
		} //if (TIM2->CCER & TIM_CCER_CC2P)	
	}
	
	if (TIM2->SR & TIM_SR_CC3IF) {			/* Прерывание от третьего канала захвата	*/
		TIM2->SR &= ~TIM_SR_CC3IF;				/* Сбрасываем бит 												*/
		if (TIM2->CCER & TIM_CCER_CC3P) {
			TIM2->CCER &= ~TIM_CCER_CC3P;
			Metro.T[2] = (unsigned int)TIM2->CCR3 - Ch3;
		}	else {
			TIM2->CCER |= TIM_CCER_CC3P;
			Ch3 = TIM2->CCR3;
		} //if (TIM2->CCER & TIM_CCER_CC3P)	
	}
} //void TIM2_IRQHandler

void TIM5_IRQHandler(void) {
static unsigned int Ch1, Ch2, Ch3;
	
	if (TIM5->SR & TIM_SR_CC1IF) {			/* Прерывание от первого канала захвата		*/
		TIM5->SR &= ~TIM_SR_CC1IF;				/* Сбрасываем бит 											*/
		if (TIM5->CCER & TIM_CCER_CC1P) {
			TIM5->CCER &= ~TIM_CCER_CC1P;
			Metro.T[3] = (unsigned int)TIM5->CCR1 - Ch1;
		}	else {
			TIM5->CCER |= TIM_CCER_CC1P;
			Ch1 = TIM5->CCR1;
		} //if (TIM5->CCER & TIM_CCER_CC1P)	
	} //if (TIM5->SR & TIM_SR_CC1IF)
	
	if (TIM5->SR & TIM_SR_CC2IF) {			/* Прерывание от второго канала захвата		*/
		TIM5->SR &= ~TIM_SR_CC2IF;				/* Сбрасываем бит 											*/
		if (TIM5->CCER & TIM_CCER_CC2P) {
			TIM5->CCER &= ~TIM_CCER_CC2P;
			Metro.T[4] = (unsigned int)TIM5->CCR2 - Ch2;
		}	else {
			TIM5->CCER |= TIM_CCER_CC2P;
			Ch2 = TIM5->CCR2;
		} //if (TIM5->CCER & TIM_CCER_CC2P)	
	}
	
	if (TIM5->SR & TIM_SR_CC3IF) {			/* Прерывание от третьего канала захвата	*/
		TIM5->SR &= ~TIM_SR_CC3IF;				/* Сбрасываем бит 												*/
		if (TIM5->CCER & TIM_CCER_CC3P) {
			TIM5->CCER &= ~TIM_CCER_CC3P;
			Metro.T[5] = (unsigned int)TIM5->CCR3 - Ch3;
		}	else {
			TIM5->CCER |= TIM_CCER_CC3P;
			Ch3 = TIM5->CCR3;
		} //if (TIM5->CCER & TIM_CCER_CC3P)	
	}
} //void TIM5_IRQHandler




