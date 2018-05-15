#include "stm32f4xx.h"
#include "global.h"


#define ADC_trig	0x08ul
//#define ADC_trig	0x0Eul
/*
0000: Timer 1 CC1 event
0001: Timer 1 CC2 event
0010: Timer 1 CC3 event
0011: Timer 2 CC2 event
0100: Timer 2 CC3 event
0101: Timer 2 CC4 event
0110: Timer 2 TRGO event
0111: Timer 3 CC1 event
1000: Timer 3 TRGO event
1001: Timer 4 CC4 event
1010: Timer 5 CC1 event
1011: Timer 5 CC2 event
1100: Timer 5 CC3 event
1101: Timer 8 CC1 event
1110: Timer 8 TRGO event
1111: EXTI line11
*/

#define ADC_trig_edge	0x01ul
/*
01: Trigger detection on the rising edge
10: Trigger detection on the falling edge
11: Trigger detection on both the rising and falling edges
*/

#define ADC_Sample_Time	0x03ul
/*
	Conversion time = Sample Time + 12 ADC cycles
*/
/*
000: 3 ADC cycles
001: 15 ADC cycles
010: 28 ADC cycles
011: 56 ADC cycles
100: 84 ADC cycles
101: 112 ADC cycles
110: 144 ADC cycles
111: 480 ADC cycles
*/

#define N_SQ			2ul

#define	ADC1_SQ1	AI_Ch1
#define ADC2_SQ1	AI_Ch2

#define	ADC1_SQ2	AI_Ch3
#define ADC2_SQ2	AI_Ch4

#define	ADC1_SQ3	AI_Ch3
#define ADC2_SQ3	AI_Ch4

void InitIntADC() {
	
  SYSCFG->PMC		|= (SYSCFG_PMC_ADC1DC2);

	/*Clock Enable for ADC1 & ADC2*/
	RCC->APB2ENR	|= (RCC_APB2ENR_ADC1EN | RCC_APB2ENR_ADC2EN);

	ADC->CCR		=	 0x06   			 |				/*Dual ADC Regular simultaneous mode only	*/
								(0x02ul << 14) |				/*DMA mode 2 enabled											*/
	  						 ADC_CCR_DDS	 |				/*DMA not stop														*/
								(0x01ul	<< 16) ;				/*ADCCLK = APB2CLK / 4 = 21 MHz						*/
	
	ADC1->CR1		= ADC_CR1_SCAN;
	ADC2->CR1		= ADC_CR1_SCAN;
	
	ADC1->CR2		= ADC_CR2_ADON | (ADC_trig << 24) | (ADC_trig_edge << 28);// | ADC_CR2_ALIGN;

	ADC2->CR2		= ADC_CR2_ADON;// | ADC_CR2_ALIGN;
	
	/* Время преобразования для обоих АЦП, одинаковое для всех каналов									*/
	ADC1->SMPR1	= 												(ADC_Sample_Time << 24)|(ADC_Sample_Time << 21)|(ADC_Sample_Time << 18)|(ADC_Sample_Time << 15)|
								(ADC_Sample_Time << 12)|(ADC_Sample_Time <<  9)|(ADC_Sample_Time <<  6)|(ADC_Sample_Time <<  3)|(ADC_Sample_Time << 0);

	ADC1->SMPR2	= (ADC_Sample_Time << 27)|(ADC_Sample_Time << 24)|(ADC_Sample_Time << 21)|(ADC_Sample_Time << 18)|(ADC_Sample_Time << 15)|
								(ADC_Sample_Time << 12)|(ADC_Sample_Time <<  9)|(ADC_Sample_Time <<  6)|(ADC_Sample_Time <<  3)|(ADC_Sample_Time << 0);
	
	ADC2->SMPR1	= 												(ADC_Sample_Time << 24)|(ADC_Sample_Time << 21)|(ADC_Sample_Time << 18)|(ADC_Sample_Time << 15)|
								(ADC_Sample_Time << 12)|(ADC_Sample_Time <<  9)|(ADC_Sample_Time <<  6)|(ADC_Sample_Time <<  3)|(ADC_Sample_Time << 0);
	
	ADC2->SMPR2	= (ADC_Sample_Time << 27)|(ADC_Sample_Time << 24)|(ADC_Sample_Time << 21)|(ADC_Sample_Time << 18)|(ADC_Sample_Time << 15)|
								(ADC_Sample_Time << 12)|(ADC_Sample_Time <<  9)|(ADC_Sample_Time <<  6)|(ADC_Sample_Time <<  3)|(ADC_Sample_Time << 0);
	
	
	/*Выбор каналов*/
	ADC1->SQR1	= ((N_SQ - 1) << 20);
	ADC2->SQR1	= ((N_SQ - 1) << 20);
	
	ADC1->SQR3	= (ADC1_SQ3 << 10) | (ADC1_SQ2 << 5) | (ADC1_SQ1);
	ADC2->SQR3	= (ADC2_SQ3 << 10) | (ADC2_SQ2 << 5) | (ADC2_SQ1);

	/*Настройка DMA*/
	RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN;													/* DMA2 Clock enable									*/

	/* ADC DMA Configuration	-----------------------------------------------------------------------	*/
	DMA2->HIFCR				 	= (0x3Dul << 0);												/* Clear DMA interrupr status bits		*/
	DMA2_Stream4->PAR 	= (unsigned int)&(ADC->CDR);
	DMA2_Stream4->M0AR 	= (unsigned int)StdPrms.IntADCData;
	DMA2_Stream4->NDTR 	= N_SQ * ADCxCycle;
	DMA2_Stream4->CR	 	= (0ul << 25) 	|												/* Channel #0													*/
												(0ul<< 6)			|												/* Data transfer direction P-to-M			*/
												DMA_SxCR_CIRC	|												/* Circular mode											*/
												DMA_SxCR_MINC	|												/* Memory increment mode							*/
												DMA_SxCR_TCIE	|												/* Transmit complete interrupe				*/
												DMA_SxCR_PSIZE_32	|										/* Peripheral data size-word (32 bit) */
												DMA_SxCR_MSIZE_32	|										/* Memory data size-word (32 bit)			*/
												DMA_SxCR_PL_VeryHI|										/* Priority level - very high					*/
												DMA_SxCR_EN;													/* Channel enable											*/

	NVIC_SetPriority(DMA2_Stream4_IRQn, DMA2_Stream4_Prty);
	NVIC_EnableIRQ(DMA2_Stream4_IRQn);
}


