/* Uncomment your board type	*/
#ifndef EK_PP_0815_12_03
	#define EK_PP_0815_12_03
#endif




/*
	����� EK_PP_0815_12_03
*/
#if defined (EK_PP_0815_12_03)

#define YES 	1
#define NO  	0

/* ���������									*/
#define LedToggle()				{PeriphBB(GPIOG->ODR,8) ^= 1;}

/* ���� ��������� �������			*/
#define RTC_Present					YES

/* ������� ������	� ������ ���*/
#define ExtMem_Present			YES
#define ExtADC_Present			YES

/*	��������� USART-��				*/
#define USART1_PRESENT			YES
#define USART2_PRESENT			YES
#define USART3_PRESENT			YES
#define UART4_PRESENT				YES
#define UART5_PRESENT				YES
#define USART6_PRESENT			NO
#define UART7_PRESENT				NO
#define UART8_PRESENT				NO

#define X14_15		1
#define X16_17		2
#define X13				3
#define X6				4
#define X8_9			5

#define USART_GPIO_Config		NO





#endif
