#define APB1CLK	(SystemCoreClock / 4)
#define APB2CLK	(SystemCoreClock / 2)
#define	AHB_CLK	(SystemCoreClock / 1)

#define PWMFreq		2000
#define MainCycle	PWMFreq
#define ADCxCycle	8

__inline void nop(int n) {while (n--) __nop();}



#define PeriphBB(reg,bit) (*(volatile unsigned int *)((((unsigned int)(&reg) - PERIPH_BASE)*32 + bit*4) + PERIPH_BB_BASE))
#define Pi 3.1415926535897932384626433832795f

#define MAX(x,y) ((x) > (y) ? (x)  : (y))
#define MIN(x,y) ((x) < (y) ? (x)  : (y))

#define ABS(x)	 ((x) <  0  ? (-x) : (x))

#define __abs(x) ((x) >  0  ? (x)	 : (__USAT(0-(x),(sizeof(x) << 3) - 1)))

#if defined (EK_PP_0215_12_02) || defined (EK_PP_0815_12_03)
// #define LedToggle()	PeriphBB(GPIOG->ODR,8) ^= 1;	
#elif defined (EK_CPU_0715_03)
// #define LedToggle()	PeriphBB(GPIOG->ODR,0) ^= 1;	
#else
// #define LedToggle()	PeriphBB(GPIOA->ODR,8) ^= 1;	
#endif


#include "defines.h"

#include "IntPrty.h"
#include "pult.h"
#include "usart.h"
#include "rtc.h"
#include "IntADC.h"
#include "Extmemadc.h"
#include "fram.h"
#include "mcan.h"

#include "Protocol.h"
#include "StdFunc.h"
#include "Termodat.h"

#include "Oscil.h"
#include "Metro.h"







