#define PrgData		Metro
#define SavePrms	Metro.SavedParam.SavedParam
#define	StdPrms		Metro.StdCmnd.StdCmnd
#define EvPrms		Metro.WorkingEvent.EventData
#define EvPrms_l	Metro.LoadedEvent.EventData

/*
В памяти сначала располагается журнал событий.
Потом 4 байта текущий номер события
Потом 4 байта CRC32 парметров
Потом параметры
*/

#define FramSize								0x8000ul
#define SaveParamsMaxLength			1790ul	
#define FramParamAddr						(FramSize - SaveParamsMaxLength*4) 
#define FramEventNumAddr				(FramParamAddr - 8)
#define FramCRCAddr							(FramParamAddr - 4)


/*Максимальная длина одной записи журнала событий слов (32 бит)	*/
#define EventRecordMaxSize			64ul	
#define NumberOfEventRecords		100ul

#if (EventRecordMaxSize > 64ul)
#error "Размер записи журнала событий превывшает 64 слова. Смотри Metro.h"	
#endif

#if (4 * (EventRecordMaxSize * NumberOfEventRecords + SaveParamsMaxLength + 2)) > FramSize
#error "Недостаточно памяти Fram для параметров и журнала событий. Смотри Metro.h"	
#endif

#define EvRecSize		MIN(sizeof(EvPrms), EventRecordMaxSize << 2)
#define ParRecSize	MIN(sizeof(SavePrms), SaveParamsMaxLength << 2)	

struct EventLog_type {
	int	EventCode;
	int RTC_Date;
	int RTC_Time;
	int RTC_SSC;
	
unsigned short DigInput1;				//0x0008
unsigned short DigOutPut1;			//0x0009
	
//unsigned short DigInput2;
//unsigned short DigOutPut2;
//unsigned short DigInput3;
//unsigned short DigOutPut3;
//unsigned short DigInput4;
//unsigned short DigOutPut4;
	
short Uab;							//0x000A
short Ubc;							//0x000B
short Uca;							//0x000C
short Ua;								//0x000D
short Ub;								//0x000E
short Uc;								//0x000F
	
	int ReadyWord1;				//0x0010
	int StatusWord1;			//0x0012
	int AlarmWord1;				//0x0014
	int WarnWord1;				//0x0016

short SUFlt;						//0x0018
short Udc1Flt;					//0x0019
short Udc2Flt;					//0x001A

short I1Flt;						//0x001B
short I2Flt;						//0x001C
short I3Flt;						//0x001D
short I4Flt;						//0x001E

short P1Flt;						//0x001F
short P2Flt;						//0x0020
short P3Flt;						//0x0021
short P4Flt;						//0x0022

short Q1Flt;						//0x0023
short Q2Flt;						//0x0024
short Q3Flt;						//0x0025
short Q4Flt;						//0x0026

short SUNotFlt;					//0x0027;

signed char T[24];			//0x0028; - //0x0033;
 
short TD[12];						//0x0034;	- //0x003F

short Ia1Ia2;
short Ib1Ib2;
short Ic1Ic2;
short Ia3Ia4;
short Ib3Ib4;
short Ic3Ic4;

short IGBTStat1[7];			
short IGBTStat2[7];	
short IGBTStat3[7];	

short I1Flt2;						//0x005B
short I2Flt2;						//0x005C
short I3Flt2;						//0x005D
short I4Flt2;						//0x005E

short P1Flt2;						//0x005F
short P2Flt2;						//0x0060
short P3Flt2;						//0x0061
short P4Flt2;						//0x0062

short Q1Flt2;						//0x0063
short Q2Flt2;						//0x0064
short Q3Flt2;						//0x0065
short Q4Flt2;						//0x0066

short TD2[12];					//0x0067;	- //0x0072

short IGBTStat4[7];

short Udc1Flt_rms;			//0x007A			
short Udc2Flt_rms;			//0x007B

short Q12Flt_rms;				//0x007C
short Q34Flt_rms;				//0x007D

short Ic12_rms;					//0x007E
short Ic34_rms;					//0x007F


};	

struct	StdCmnd_type {
short SaveParam;				/* 0x100 	*/	
short ParamsLoaded;			/* 0x101	*/
	int SetDate;					/* 0x102	*/
	int SetTime;					/* 0x104	*/
short CurrentEvent;			/* 0x106	*/
short FlagSaveEvent;		/* 0x107	*/	/* Используется при сохранение журнала событий	*/
short LoadEvent;				/* 0x108	*/
short NewEvent;					/* 0x109	*/	/* Используется при загрузке журнала событий		*/
unsigned int SetZeroCmd;/* 0x10A	*/
short Status;						/* 0x10C	*/
short CycleCounter;			/* 0x10D	*/
short CANLink1;					/* 0x10E	*/	
short	Temp[1];
						
unsigned short	DigIn1;						/* 0x110	*/
unsigned short	DigIn1Or;
unsigned short	DigIn1And;
unsigned short	DigInput1;			

unsigned short	DigIn2;						/* 0x114  */
unsigned short	DigIn2Or;
unsigned short	DigIn2And;
unsigned short	DigInput2;
	
unsigned short	DigIn3;						/* 0x118	*/
unsigned short	DigIn3Or;
unsigned short	DigIn3And;
unsigned short	DigInput3;

unsigned short	DigIn4;						/* 0x11C	*/
unsigned short	DigIn4Or;
unsigned short	DigIn4And;
unsigned short	DigInput4;

unsigned short	DigOut1;					/* 0x120	*/
unsigned short	DigOut1Or;
unsigned short	DigOut1And;
unsigned short	DigOutput1;			

unsigned short	DigOut2;					/* 0x124  */
unsigned short	DigOut2Or;
unsigned short	DigOut2And;
unsigned short	DigOutput2;
	
unsigned short	DigOut3;					/* 0x128	*/
unsigned short	DigOut3Or;
unsigned short	DigOut3And;
unsigned short	DigOutput3;

unsigned short	DigOut4;					/* 0x12C	*/
unsigned short	DigOut4Or;
unsigned short	DigOut4And;
unsigned short	DigOutput4;

unsigned char DigIn1Count[16];		/* 0x0130	*/
unsigned char DigIn2Count[16];		/* 0x0138	*/
unsigned char DigIn3Count[16];		/* 0x0140	*/
unsigned char DigIn4Count[16];		/* 0x0148	*/

unsigned short PrevDigIn1;				/* 0x0150	*/
unsigned short PrevDigIn2;
unsigned short PrevDigIn3;
unsigned short PrevDigIn4;				/* 0x0153	*/

	int Temp1;
short Temp2[10];							

short	ExtADCData[16];							/* 0x0160	*/								/* Данные от внешнего АЦП			*/
short	IntADCData[8*8];						/* 0x0170	*/								/* Данные от внутреннего АЦП	*/
																	/* 0x0180	*/
																	/* 0x0190	*/
																	/* 0x01A0	*/
short ADCDataNorm[32];						/* 0x01B0	*/								/* 16 слов внешнее АЦП, 8 слов - внутренее АЦП	*/

																	/* 0x01D0	*/

};



	
	
struct SavedParam_type {
OscilConfig_type Oscil;				/*0x0200  */
	
unsigned short ADCK[24];							/*0x0220	*/		/* 16 слов внешнее АЦП, 8 слов - внутренее АЦП	*/
				 short ADCOffs[24];						/*0x0238	*/		/* 16 слов внешнее АЦП, 8 слов - внутренее АЦП	*/

					 int K1dPhase;							/*0x0250	*/		/* 50			*/
					 int T1dPhase;															/* 0x0333	*/
					 int K2dPhase;															/* 5000		*/
				 short EnaIntGen;															/* Работа от внутреннего генератора							*/
				 short EnaFixCorrect;													/* Компенасация постоянной составляющей тока		*/
				 short RefStandByIvdI;				/* Уставка тока для выхода из режим Stand-By										*/
unsigned short RefStandByIvdT;				/* Выдержка времени																							*/
					 int RefStandByEnaT;				/* Время включения спящего режима																*/
				 short RefPEna2ndBridge;			/* Уставка P включения второго моста														*/
				 short RefPDis2ndBridge;			/* Уставка P отключения второго моста														*/
				 short EnaAuto2ndBridge;			/* Разрешение автоматического подключения второго моста					*/
				 short DefMode;								/* Режим мостов по умолчанию																		*/ 
unsigned   int UartParams[8];					/*0x0260	*/		/* Параметры RS-232															*/

unsigned short ParamFiltSU;						/*0x0270	*/
unsigned short ParamFiltI1;
unsigned short ParamFiltI2;
unsigned short ParamFiltP1;
unsigned short ParamFiltP2;
unsigned short ParamFiltQ1;
unsigned short ParamFiltQ2;
unsigned short ParamFiltUdc;

struct PI_params_type	RegUdc;					/*0x0278	*/
struct PI_params_type	RegQ;
struct PI_params_type	RegPLL;
struct PI_params_type	RegRes;	

/* Защиты */													/*0x0280	*/

unsigned short RefMtzI;					
unsigned short RefMtzT;					 
unsigned short RefUdcmaxU;					
unsigned short RefUdcmaxT;
unsigned short RefUdcminU;					
unsigned short RefUdcminT;
unsigned short RefUdcRazrad;
unsigned short RefSUminU;					
unsigned short RefSUminT;
unsigned short RefTempr;
unsigned short RefSUmaxU;					
unsigned short RefSUmaxT;
unsigned short RefMtzIVD;							/* Защита диодов	*/					
unsigned short RefMtzTVD;							/* Защита диодов	*/
				 
unsigned short RefTemprEnaVent;
unsigned short RefTemprDisVent;				 
				 
				 short RefUdcZarad;						/*Требуемое Udc для включения KM2							*/			/*0x0290	*/
				 short RefSUZarad;						/*Требуемое напряж.синхронизациия для KM2			*/
				 short KM3Active;							/*Длительность включения KM3 для заряда				*/
				 short KM3Pause;							/*Пауза перед повторным включением KM3				*/
				 short RefUdcZero;						/*Значение, ниже которого считаем Udc = 0			*/
				 short RefDeltaUdc;						/*Допсутимая разница Udc1 и Udc2							*/
unsigned   int RefWorkKM1;						/*Длительность заряда Udc											*/
				 short RefCountRazrad;				/*Длительность импульса разряда								*/

				 short RefUdc;								/**/
				 short RefQ;									/**/
				 short RefFi1;								/* Стартовый угол*/
					 int SoftStartUdc;					/* Плавный набор Udc													*/ 
				 short MainCh;
				 short ENATIMOffset;
					 
unsigned   int Xn[16];								/* Характеристика для расчета температуры			*/			/* 0x02A0	*/
					 int Tn[16];																																			/* 0x02C0	*/
					
					 int RefWorkRazrad;																																/* 0x02E0	*/
					 int RefPauseRazrad;
					 int MaskAlarmKMsOffReady;
					 int MaskAlarmKMsOffWork;
					 int RefAlarmAutoClear;
					 int RefAlarmAutoPause;
					 
					 int RefTEna2ndBridge;
					 int RefTDis2ndBridge;
				 short BridgeUgolCorrect;
				 short EnaRegParamsCorrect;
				 
				 short RefPEnaDiodeMode;							/* Уставка P включения диодного режима													*/
				 short RefPDisDiodeMode;							/* Уставка P отключения диодного режима													*/
				 short RefTEnaDiodeMode;							/* Выдержка времени на включение диодного режима								*/
				 short RefTDisDiodeMode;							/* Выдержка времени на отключение диодного режима								*/
				 short RefUdcDisDiodeMode;						/* Уставка Udc отключения диодного режима												*/
				 short EnaDiodeMode;									/* Разрешение диодного режима																		*/
					
				 short RefIHighFreq;
				 short RefTHighFreq;

					 int Pad5[3];
																																														/* 0x0300	*/
};

/* Union необходим для выделения фиксированного объема памяти, определяемого int Buffer[xx] 				*/
/* независимого от кол-ва данных struct zzzzzz_type (не должно превышать xx слова)									*/
/* таким образом достигается фиксированное смещение данных в структуре независимо от программы			*/
union	EventLog_union	{
	 int Buffer[64];						
struct EventLog_type EventData;	
};

union	StdCmnd_union	{
	 int Buffer[128];
struct StdCmnd_type StdCmnd;
};

union SavedParam_union	{
	 int Buffer[SaveParamsMaxLength];
struct SavedParam_type SavedParam;	
};	


struct Metro_type {
union	EventLog_union 		WorkingEvent;				/* Адрес   0..127  (0x0000-0x007F)																						*/
union	EventLog_union 		LoadedEvent;				/* Адрес 128..255	 (0x0080-0x00FF)																						*/
union StdCmnd_union	 		StdCmnd;						/* Адрес 256..511	 (0x0100-0x01FF)	Стандартные команды, входы выходы	и т.п.	*/	
union SavedParam_union	SavedParam;					/* Адрес 0x0200 - 0x0FFF																											*/
      int Padding[2];
	/* Прочие переменные: адрес 0x1000..															 	*/
    OscilCmnd_type  OscilCmnd;								/**/ 
	
				 short NeedDisable;											/* 0x11A0*/	
				 short NeedEnable;
				 short Gamma1;													/* Коррекция для Gamma 1*/
				 short Gamma2;													/* Коррекция для Gamma 2*/
				 short Gamma3;													/* Коррекция для Gamma 3*/
				 short Mode;
				 short NewMode;
				 short FixUgolMode;			
	
					 int Ugol_n0;
					 int Phase1;
					 int IncPhase1;
					 int AMP1;
					 int Ugol_n1;
					 int Ugol_n2;
					 int Ugol_n3;
					 int Phase2;
					 int IncPhase2;
					 int AMP2;
					 int dPhaseFlt;
					 int PhaseCalc;										//11BE
					 int IncPhaseCalc;					 
					 int ErrorTIM1Flag;
					 int ErrorTIM8Flag;
					 int ARR;
					 int TestAMP;
					 int WorkUgol;										//11CA
			
					 int BufFiltSU;
					 int BufFiltUdc1;
					 int BufFiltUdc2;
					 int BufFiltI1;
					 int BufFiltI2;
					 int BufFiltI3;
					 int BufFiltI4;
					 int BufFiltP1;
					 int BufFiltP2;
					 int BufFiltP3;
					 int BufFiltP4;
					 int BufFiltQ1;
					 int BufFiltQ2;
					 int BufFiltQ3;
					 int BufFiltQ4;
					 
					 int BufRegUdc1;		//0x11cc
					 int BufRegUdc2;		//0x11cc
					 int BufRegQ1;
					 int BufRegQ2;
			
unsigned short MTZIa1Counter;
unsigned short MTZIb1Counter;
unsigned short MTZIc1Counter;
unsigned short MTZIa2Counter;
unsigned short MTZIb2Counter;
unsigned short MTZIc2Counter;
unsigned short MTZIa3Counter;
unsigned short MTZIb3Counter;
unsigned short MTZIc3Counter;
unsigned short MTZIa4Counter;
unsigned short MTZIb4Counter;
unsigned short MTZIc4Counter;
unsigned short Udc1MaxCounter;
unsigned short Udc2MaxCounter;
unsigned short Udc1MinCounter;
unsigned short Udc2MinCounter;
unsigned short SUMinCounter;
unsigned short SUMaxCounter;
unsigned short MTZI1CounterVD;
unsigned short MTZI2CounterVD;


				 short RefUdc;
				 short RefQ;
				 
				 short K_Start;
				 short K_Stop;
				 short K_Zarad;			//11c2
				 short K_Razrad;
				 short FlagNeedACZarad;
				 short CountRazrad;
				 short K_Alarm;
				 short AC_KM_ON;
					 int FlagNeedRazrad;
				   int FlagErrorZarad;

					 int KM1ON;
					 int KM1ENA;

				 short AC_KM_ENA;
				 short ACZaradENA;
				 
				 short KM4ON;
				 short KM4ENA;				 
				 
				 short *CalibrData;
					 int RMSData;
					 
					 int BufFiltdPhase;
					 int WorkRefUdc1;
					 int WorkRefUdc2;
					 
					 int BufFiltdUgol;
					 int dUgol;
					 
unsigned 	 int T[6];

					 int CounterEnaKM5Delay;
					 int CounterAlarmT[6];
					 int CounterVentON[6];
					 int CounterVentOFF[6];
					 
					 int CANRefUdc;
					 int CANStatus;
					 int CANCmndTx;										/* Команда для отправки по CAN	*/
					 int CANCmndRx;										/* Команда принятая по CAN			*/
					 
					 int PrevUgols[40];
					 int SynchError;
					 int FlagRazradError;
					 int CounterAlarmAutoClear;
					 int CounterAlarmAutoPause;
					 int EnaAPV;
					 int AutoZarad;
					 int EscalatorInUse;
					 int EscalctorInUse_1;
					 int CounterEscalatorNotUse;
					 int CounterI1Flt;
					 int CounterI2Flt;
					 int TimeRazrad;
					 int PauseRazrad;						 
					 
					 int BlinkCount;
					 int BlinkOut;
					 int EnaDiodeModeCounter;
					 int DisDiodeModeCounterP;
					 int DisDiodeModeCounterUdc;
					 int IGBTStatCounterR;
					 int IGBTStatCounterL;
					 
				 short TIM1_CCR1;				
				 short TIM1_CCR2;
				 short TIM1_CCR3;
				 
				 short TIM8_CCR1;
				 short TIM8_CCR2;
				 short TIM8_CCR3;
				 
				 short OscilAMP1;
				 short OscilAMP2;
				 
					 int TemprProtect[24];
					 
					 int FiltIncPhase1;
					 int BufFiltIncPhase1;
					 int FiltIncPhase2;
					 int BufFiltIncPhase2;

					 int FiltIncPhaseCalc;
					 int BufFiltIncPhaseCalc;
					 
					 
				 short ExtADCArray[16*2*ADCxCycle];
				 short *pExtADCArray;
				 
				 /* Постоянная составляющая	*/
				 short Ia12_fixcorrect;
				 short Ic12_fixcorrect;
				 short Ia34_fixcorrect;
				 short Ic34_fixcorrect;
				 
				 short GammaT8_1_fixcorrect;
				 short GammaT8_3_fixcorrect;
				 short GammaT1_1_fixcorrect;
				 short GammaT1_3_fixcorrect;
				 
};	

extern struct Metro_type Metro;


/*
			 0     1   2  3   4   5   6   7   8   9  10  11  12  13  14  15
			Udc1 Udc2	 x  x	 Ia2 Ia1 Ia4 Ia3 Ib2 Ib1 Ib4 Ib3 Ic2 Ic1 Ic4 Ic3


*/


typedef enum ADCChannels								/* Первые 16 - внешнее АЦП, далее 8 - внутреннее АЦП	*/
{
	/* Внутренне АЦП	*/
	_Uab		=	16ul,			/*	1ul	*/
	_Ubc		= 17ul,			/*	2ul	*/
	_Uca		= 18ul,			/*	3ul	*/
	
	/* Внешнее АЦП		*/
	_Ia1		= 5ul,
	_Ib1		= 9ul,
	_Ic1		= 13ul,
	
	_Ia2		= 4ul,
	_Ib2		= 8ul,
	_Ic2		= 12ul,
	
	_Ia3		= 7ul,
	_Ib3		= 11ul,
	_Ic3		= 15ul,
	
	_Ia4		= 6ul,
	_Ib4		= 10ul,
	_Ic4		= 14ul,	
	
	_Udc1		= 0ul,
	_Udc2		= 1ul
	
} ADCChannels_Type;


#define PQKoef	(409.6f * 409.6f * 	__sqrtf(3) / 4096000.0f)


extern void TIM1_Init(int freq);
extern void TIM8_Init(int freq);
extern void TIM2_TIM5_Init(void);

extern void InitParams(int ParamsLoaded);
