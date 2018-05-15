union ExtMem_type {
	  int w32[524288];
	short w16[524288*2];
};

extern union ExtMem_type ExtMem;
extern short ExtADC[16];
extern short ADCData[16];

#define ExtMem16 ExtMem.w16
#define ExtMem32 ExtMem.w32

#define ADC_RESET_ON		1
#define ADC_RESET_OFF		0
#define ADC_RESET(set_reset)	PeriphBB(GPIOB->ODR,2) = set_reset

#define ADC_CONVST_ON		1
#define ADC_CONVST_OFF	0

#if defined (EK_PP_0215_12_02) || defined (EK_PP_0815_12_03)
#define ADC_CONVST(set_reset)	PeriphBB(GPIOB->ODR,1) = set_reset
#endif

#ifdef EK_PP_0215_12_01
#define ADC_CONVST(set_reset)	PeriphBB(GPIOA->ODR,10) = set_reset
#endif

#ifdef EK_PP_0215_12_00
#define ADC_CONVST(set_reset)	PeriphBB(GPIOG->ODR,6) = set_reset
#endif

extern void InitExtMem(void);
extern void InitTrgExtADC(int freq);
