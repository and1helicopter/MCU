#include <stdio.h>
#include <Math.h>

#include "stm32f4xx.h"
#include "global.h"

#include "menu.h"

void AlarmList(int ErrorCode, int *ViewStr) {
int i;
int CountViewStr = 0;
int RealViewStr  = 0;
int MaxViewStr   = 0;

  if (*ViewStr < 0) {*ViewStr = 0;}

  for (i = 0; i < 32; ) {
		if (ErrorCode & (1ul << i++)) { 
			CountViewStr++; 
			MaxViewStr = i;
			if (CountViewStr == *ViewStr) {RealViewStr = i;}
		}//if
	}  //for

  if (*ViewStr > CountViewStr) {*ViewStr = CountViewStr; RealViewStr = MaxViewStr;}

  switch (RealViewStr) {
		case  0:	{lcdout(16,16,"ЗАЩИТЫ         }");} break;
		case 14:
		case  1:	{lcdout(16,16,">МТЗ 1          ");} break;
		case 15:
		case  2:	{lcdout(16,16,">МТЗ 2          ");} break;
		
		case  3:	{lcdout(16,16,">Udc макс.      ");} break;
		case  4:	{lcdout(16,16,">Udc мин.       ");} break;
		case  5:	{lcdout(16,16,">TIM1 BKIN      ");} break;
		case  6:	{lcdout(16,16,">TIM8 BKIN      ");} break;
		case  7:  {lcdout(16,16,">Ошибка синхрон.");} break;
		case  8:  {lcdout(16,16,">Низкое Uсинхр. ");} break;
		case  9:  {lcdout(16,16,">Высокая тем-ра ");} break;
		case 10:  {lcdout(16,16,">Высокое Uсинхр.");} break;
		case 11:  {lcdout(16,16,">МТЗ 3          ");} break;
		case 12:  {lcdout(16,16,">МТЗ 4          ");} break;
		case 13:  {lcdout(16,16,">Защита резистор");} break;
		case 16:  {lcdout(16,16,">Высокочаст.ток ");} break;

		case 17:	{lcdout(16,16,">Отказ KM1      ");} break;
		case 18:	{lcdout(16,16,">Неуспеш.зарядDС");} break;
		case 19:	{lcdout(16,16,">Неуспеш.зарядАС");} break;
		
		case 32:	{lcdout(16,16,">Аварийный СТОП ");} break;	
	
		default:	{lcdout(16,16,"Неизвестн.защита");} break;
	} //switch
}

void ViewAlarmList(int ErrorCode) {
int PultKeyb = 0;
int ViewStr = 0;

ClearPultKeyb();
while (1) {
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);			/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
	ClearScreen();
	
	switch (PultKeyb & (0x7F & ~K_Shift)) {
		case K_Up:		ViewStr--; break;
		case K_Down:	ViewStr++; break;
		case K_Left:	return;
	} /* switch (PultKeyb & 0x7F) */
	
	lcdout(0,16,"СПИСОК ЗАЩИТ   ");
	AlarmList(ErrorCode, &ViewStr);
	
	while (PultRefresh());
	} /* while (1) */
}	/* void Display() */


extern OscilCmnd_type    *ptrOscilCmnd;
extern OscilConfig_type  *ptrSavedOscilConfig;

void Monitor(struct EventLog_type *DispPrms) {
static int ViewStr = 1;	
int i = 0;
int Inc = 0;
int Pause = 0;
int Repeat = 0;	
int PultKeyb = 0;
int WorkViewStr = 0;

static int AlarmStrNum = 0 ;
  
int Memoryindex = 0; 
	
ClearPultKeyb();
while (1) {
	/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);

	switch (PultKeyb & (0x7F & ~K_Shift)) {
    case K_Plus:  {Memoryindex++; Pause = 0;}break;
    case K_Minus: {Memoryindex--; Pause = 0;}break;
		case K_Up:		Inc = -1; break;
		case K_Down:	Inc = +1; break;
		case K_Ena:		{Metro.NeedEnable  |= 1;} break;
		case K_Dis:		{Metro.NeedDisable |= 1; if ((PultKeyb & K_Shift) /*&& (StdPrms.Status == 5)*/) {Metro.CANCmndTx |= 0x0001;}} break;
		case K_Left:	return;
		case K_Enter:	{if (ViewStr == AlarmStrNum) ViewAlarmList(DispPrms->AlarmWord1); else Metro.OscilCmnd.OscilNeed = 1;} break;
	} /* switch (PultKeyb & 0x7F) */

  
  
	if (Pause == 0) {
		Pause = 4;
		ClearScreen();					/* Очищаем экран пульта */

		ViewStr += Inc;

		Inc = 0;
		
		if (ViewStr < 1) ViewStr = 1;

		do {
			WorkViewStr = ViewStr;
			
		
			if (!(--WorkViewStr)) {lcdoutDT3(DispPrms->RTC_Date, DispPrms->RTC_Time, DispPrms->RTC_SSC); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"TIM1->CCR1         ");		lcdouthex8(16,TIM1->CCR1); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"TIM1->CCR2         ");		lcdouthex8(16,TIM1->CCR2); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"TIM1->CCR3         ");		lcdouthex8(16,TIM1->CCR3); break;}	
			if (!(--WorkViewStr)) {lcdout(0,16,"Каналы           ");   lcdout(16,16,ptrSavedOscilConfig->OscilChNumName[Memoryindex]); break;}
			if (!(--WorkViewStr)) 
      {
        lcdout(0,16,"Осцилл           ");   
        lcdouttextl(8,PrgData.OscilCmnd.OscilLenght,0,""); 
        lcdouttextl(16,PrgData.OscilCmnd.OscilHistoryCount, 0,"");
        lcdouttextl(24,PrgData.OscilCmnd.OscilRemainingCount, 0,"");         
      break;}

      
      
			if (!(--WorkViewStr)) {lcdout(0,16,"Статус IGBT 1    ");   lcdouttextl(16, DispPrms->IGBTStat1[0],0,""); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"Статус IGBT 2    ");   lcdouttextl(16, DispPrms->IGBTStat2[0],0,""); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"Статус IGBT 3    ");   lcdoutBIN(16, DispPrms->IGBTStat3[0]); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"Статус IGBT 4    ");   lcdoutBIN(16, DispPrms->IGBTStat4[0]); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет. входы 1");   lcdoutBIN(16, DispPrms->DigInput1); break;}
//			if (!(--WorkViewStr)) {lcdout(0,22,"IGBTStatCounterL      "); lcdouttextl(22, PrgData.IGBTStatCounterL, 0, ""); break;}
//			if (!(--WorkViewStr)) {lcdout(0,22,"IGBTStatCounterR      "); lcdouttextl(22, PrgData.IGBTStatCounterR, 0, ""); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет. входы 2");   lcdoutBIN(16, DispPrms->DigInput2); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет. входы 3");   lcdoutBIN(16, DispPrms->DigInput3); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет. входы 4");   lcdoutBIN(16, DispPrms->DigInput4); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет.выходы 1");   lcdoutBIN(16, DispPrms->DigOutPut1); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет.выходы 2");   lcdoutBIN(16, DispPrms->DigOutPut2); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет.выходы 3");   lcdoutBIN(16, DispPrms->DigOutPut3); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"Дискрет.выходы 4");   lcdoutBIN(16, DispPrms->DigOutPut4); break;}				
			if (!(--WorkViewStr)) {lcdout(0,16,"Список защит   |"); AlarmStrNum = ViewStr;	break;}
//			if (!(--WorkViewStr)) Предупреждения
			
//			for (i = 0; i < 24; i++) {
//				if (!(--WorkViewStr)) {
//					lcdout(0,17,"Температура     T");
//					lcdouttextl(17, i, 0, ":");
//					lcdouttextl(21, DispPrms->T[i], 0, " °C");
//					break;
//				}
//			}
//			if (!(WorkViewStr)) break;			
			
			if (!(--WorkViewStr)) {lcdout(0,22,"Напряжение синх.Us:   "); lcdouttextl(22, DispPrms->SUFlt * 0.1f, 1, " B"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Ток 1           I1:   "); lcdouttextl(22, DispPrms->I1Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Ток 2           I2:   "); lcdouttextl(22, DispPrms->I2Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Ток 3           I3:   "); lcdouttextl(22, DispPrms->I3Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Ток 4           I4:   "); lcdouttextl(22, DispPrms->I4Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Напряжение Udc 1Udc1: "); lcdouttextl(22, DispPrms->Udc1Flt * 0.1f, 1, " B"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Напряжение Udc 2Udc2: "); lcdouttextl(22, DispPrms->Udc2Flt * 0.1f, 1, " B"); break;}
			if (!(--WorkViewStr)) {lcdout(0,20,"Актив.мощность 1P1: "); 	lcdouttextl(20, DispPrms->P1Flt*PQKoef, 1, " кBт") ; break;}
			if (!(--WorkViewStr)) {lcdout(0,21,"Реакт.мощность12Q12: "); 	lcdouttextl(21, DispPrms->Q12Flt_rms*PQKoef, 1, " кBАр"); break;}
			if (!(--WorkViewStr)) {lcdout(0,20,"Актив.мощность 2P2: "); 	lcdouttextl(20, DispPrms->P2Flt*PQKoef, 1, " кBт") ; break;}
			if (!(--WorkViewStr)) {lcdout(0,20,"Реакт.мощность34Q34: "); 	lcdouttextl(21, DispPrms->Q34Flt_rms*PQKoef, 1, " кBАр"); break;}
		
//			for (i = 0; i < 4; i++) {
//				if (!(--WorkViewStr)) {
//					lcdout(0,18,"Температура     TD");
//					lcdouttextl(18, i, 0, ":");
//					lcdouttextl(22, DispPrms->TD[i] /10.0f, 1, " °C");
//					break;
//				}
//			}
//			if (!(WorkViewStr)) break;	

//			for (i = 4; i < 6; i++) {
//				if (!(--WorkViewStr)) {
//					lcdout(0,17,"Датчик давления P");
//					lcdouttextl(17, (i - 4), 0, ":");
//					lcdouttextl(22, DispPrms->TD[i] /200.0f, 2, " mA");
//					break;
//				}
//			}
//			if (!(WorkViewStr)) break;

	    ///////////////////////
			if (!(--WorkViewStr))	{lcdout(0,16,"&Ia12_fixcorrect");		lcdouthex8(16,((int)(&PrgData.Ia12_fixcorrect) - (int)(&PrgData)) >> 1); break;} 
			if (!(--WorkViewStr))	{lcdout(0,16,"ExtADCArray   	");		lcdouthex8(16,((int)(&PrgData.ExtADCArray[0]) - (int)(&PrgData)) >> 1); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ia12_fixcorrect ");		lcdouttextl(16,PrgData.Ia12_fixcorrect,0,""); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ic12_fixcorrect ");		lcdouttextl(16,PrgData.Ic12_fixcorrect,0,""); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ia34_fixcorrect ");		lcdouttextl(16,PrgData.Ia34_fixcorrect,0,""); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ic34_fixcorrect ");		lcdouttextl(16,PrgData.Ic34_fixcorrect,0,""); break;}

			
//			if (!(--WorkViewStr)) {lcdout(0,16,"CAN1->RF0R          ");		lcdouthex8(16,CAN1->RF0R); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"CAN1->ESR          ");		lcdouthex8(16,CAN1->ESR); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"CAN1->MSR          ");		lcdouthex8(16,CAN1->MSR); break;}
//			if (!(--WorkViewStr)) {lcdout(0,16,"CAN1->MCR          ");		lcdouthex8(16,CAN1->MCR); break;}
//			
//			if (!(--WorkViewStr)) {lcdout(0,16,"Metro.CANRefUdc      ");		lcdouthex8(16,Metro.CANRefUdc); break;}				
//			if (!(--WorkViewStr)) {lcdout(0,16,"Metro.CANStatus      ");		lcdouthex8(16,Metro.CANStatus); break;}				
//			if (!(--WorkViewStr)) {lcdout(0,16,"Metro.CANCmndTx      ");		lcdouthex8(16,Metro.CANCmndTx); break;}				
//			if (!(--WorkViewStr)) {lcdout(0,16,"Metro.CANCmndRx      ");		lcdouthex8(16,Metro.CANCmndRx); break;}				
			ViewStr -= WorkViewStr;
		} while (WorkViewStr);
	} else Pause--;
	
	while (PultRefresh());
	} /* while (1) */
}	/* void Monitor(struct EventLog_type DispPrms) */

void EventLog(void) {
int EventNum = 1;	
int PultKeyb = 0;

ClearPultKeyb();
StdPrms.LoadEvent = EventNum;
	
while (1) {
	/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);

	switch (PultKeyb & (0x7F & ~K_Shift)) {
		case K_Up:		{EventNum--; 
									 if (EventNum < 1) EventNum = 1;
										else if (EventNum > NumberOfEventRecords) EventNum = NumberOfEventRecords; 
											else StdPrms.LoadEvent = EventNum;
									} break;
		case K_Down:	{EventNum++; 
									 if (EventNum < 1) EventNum = 1;
										else if (EventNum > NumberOfEventRecords) EventNum = NumberOfEventRecords; 
										else StdPrms.LoadEvent = EventNum;
									} break;
		case K_Left:	return;
		case K_Enter:	Monitor(&EvPrms_l); break;
	} /* switch (PultKeyb & (0x7F & ~K_Shift)) */

	ClearScreen();
	lcdout(0,32,">ЖУРНАЛ СОБЫТИЙ N               |");
	lcdouttextl(17, EventNum, 0, "");
	switch (EvPrms_l.EventCode) {
		case 0x0053: lcdout(20,11,"RESET      "); break;
		case 0x0153: lcdout(20,11,"ВКЛЮЧЕНИЕ  "); break;
		case 0x0253: lcdout(20,11,"ВЫКЛЮЧЕНИЕ "); break;
		case 0x0853: lcdout(20,11,"ЗАЩИТА     "); break;
		default:     lcdout(20,11,"НЕТ ЗАПИСИ "); break;
	}
	
//	lcdouthex4(0,EventNum); lcdouthex4(8, StdPrms.CurrentEvent);
//	lcdouthex8(16,EvPrms_l.EventCode);
	
	while (PultRefresh());
	} /* while (1) */
}	/* void EventLog(void) */

void _SubMenuRegs(struct PI_params_type *Params, char * RegName) {
int res;
	FillData(0, (0x3E80000 / MainCycle) / Params->Ti, 0, 10000, 1, 22, 0, " [мс]", TiFlag);
	FillData(1, Params->Kp / 256.0f, -128, +127, 0.01f, 22, 2, "", 0);
	do {res = ChangeParam(2, RegName,"  Tи:             Kп:           ");
    switch (res) {
			case 1: {Params->Ti = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
			case 2: {Params->Kp = GetValue(1) * 256.0f + 0.5f;} break;
				 } //switch
   } while (res); //do 	
}

void SubMenuRegs(void) {
int pos = 1;
	while (1) {
		pos = SubItem(3,pos,STregs,0);
		switch (pos) {
			case 0: return;
			case 1: {_SubMenuRegs(&SavePrms.RegUdc,">>РЕГУЛЯТОР Udc ");} break;
			case 2: {_SubMenuRegs(&SavePrms.RegQ,  ">>РЕГУЛЯТОР Q   ");} break;
			case 3: {_SubMenuRegs(&SavePrms.RegPLL,">>РЕГУЛЯТОР PLL ");} break;
		} //switch
	}//while	
}

void SubMenuAlarms(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(10, pos, STalarms, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, SavePrms.RefMtzI/10  ,   5 ,1500, 1    ,21,0," [A]" ,0); 
								FillData(1, SavePrms.RefMtzT/4.0f,0.25f,  10, 0.25f,21,2," [мс]",0);
								do {res=ChangeParam(2,">>МТЗ ПРЕОБРАЗОВ","  I:              t:            ");
									switch (res) {
										case 1: {SavePrms.RefMtzI = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {SavePrms.RefMtzT = (GetValue(1) *  4.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;

			case 2: {	FillData(0, SavePrms.RefUdcmaxU/10  ,  25 , 1800, 1    ,23,0," [B]" ,0); 
								FillData(1, SavePrms.RefUdcmaxT/4.0f,0.25f,  10, 0.25f,21,2," [мс]",0);
								do {res=ChangeParam(2,">>ВЫСОКОЕ Udc   ","  Udc:            t:            ");
									switch (res) {
										case 1: {SavePrms.RefUdcmaxU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {SavePrms.RefUdcmaxT = (GetValue(1) *  4.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;

			case 3: {	FillData(0, SavePrms.RefUdcminU/10  ,  25 , 1800, 1    ,23,0," [B]" ,0); 
								FillData(1, SavePrms.RefUdcminT/4.0f,0.25f,  10, 0.25f,21,2," [мс]",0);
								do {res=ChangeParam(2,">>НИЗКОЕ Udc    ","  Udc:            t:            ");
									switch (res) {
										case 1: {SavePrms.RefUdcminU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {SavePrms.RefUdcminT = (GetValue(1) *  4.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 4: {	FillData(0, SavePrms.RefUdcRazrad/10  ,  25 , 1800, 1    ,23,0," [B]" ,0); 
								do {res=ChangeParam(1,">>РАЗРЯД Udc    ","  Udc:          ");
									switch (res) {
										case 1: {SavePrms.RefUdcRazrad = (GetValue(0) * 10.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 5: {	FillData(0, SavePrms.RefSUminU/10  ,    5, 800, 1    ,22,0," [B]" ,0); 
								FillData(1, SavePrms.RefSUminT/4.0f,0.25f,  10, 0.25f,21,2," [мс]",0);
								do {res=ChangeParam(2,">>НИЗКОЕ Uсинхр.","  Us:             t:            ");
									switch (res) {
										case 1: {SavePrms.RefSUminU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {SavePrms.RefSUminT = (GetValue(1) *  4.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 6: {	FillData(0, SavePrms.RefSUmaxU/10  ,    5, 800, 1    ,22,0," [B]" ,0); 
								FillData(1, SavePrms.RefSUmaxT/4.0f,0.25f,  10, 0.25f,21,2," [мс]",0);
								do {res=ChangeParam(2,">>ВЫСОКОЕ Uсинхр","  Us:             t:            ");
									switch (res) {
										case 1: {SavePrms.RefSUmaxU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {SavePrms.RefSUmaxT = (GetValue(1) *  4.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;			
			case 7: {	FillData(0, SavePrms.RefTempr/10, 10, 120, 1, 21, 0, " [ °C]", 0); 
								do {res=ChangeParam(1,">>ТЕМПЕРАТУРА   ","  T:            ");
									switch (res) {
										case 1: {SavePrms.RefTempr = (GetValue(0) * 10.0f);} break;
									} //switch
								} while (res); //do
							} break;
			case 8: {	FillData(0, SavePrms.RefMtzIVD/10     ,    5 , 1500,   1 ,21,0," [A]" ,0); 
								FillData(1, SavePrms.RefMtzTVD/4000.0f, 0.1f ,   15, 0.1f,21,1," [с]",0);
								do {res=ChangeParam(2,">>ЗАЩИТА ДИОДОВ ","  I:              t:            ");
									switch (res) {
										case 1: {SavePrms.RefMtzIVD = (GetValue(0) * 10.0f   + 0.5f);} break;
										case 2: {SavePrms.RefMtzTVD = (GetValue(1) * 4000.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 9: {	FillData(0, SavePrms.RefWorkRazrad /4000.0f,  0.1f,  10, 0.1f, 22, 1," [c]", 0); 
								FillData(1, SavePrms.RefPauseRazrad/4000	 ,    1, 120,   1 , 22, 0," [с]", 0);
								do {res=ChangeParam(2,">>ЗАЩИТА РЕЗИСТ.","  tр:             tп:           ");
									switch (res) {
										case 1: {SavePrms.RefWorkRazrad  = (GetValue(0) * 4000.0f + 0.5f);} break;
										case 2: {SavePrms.RefPauseRazrad = (GetValue(1) * 4000);} break;
									} //switch
								} while (res); //do
							} break;
			case 10:{	FillData(0, SavePrms.RefIHighFreq /10     ,    5 , 1500,   1 ,22,0," [A]" ,0); 
								FillData(1, SavePrms.RefTHighFreq /4.0f,0.25f,  10, 0.25f,21,2," [мс]",0);
								do {res=ChangeParam(2,">>ВЫСОКОЧАСТ.ТОК","  dI:             t:            ");
									switch (res) {
										case 1: {SavePrms.RefIHighFreq = (GetValue(0) * 10.0f   + 0.5f);} break;
										case 2: {SavePrms.RefTHighFreq = (GetValue(1) * 4.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
							
		} //switch
	}//while	
}

void _SubMenuRefs(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(3, pos, STrefs, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, SavePrms.RefUdc/10, 0, 1700, 1, 24, 0," B", 0);
								FillData(1, SavePrms.SoftStartUdc * 0.006103515625f, 1, 100, 1, 24, 0, " В/с", 0); 
								do {res=ChangeParam(2,">>УСТАВКА Udc   ","  Udc:            Udc':         ");
									switch (res) {
										case 1: {SavePrms.RefUdc = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {SavePrms.SoftStartUdc = (int)(GetValue(1) * 163.84f) & 0x0000FFFF;} break;
									} //switch
								} while (res); //do
							} break;
			case 2: {	FillData(0, SavePrms.RefQ * PQKoef, -500, 500, 1, 21, 0, " [кВАр]", 0);  
								do {res=ChangeParam(1,">>УСТАВКА Q     ","  Q:            ");
									switch (res) {
										case 1: {SavePrms.RefQ = (GetValue(0) * (1.0f / PQKoef) + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 3: {	FillData(0, SavePrms.RefFi1 * 0.0054931640625f, -180, 179, 0.05f, 21, 2, "", 0);  
								do {res=ChangeParam(1,">>УСТАВКА ¦      ","  ¦:            ");
									switch (res) {
										case 1: {SavePrms.RefFi1 = (int)(GetValue(0) * 182.044444444f + 0.5f) & 0xFFFF;} break;
									} //switch
								} while (res); //do
							} break;			
							
							
		} //switch
	}//while	
}

void _SubMenuZarad(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(3, pos, STzarad, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, SavePrms.RefUdcZarad/10, 0, 1200, 1, 23, 0," [B]", 0);
								do {res=ChangeParam(1,">>МИНИМАЛЬН. Udc","  Udc:          ");
									switch (res) {
										case 1: {SavePrms.RefUdcZarad = (GetValue(0) * 10.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 2: {	FillData(0, SavePrms.RefSUZarad/10, 0, 1000, 1, 23, 0," [B]", 0);
								do {res=ChangeParam(1,">>МИНИМАЛЬН. Us ","  Us:           ");
									switch (res) {
										case 1: {SavePrms.RefSUZarad = (GetValue(0) * 10.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 3: {	FillData(0, SavePrms.RefWorkKM1 / MainCycle, 1, 65.0, 1, 21, 0," [c]", 0);
								do {res=ChangeParam(1,">>ДЛИТЕЛЬН. КМ1 ","  t:            ");
									switch (res) {
										case 1: {SavePrms.RefWorkKM1 = (GetValue(0) * MainCycle);} break;
									} //switch
								} while (res); //do
							} break;
		} //switch
	}//while	
} //void _SubMenuZarad(void)


void _SubMenuIntGen(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(4, pos, STintgen, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	res = (SavePrms.EnaIntGen == 0) ? 1 : (SavePrms.EnaIntGen + 1);
								res = SubItem(3, res, STintgenena, res);
								if (res) {SavePrms.EnaIntGen = res - 1;}
							} break;
			case 2: {	FillData(0, 0x4000 / SavePrms.T1dPhase, 1, 1000, 1, 22, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>ФИЛЬТРАЦИЯ    ","  Тф:           ");
									switch (res) {
										case 1: {SavePrms.T1dPhase = 0x4000 / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 3: {	FillData(0, SavePrms.K1dPhase, 0, 32767, 1, 22, 0, "", 0);
								do {res = ChangeParam(1,">>КОЭФФИЦИЕНТ K1","  K1:           ");
									switch (res) {
										case 1: {SavePrms.K1dPhase  = GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 4: {	FillData(0, SavePrms.K2dPhase, 0, 32767, 1, 22, 0, "", 0);
								do {res = ChangeParam(1,">>КОЭФФИЦИЕНТ K2","  K2:           ");
									switch (res) {
										case 1: {SavePrms.K2dPhase  = GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			
		} //switch
	}//while	
} //_SubMenuIntGen(void)

void _SubMenuFiltrs(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(8, pos, STfiltrs, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltUdc, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ DC","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltUdc = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 2: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltI1, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ I1","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltI1 = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 3: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltP1, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ P1","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltP1 = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 4: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltQ1, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ Q1","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltQ1 = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 5: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltI2, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ I2","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltI2 = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 6: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltP2, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ P2","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltP2 = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 7: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltQ2, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ Q2","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltQ2 = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;
			case 8: {	FillData(0, (0x3E80000 / MainCycle) / SavePrms.ParamFiltSU, 1, 100, 1, 23, 0, " [мс]", TiFlag);
								do {res = ChangeParam(1,">>>ФИЛЬТРАЦИЯ Us","   Тф:          ");
									switch (res) {
										case 1: {SavePrms.ParamFiltSU = (0x3E80000 / MainCycle) / (unsigned short)GetValue(0);} break;
									} //switch
								} while (res); //do
							} break;		
		} //switch
	}//while	
} //SubMenuFiltrs()

void _SubMenuVent(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(2, pos, STvent, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, SavePrms.RefTemprEnaVent / 10, 10, 100, 1, 22, 0, " [ °C]", 0); 
								do {res=ChangeParam(1,">>>ВКЛ.ВЕНТИЛЯТ.","   Т:           ");
									switch (res) {
										case 1: {SavePrms.RefTemprEnaVent = (GetValue(0) * 10.0f);} break;
									} //switch
								} while (res); //do
							} break;	
			case 2: {	FillData(0, SavePrms.RefTemprDisVent / 10, 10, 100, 1, 22, 0, " [ °C]", 0); 
								do {res=ChangeParam(1,">>>ОТКЛ.ВЕНТИЛЯТ","   T:            ");
									switch (res) {
										case 1: {SavePrms.RefTemprDisVent = (GetValue(0) * 10.0f);} break;
									} //switch
								} while (res); //do
							} break;			
		} //switch
	}//while	
} //void _SubMenuVent(void)

void _SubMenuStandBy(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(2, pos, STstandby, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, SavePrms.RefStandByEnaT / 4000 , 10, 600, 1, 21, 0, " [с]", 0);  
								do {res=ChangeParam(1,">>ВКЛЮЧЕНИЕ     ","  t:            ");
									switch (res) {
										case 1: {SavePrms.RefStandByEnaT = (GetValue(0) * 4000);} break;
									} //switch
								} while (res); //do
							} break;
			case 2: {	FillData(0, SavePrms.RefStandByIvdI / 10, 1, 100, 1, 24, 0," [A]", 0);
								FillData(1, SavePrms.RefStandByIvdT / 4000.0f, 0.1f, 1.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>ОТКЛЮЧЕНИЕ    ","  Ivd:            t:            ");
									switch (res) {
										case 1: {SavePrms.RefStandByIvdI = (GetValue(0) * 10.0f);} break;
										case 2: {SavePrms.RefStandByIvdT = (GetValue(1) * 4000.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
		} //switch
	}//while	
}

void _SubMenuBridge(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(6, pos, STbridge, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	res = (SavePrms.EnaAuto2ndBridge == 0) ? 1 : 2;
								res = SubItem(2, res, STAutoBridge, res);
								if (res) {SavePrms.EnaAuto2ndBridge = res - 1;}
							} break;
			case 2: {	FillData(0, SavePrms.RefPEna2ndBridge * 0.070944801f, 0, 1000, 1, 21, 0, " [кВт]", 0);
								FillData(1, SavePrms.RefTEna2ndBridge / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>УСТАВКА ВКЛ.  ","  P:              t:            ");
									switch (res) {
										case 1: {SavePrms.RefPEna2ndBridge = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {SavePrms.RefTEna2ndBridge = (GetValue(1) * 4000.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 3: {	FillData(0, SavePrms.RefPDis2ndBridge * 0.070944801f, 0, 1000, 1, 21, 0, " [кВт]", 0);
								FillData(1, SavePrms.RefTDis2ndBridge / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>УСТАВКА ОТКЛ. ","  P:              t:            ");
									switch (res) {
										case 1: {SavePrms.RefPDis2ndBridge = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {SavePrms.RefTDis2ndBridge = (GetValue(1) * 4000.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 4: {	res = (SavePrms.DefMode == 0x07) ? 2 : 1;
								res = SubItem(2, res, STManBridge, res);
								if (res == 1) {SavePrms.DefMode = 1;}	else if (res == 2) {SavePrms.DefMode = 7;}
							} break;

  		case 5: {	FillData(0, SavePrms.BridgeUgolCorrect * 0.0054931640625f, -90, 90, 0.05f, 21, 2, "", 0);  
								do {res=ChangeParam(1,">>КОРРЕКЦИЯ УГЛА ","  ¦:            ");
									switch (res) {
										case 1: {SavePrms.BridgeUgolCorrect  = (int)(GetValue(0) * 182.044444444f + 0.5f) & 0xFFFF;} break;
									} //switch
								} while (res); //do
							} break;
			case 6: {	res = (SavePrms.EnaRegParamsCorrect == 0) ? 1 : 2;
								res = SubItem(2, res, STparamcorr, res);
								if (res) {SavePrms.EnaRegParamsCorrect = res - 1;}
							} break;			
							
		} //switch
	}//while	
}
void _SubMenuDiodeMode(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(3, pos, STDiodeMode, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	res = (SavePrms.EnaDiodeMode == 0) ? 1 : 2;
								res = SubItem(2, res, STEnaDiodeMode, res);
								if (res) {SavePrms.EnaDiodeMode = res - 1;}
							} break;
			case 2: {	FillData(0, SavePrms.RefPEnaDiodeMode * 0.070944801f, 0, 1000, 1, 21, 0, " [кВт]", 0);
								FillData(1, SavePrms.RefTEnaDiodeMode / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>УСТАВКА ВКЛ.  ","  P:              t:            ");
									switch (res) {
										case 1: {SavePrms.RefPEnaDiodeMode = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {SavePrms.RefTEnaDiodeMode = (GetValue(1) * 4000.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 3: {	FillData(0, SavePrms.RefPDisDiodeMode * 0.070944801f, 0, 1000, 1, 21, 0, " [кВт]", 0);
								FillData(1, SavePrms.RefTDisDiodeMode / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0);
								FillData(2, SavePrms.RefUdcDisDiodeMode/10, 0, 700, 1, 23, 0," [B]", 0);
								do {res=ChangeParam(3,">>УСТАВКА ОТКЛ. ","  P:              t:              Udc:          ");
									switch (res) {
										case 1: {SavePrms.RefPDisDiodeMode = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {SavePrms.RefTDisDiodeMode = (GetValue(1) * 4000.0f + 0.5f);} break;
										case 3: {SavePrms.RefUdcDisDiodeMode = (GetValue(2) * 10.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
		} //switch
	}//while	
}
void SubMenuConfig(void) {
int pos = 1;
int res = 0;	
	while (1) {
		pos = SubItem(13, pos, STconfig, 0);
		switch (pos) {
			case 0: return;
			case 1: {_SubMenuRefs();} break;
			case 2: {_SubMenuZarad();} break;
			case 3: {	res = (Metro.FixUgolMode == 0) ? 1 : 2;
								res = SubItem(2, res, STfixugol, res);
								if (res) {Metro.FixUgolMode = res - 1; PrgData.OscilCmnd.OscilNeed = 1;}
							} break;
			case 4:	{_SubMenuIntGen();} break;
			case 5: {_SubMenuFiltrs();} break;
			case 6: {_SubMenuVent();} break;
			case 7: {_SubMenuStandBy();} break;
			case 8: {_SubMenuBridge();} break;
			case 9: {	res = (SavePrms.MainCh == 0) ? 1 : 2;
								res = SubItem(2, res, STmainch, res);
								if (res) {SavePrms.MainCh = res - 1;}
							} break;
			case 10:{_SubMenuDiodeMode();} break;

			case 11:{	res = ((SavePrms.ENATIMOffset >> 1) + 1) & 0x03;
								res = SubItem(3, res, STTIMOffset, res);
								if (res) {SavePrms.ENATIMOffset = (res - 1) * 2;}
							} break;
			case 12:{ FillData(0, SavePrms.RefDeltaUdc/10, 0, 500, 1, 24, 0," [B]", 0);
								do {res=ChangeParam(1,">>РАЗНИЦА Udc1&2","  dUdc<         ");
									switch (res) {
										case 1: {SavePrms.RefDeltaUdc = (GetValue(0) * 10.0f + 0.5f);} break;
									} //switch
								} while (res); //do
							} break;
			case 13:{ res = (SavePrms.EnaFixCorrect == 0) ? 1 : 2;
								res = SubItem(2, res, STFixCorrect, res);
								if (res) {SavePrms.EnaFixCorrect = res - 1;}
							} break;			


							
			
		} //switch 
	}//while	
}

static __inline void CalibSens(int Sens, int *Correct, char *Str, char *Str2) {
unsigned short Temp;
int Temp2;	 
	Metro.CalibrData = &StdPrms.ADCDataNorm[Sens];
	lcdout(0,22,Str); lcdouttextl(22, Metro.RMSData * 0.1f, 1, Str2);
	if (*Correct) {
	  Temp = SavePrms.ADCK[Sens]; 
	  if (*Correct > 0) {Temp = __UQADD16(Temp,  *Correct);}
	  if (*Correct < 0) {Temp = __UQSUB16(Temp, -*Correct);}
		SavePrms.ADCK[Sens] = Temp;
	  *Correct = 0;
	}
} //static __inline void CalibExtSens

void SubMenuSensorsCalib(void) {
static int ViewStr = 1;	
int Inc = 0;
int Correct = 0;
int Pause = 0;
int Repeat = 0;	
int PultKeyb = 0;

ClearPultKeyb();
while (1) {
	/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);

	Inc = 0;
	Correct = 0;
	switch (PultKeyb & (0x7F & ~K_Shift)) {
		case K_Plus:	Correct = +1; break;
		case K_Minus:	Correct = -1; break;
		case K_Up:		Inc = -1; break;
		case K_Down:	Inc = +1; break;
		case K_Left:	return;
	} /* switch (PultKeyb & 0x7F) */

	if (PultKeyb & K_Shift) Correct *= 10;
	
	if ((Pause == 0) || (Inc)) {
		Pause = 4;
		ClearScreen();					/* Очищаем экран пульта */
		do {
			Repeat = 0;
			ViewStr += Inc;
			switch (ViewStr) {
				case  0:	{Inc =  1;	Repeat = 1;} break;
				case  1:	CalibSens(_Ia1,  &Correct, "Ток 1 Фаза А    I1a:  ", " A"); break;
				case  2:	CalibSens(_Ib1,  &Correct, "Ток 1 Фаза B    I1b:  ", " A"); break;
				case  3:	CalibSens(_Ic1,  &Correct, "Ток 1 Фаза C    I1c:  ", " A"); break;
				case  4:	CalibSens(_Ia2,  &Correct, "Ток 2 Фаза А    I2a:  ", " A"); break;
				case  5:	CalibSens(_Ib2,  &Correct, "Ток 2 Фаза B    I2b:  ", " A"); break;
				case  6:	CalibSens(_Ic2,  &Correct, "Ток 2 Фаза C    I2c:  ", " A"); break;
				case  7:	CalibSens(_Udc1, &Correct, "Напряжение Udc1 Udc1: ", " B"); break;
				case  8:	CalibSens(_Udc2, &Correct, "Напряжение Udc2 Udc2: ", " B"); break;
				case  9:	CalibSens(_Uab,  &Correct, "Напряжение Uab  Uab:  ", " B"); break;
				case 10:	CalibSens(_Ubc,  &Correct, "Напряжение Ubc  Ubc:  ", " B"); break;
				case 11:	CalibSens(_Uca,  &Correct, "Напряжение Uca  Uca:  ", " B"); break;
				default: 	{if (ViewStr > 11) {Inc = -1;}	Repeat = 1; } break;
			}
		} while (Repeat);
	} else Pause--;
	while (PultRefresh());
	} /* while (1) */
}	/* void Monitor(struct EventLog_type DispPrms) */

void SubMenuSensors(void) {
int pos = 1;
	while (1) {
		pos = SubItem(7,pos,STsensors,0);
		switch (pos) {
			case 0: return;
			case 1: SubMenuSensorsCalib(); break;
			case 2: if ((StdPrms.SetZeroCmd == 0) && SubMenuAsk("УСТАНОВ.НУЛИ DC?")) {StdPrms.SetZeroCmd = (1ul<<_Udc1)|(1ul<<_Udc2);} break;
			case 3: if ((StdPrms.SetZeroCmd == 0) && SubMenuAsk("УСТАНОВ.НУЛИ Us?")) {StdPrms.SetZeroCmd = (1ul<<_Uab)|(1ul<<_Ubc)|(1ul<<_Uca);} break;
			case 4: if ((StdPrms.SetZeroCmd == 0) && SubMenuAsk("УСТАНОВ.НУЛИ I1?")) {StdPrms.SetZeroCmd = (1ul<<_Ia1)|(1ul<<_Ib1)|(1ul<<_Ic1);} break;
			case 5: if ((StdPrms.SetZeroCmd == 0) && SubMenuAsk("УСТАНОВ.НУЛИ I2?")) {StdPrms.SetZeroCmd = (1ul<<_Ia2)|(1ul<<_Ib2)|(1ul<<_Ic2);} break;
			case 6: if ((StdPrms.SetZeroCmd == 0) && SubMenuAsk("УСТАНОВ.НУЛИ I3?")) {StdPrms.SetZeroCmd = (1ul<<_Ia3)|(1ul<<_Ib3)|(1ul<<_Ic3);} break;
			case 7: if ((StdPrms.SetZeroCmd == 0) && SubMenuAsk("УСТАНОВ.НУЛИ I4?")) {StdPrms.SetZeroCmd = (1ul<<_Ia4)|(1ul<<_Ib4)|(1ul<<_Ic4);} break;
		} //switch
	}//while	
}

void SubMenuService(void) {
int pos = 1;
	while (1) {
		pos = SubItem(3,pos,STservice,0);
		switch (pos) {
			case 0: return;
		  case 1: {} break;
			case 2: {if (SubMenuAsk("СОХР. ПАРАМЕТРЫ?")) {StdPrms.SaveParam = 1;}} break;
			case 3: {SubMenuSensors();} break;
		} //switch
	}//while	
}

void __SubMenuProtocol(int Port) {
int pos = 1;
int res = 0;
union UsartPrms_union OldPrms, NewPrms;

	if ((Port < 1) || (Port > 8)) return;
	
	OldPrms.AllParams = NewPrms.AllParams = GetSavedUartParams(Port);
	
	while (1) {
		pos = SubItem(4, pos, STuartparams, 0);
		switch (pos) {
			case 0: return;
			case 1: {	res = (NewPrms.Params.BaudRate & 0x07) + 1;
								res = SubItem(6, res, STuartSpeed, res);
								if (res) {
									NewPrms.Params.BaudRate = res - 1;
									if (NewPrms.Params.BaudRate != OldPrms.Params.BaudRate) {
										SetUartSpeed(Port, NewPrms.AllParams);
										OldPrms.Params.BaudRate = NewPrms.Params.BaudRate;
										PutSavedUartParams(Port, NewPrms.AllParams);
									}
								}
							} break;		  
			case 2: {	res = ((NewPrms.Params.Parity_Stop & 0x06) >> 1) + 1;
								res = SubItem(3, res, STuartParity, res);
								if (res) { 
									NewPrms.Params.Parity_Stop = (NewPrms.Params.Parity_Stop & ~0x06ul) | ((res - 1) << 1);
									if (OldPrms.Params.Parity_Stop != NewPrms.Params.Parity_Stop) {
										SetUartParity(Port, NewPrms.AllParams);
										OldPrms.Params.Parity_Stop = NewPrms.Params.Parity_Stop;
										PutSavedUartParams(Port, NewPrms.AllParams);
									}
								}	
							} break;
			case 3: {	res = (NewPrms.Params.Parity_Stop & 0x01) + 1;
								res = SubItem(2, res, STuartStop, res);
								if (res) {
									NewPrms.Params.Parity_Stop = (NewPrms.Params.Parity_Stop & ~0x01ul) | (res - 1);
									if (OldPrms.Params.Parity_Stop != NewPrms.Params.Parity_Stop) {
										SetUartStopBits(Port, NewPrms.AllParams);
										OldPrms.Params.Parity_Stop = NewPrms.Params.Parity_Stop;
										PutSavedUartParams(Port, NewPrms.AllParams);								
									}
								}
							} break;
			case 4: {	FillData(0, NewPrms.Params.Addr1, 1 ,127, 1, 26, 0, "",0); 
								do {res = ChangeParam(1,">>>АДРЕС MODBUS ","   Адрес:       ");
									switch (res) {
										case 1: {
											OldPrms.Params.Addr1 = NewPrms.Params.Addr1 = GetValue(0);
											PutSavedUartParams(Port, NewPrms.AllParams);
										} break;
									} //switch
								} while (res); //do
							} break;
		} //switch
	}//while	
}
	
void SubMenuProtocol(void) {
int pos = 1;
	while (1) {
		pos = SubItem(3,pos,STuarts,0);
		switch (pos) {
			case 0: return;
//		  case 1: {__SubMenuProtocol(X6);} break;
//			case 2: {__SubMenuProtocol(X7);} break;
//			case 3: {__SubMenuProtocol(X13);} break;
		} //switch
	}//while	
}


void MainMenu() {
int pos = 1;

	while (1) {
		pos = SubItem(8,pos,STmainmenu,0);
		switch (pos) {
			case 0: { return; } break;
			case 1: { Monitor(&EvPrms);	} 	break;
			case 2: { EventLog();				}   break;
			case 3: { SubMenuConfig();	}		break;
			case 4:	{	SubMenuRegs();		}		break;
			case 6:	{ SubMenuAlarms();	} 	break;
			case 7:	{ SubMenuService();	} 	break;
			case 8: { SubMenuProtocol();} 	break;
		} //switch
	}//while
}//Menu


void ReadyList(int *ViewStr) {
int i;
unsigned int ReadyCode;
int CountViewStr = 0;
int RealViewStr  = 0;
int MaxViewStr   = 0;

  if (*ViewStr < 0) {*ViewStr = 0;}
  ReadyCode = EvPrms.ReadyWord1;

  for (i = 0; i < 32; ) {
		if (ReadyCode & (1ul << i++)) { 
			CountViewStr++; 
			MaxViewStr = i;
			if (CountViewStr == *ViewStr) {RealViewStr = i;}
		}//if
	}  //for

  if (*ViewStr > CountViewStr) {*ViewStr = CountViewStr; RealViewStr = MaxViewStr;}

  switch (RealViewStr) {
	case 0:	{lcdout(16,16,"НЕ ГОТОВ       }");} break;
	case 1:	{lcdout(16,16,">Не квит.защита ");} break;
	case 2:	{lcdout(16,16,">TIM1 BKIN      ");} break;
	case 3:	{lcdout(16,16,">TIM8 BKIN      ");} break;
	case 4:	{lcdout(16,16,">Статус IGBT    ");} break;
	case 5:	{lcdout(16,16,">Низкое Udc     ");} break;
	case 6:	{lcdout(16,16,">Низкое Ucинхр. ");} break;
	case 7:	{lcdout(16,16,">Идет заряд     ");} break;
	case 8:	{lcdout(16,16,">АС не включен  ");} break;
	
  default:{lcdout(16,16,">ОШИБКА         ");} break;
				 		} //switch
}



	
void Display(void) {
int PultKeyb = 0;
int ViewStr = 0;
int amp = 0;	

ClearPultKeyb();
while (1) {
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);			/* Ожидаем завершения передачи и получения нажатых кнопок на пульте	*/
	ClearScreen();
	
	amp = Metro.AMP1;
	
	switch (PultKeyb & 0x7F) {
#ifdef HEAD2
		case K_Plus:	{PrgData.TestAMP++; if (PrgData.TestAMP > 5000) PrgData.TestAMP = 5000; } break;
		case K_Minus:	{PrgData.TestAMP--; if (PrgData.TestAMP < 100) PrgData.TestAMP = 100; } break;
		case (K_Plus | K_Shift):	{PrgData.TestAMP+=10; if (PrgData.TestAMP > 5000) PrgData.TestAMP = 5000; } break;
		case (K_Minus | K_Shift):	{PrgData.TestAMP-=10; if (PrgData.TestAMP < 100) PrgData.TestAMP = 100; } break;
#else
		case K_Plus:	{amp += 100; if (amp > Metro.ARR) {amp = Metro.ARR;} Metro.AMP1 = amp;} break;
		case K_Minus:	{amp -= 100; if (amp < 0) 				 {amp = 0;} 				Metro.AMP1 = amp;} break;
#endif

		case K_Up:		ViewStr--; break;
		case K_Down:	ViewStr++; break;
		case K_Left:	ViewStr = 0; break;
		case K_Ena:		{Metro.NeedEnable  |= 1;} break;
		case K_Dis:		{Metro.NeedDisable |= 1;} break;
		case K_Enter:	{MainMenu();} break;
	} /* switch (PultKeyb & 0x7F) */
	
	switch (StdPrms.Status)	{
		case  1:	if (EvPrms.AlarmWord1 == 0) {ReadyList(&ViewStr);} else {AlarmList(EvPrms.AlarmWord1, &ViewStr);} break;
		case 	2:	lcdout(16,16,"ГОТОВ           "); break;
		case  5:  lcdout(16,16,"РАБОТА          "); break;
		case  6:  lcdout(16,16,"СПЯЩИЙ РЕЖИМ    "); break;
		case  7:  lcdout(16,16,"ДИОДНЫЙ РЕЖИМ   "); break;
		default:	lcdout(16,16,"                "); break;
	}

#ifdef HEAD2
//	lcdouthex4(8,PrgData.TestAMP);
	lcdouthex4(8,PrgData.FiltIncPhase1);
#endif
	
	lcdouthex4(0, Metro.AMP1);
//	lcdouthex4(8, Metro.WorkRefUdc >> 16);

	/* Инидикатор наличия связи по CAN или счетчик ее отсутвия	*/
//	if (StdPrms.CANLink1 < 5) {lcdout(10, 6, " СВЯЗЬ");} else {lcdouthex4(10, StdPrms.CANLink1);}
	
	while (PultRefresh());
	} /* while (1) */
}	/* void Display() */	


