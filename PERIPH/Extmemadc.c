#include "stm32f4xx.h"
#include "global.h"

#include <math.h>

#ifdef EK_PP_0215_12_00
	union ExtMem_type ExtMem __attribute__((at(0x64000000)));	
#endif

#if defined (EK_PP_0215_12_02) || defined (EK_PP_0815_12_03)
	union ExtMem_type ExtMem __attribute__((at(0x63F00000)));	
#endif


short ExtADC[16] __attribute__((at(0x68000000))); 

void InitExtMem(void) {
	
	if (RCC->AHB3ENR & RCC_AHB3ENR_FMCEN) return;				/*Уже инициализировано*/

  /* Enable the FMC/FSMC interface clock */
  RCC->AHB3ENR |= RCC_AHB3ENR_FMCEN;	

#if  defined (EK_PP_0215_12_02) || defined (EK_PP_0815_12_03)	
  /* Configure and enable Bank0&1_SRAM2 */
  FMC_Bank1->BTCR[0]  = 0x00005011;		/*BCR - register	*/
  FMC_Bank1->BTCR[1]  = 0x00020302;		/*BTR - register	*/
  FMC_Bank1E->BWTR[0] = 0x00020202;		/*BWTR - register	*/	

  FMC_Bank1->BTCR[2]  = 0x00005011;		/*BCR - register	*/
  FMC_Bank1->BTCR[3]  = 0x00020302;		/*BTR - register	*/
  FMC_Bank1E->BWTR[2] = 0x00020202;		/*BWTR - register	*/	
	
#elif defined (EK_PP_0215_12_00) || defined (EK_PP_0215_12_01) 
	/* Configure and enable Bank1_SRAM2 */
  FMC_Bank1->BTCR[2]  = 0x00005011;		/*BCR - register	*/
  FMC_Bank1->BTCR[3]  = 0x00020302;		/*BTR - register	*/
  FMC_Bank1E->BWTR[2] = 0x00020202;		/*BWTR - register	*/	
#endif

#if defined (EK_PP_0215_12_00) || defined (EK_PP_0215_12_01) || defined (EK_PP_0215_12_02) || defined (EK_PP_0815_12_03)

	ADC_CONVST(ADC_CONVST_OFF);
	ADC_RESET(ADC_RESET_ON);

	/* Инициализация внешнего АЦП					*/	
  FMC_Bank1->BTCR[4]  = 0x00005011;		/*BCR - register	*/
  FMC_Bank1->BTCR[5]  = 0x00020403;		/*BTR - register	*/
  FMC_Bank1E->BWTR[4] = 0x00020403;		/*BWTR - register	*/		

	ADC_RESET(ADC_RESET_OFF);
	
#endif	
}


void InitTrgExtADC(int freq) {
	
#if defined (EK_PP_0215_12_02) || defined (EK_PP_0815_12_03)
TIM_TypeDef	*TIM = TIM3;

	PrgData.pExtADCArray = PrgData.ExtADCArray;
	
	RCC->APB1ENR |= RCC_APB1ENR_TIM3EN;
	TIM->PSC 		= 0;
	TIM->ARR 		= (APB1CLK * 2) / freq - 1;						/*											*/
	TIM->CCR4 	= (APB1CLK * 2) / 200000; 						/* 5 мкс								*/
	
	if (ADCxCycle == 1)	
	{
		TIM->CNT 		= 0xFFFF;														/*											*/
	}
	else
	{
		TIM->CNT		= 0xFFFF - TIM->ARR;
	}		
	
	TIM->CCMR2 	= (0x68ul << 8);											/* PWM Mode 1						*/
  TIM->DIER 	= TIM_DIER_CC4IE;											/*											*/
	TIM->CCER		=	TIM_CCER_CC4E;	
	/*TIM3 включается от TIM1																																					*/
	TIM->SMCR		= TIM_SMCR_SMS_Gate;
	
	TIM->CR2		= TIM_CR2_MMS_OC4;										/* Запускаем внутреннее АЦП											*/
	
	TIM->CR1		= (TIM_CR1_ARPE | TIM_CR1_CEN);

	NVIC_SetPriority(TIM3_IRQn,TIM3_Prty);
	NVIC_EnableIRQ(TIM3_IRQn);												/*				*/
#endif
	
}

void TIM3_IRQHandler(void) {
int i;
	TIM3->SR = ~TIM_SR_CC4IF;
	for (i = 0; i < 16; i++) *PrgData.pExtADCArray++ = ExtADC[i];
	if (PrgData.pExtADCArray == &PrgData.ExtADCArray[16*ADCxCycle]) PrgData.pExtADCArray = PrgData.ExtADCArray;
}







