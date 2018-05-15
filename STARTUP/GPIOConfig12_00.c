// <<< Use Configuration Wizard in Context Menu >>>
//	<e0.0> GPIO Port A Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	Pin PA0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	Pin PA1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	Pin PA2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	Pin PA3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	Pin PA4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	Pin PA5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	Pin PA6	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	Pin PA7	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	Pin PA8 (LED)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	Pin PA9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	Pin PA10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	Pin PA11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	Pin PA12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	Pin PA13 (ACT OE)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	Pin PA14 (SD Detect)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	Pin PA15 (SD CS)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	Pin PA0 - Output open-drain
//			<q2.1>	Pin PA1 - Output open-drain
//			<q2.2>	Pin PA2 - Output open-drain
//			<q2.3>	Pin PA3 - Output open-drain
//			<q2.4>	Pin PA4 - Output open-drain
//			<q2.5>	Pin PA5 - Output open-drain
//			<q2.6>	Pin PA6 - Output open-drain
//			<q2.7>	Pin PA7 - Output open-drain
//			<q2.8>	Pin PA8 (LED) - Output open-drain
//			<q2.9>	Pin PA9 - Output open-drain
//			<q2.10>	Pin PA10 - Output open-drain
//			<q2.11>	Pin PA11 - Output open-drain
//			<q2.12>	Pin PA12 - Output open-drain
//			<q2.13>	Pin PA13 (ACT OE) - Output open-drain
//			<q2.14>	Pin PA14 (SD Detect) - Output open-drain
//			<q2.15>	Pin PA15 (SD CS) - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	Pin PA0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	Pin PA1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	Pin PA2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	Pin PA3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	Pin PA4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	Pin PA5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	Pin PA6	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	Pin PA7	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	Pin PA8 (LED)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	Pin PA9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	Pin PA10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	Pin PA11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	Pin PA12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	Pin PA13 (ACT OE)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	Pin PA14 (SD Detect)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	Pin PA15 (SD CS)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	Pin PA0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	Pin PA1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	Pin PA2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	Pin PA3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	Pin PA4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	Pin PA5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	Pin PA6	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	Pin PA7	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	Pin PA8 (LED)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	Pin PA9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	Pin PA10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	Pin PA11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	Pin PA12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	Pin PA13 (ACT OE)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	Pin PA14 (SD Detect)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	Pin PA15 (SD CS)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	Pin PA0 - Set
//			<q5.1>	Pin PA1 - Set
//			<q5.2>	Pin PA2 - Set
//			<q5.3>	Pin PA3 - Set
//			<q5.4>	Pin PA4 - Set
//			<q5.5>	Pin PA5 - Set
//			<q5.6>	Pin PA6 - Set
//			<q5.7>	Pin PA7 - Set
//			<q5.8>	Pin PA8 (LED) - Set
//			<q5.9>	Pin PA9 - Set
//			<q5.10>	Pin PA10 - Set
//			<q5.11>	Pin PA11 - Set
//			<q5.12>	Pin PA12 - Set
//			<q5.13>	Pin PA13 (ACT OE) - Set
//			<q5.14>	Pin PA14 (SD Detect) - Set
//			<q5.15>	Pin PA15 (SD CS) - Set
//			<q5.16>	Pin PA0 - Reset
//			<q5.17>	Pin PA1 - Reset
//			<q5.18>	Pin PA2 - Reset
//			<q5.19>	Pin PA3 - Reset
//			<q5.20>	Pin PA4 - Reset
//			<q5.21>	Pin PA5 - Reset
//			<q5.22>	Pin PA6 - Reset
//			<q5.23>	Pin PA7 - Reset
//			<q5.24>	Pin PA8 (LED) - Reset
//			<q5.25>	Pin PA9 - Reset
//			<q5.26>	Pin PA10 - Reset
//			<q5.27>	Pin PA11 - Reset
//			<q5.28>	Pin PA12 - Reset
//			<q5.29>	Pin PA13 (ACT OE) - Reset
//			<q5.30>	Pin PA14 (SD Detect) - Reset
//			<q5.31>	Pin PA15 (SD CS) - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		Pin PA0	
//				<1=> TIM2_CH1 (default 12-00, 12-01, 12-02)
//				<2=> TIM5_CH1
//			<o6.4..7>		Pin PA1	
//				<1=> TIM2_CH2 (default 12-00, 12-01, 12-02)
//				<2=> TIM5_CH2
//			<o6.8..11>	Pin PA2	
//				<1=> TIM2_CH3 (default 12-00, 12-01, 12-02)
//				<2=> TIM5_CH3
//				<3=> TIM9_CH1
//			<o6.12..15>	Pin PA3		
//				<0=> AF0 (default 12-02)
//				<1=> TIM2_CH4 (default 12-00, 12-01)
//				<2=> TIM5_CH4
//				<3=> TIM9_CH2
//			<o6.16..19>	Pin PA4	
//				<0=> AF0 (default)
//			<o6.20..23>	Pin PA5	
//				<0=> AF0 (default)
//			<o6.24..27>	Pin PA6	
//				<0=> AF0 (default 12-00, 12-01)
//				<1=> TIM1_BKIN
//				<2=> TIM3_CH1
//				<3=> TIM8_BKIN (default 12-02)
//				<9=> TIM13_CH1
//			<o6.28..31>	Pin PA7	
//				<0=> AF0 (default 12-00, 12-01, 12-02)
//				<1=> TIM1_CH1N
//				<2=> TIM3_CH2
//				<3=> TIM8_CH1N
//				<9=> TIM14_CH1
//			<o7.0..3>		Pin PA8 (LED)	
//				<1=> TIM1_CH1 (default 12-02)
//				<2=> AF2 (default 12-00, 12-01)
//			<o7.4..7>	Pin PA9
//				<0=> AF0 (default 12-00, 12-01)
//				<1=> TIM1_CH2 (default 12-02)
//				<7=> USART1_TX
//			<o7.8..11> Pin PA10	
//				<0=> AF0 (default 12-00, 12-01)
//				<1=> TIM1_CH3 (default 12-02)
//				<7=> USART1_RX
//			<o7.12..15> Pin PA11	
//				<1=> TIM1_CH4 (default 12-02)
//				<9=> CAN1_RX
//				<10=> OTG_FS_DM (default 12-00, 12-01)
//			<o7.16..19> Pin PA12	
//				<0=> AF0 (default 12-02)
//				<9=> CAN1_TX
//				<10=> OTG_FS_DP (default 12-00, 12-01)
//			<o7.20..23> Pin PA13 (ACT OE)	
//				<1=> AF1 (default)
//			<o7.24..27> Pin PA14 (SD Detect)	
//				<1=> AF1 (default)
//			<o7.28..31> Pin PA15 (SD CS)	
//				<2=> AF2 (default)
//		</e>
#define GPIOACLOCK			0x0001
#define GPIOAMODER			0x4681FFAA
#define GPIOAOTYPER			0x0000
#define GPIOAOSPEEDR		0x02800000
#define GPIOAPUPDR			0x10000000
#define GPIOABSRR				0x5EFFA100
#define GPIOAAFRL				0x00001111
#define GPIOAAFRH				0x211AA002
//	</e>		

//	<e0.0> GPIO Port B Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PB0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PB1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PB2 (ADC Reset)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PB3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PB4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PB5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PB6	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PB7	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PB8	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PB9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PB10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PB11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	PB12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	PB13	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	PB14	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	PB15	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PB0 - Output open-drain
//			<q2.1>	PB1 - Output open-drain
//			<q2.2>	PB2 (ADC Reset) - Output open-drain
//			<q2.3>	PB3 - Output open-drain
//			<q2.4>	PB4 - Output open-drain
//			<q2.5>	PB5 - Output open-drain
//			<q2.6>	PB6 - Output open-drain
//			<q2.7>	PB7 - Output open-drain
//			<q2.8>	PB8 - Output open-drain
//			<q2.9>	PB9 - Output open-drain
//			<q2.10>	PB10 - Output open-drain
//			<q2.11>	PB11 - Output open-drain
//			<q2.12>	PB12 - Output open-drain
//			<q2.13>	PB13 - Output open-drain
//			<q2.14>	PB14 - Output open-drain
//			<q2.15>	PB15 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PB0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PB1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PB2 (ADC Reset)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PB3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PB4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PB5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PB6	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PB7	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PB8	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PB9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PB10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PB11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	PB12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	PB13	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	PB14	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	PB15	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PB0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PB1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PB2 (ADC Reset)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PB3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PB4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PB5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PB6	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PB7	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PB8	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PB9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PB10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PB11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	PB12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	PB13	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	PB14	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	PB15	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PB0 - Set
//			<q5.1>	PB1 - Set
//			<q5.2>	PB2 (ADC Reset) - Set
//			<q5.3>	PB3 - Set
//			<q5.4>	PB4 - Set
//			<q5.5>	PB5 - Set
//			<q5.6>	PB6 - Set
//			<q5.7>	PB7 - Set
//			<q5.8>	PB8 - Set
//			<q5.9>	PB9 - Set
//			<q5.10>	PB10 - Set
//			<q5.11>	PB11 - Set
//			<q5.12>	PB12 - Set
//			<q5.13>	PB13 - Set
//			<q5.14>	PB14 - Set
//			<q5.15>	PB15 - Set
//			<q5.16>	PB0 - Reset
//			<q5.17>	PB1 - Reset
//			<q5.18>	PB2 (ADC Reset) - Reset
//			<q5.19>	PB3 - Reset
//			<q5.20>	PB4 - Reset
//			<q5.21>	PB5 - Reset
//			<q5.22>	PB6 - Reset
//			<q5.23>	PB7 - Reset
//			<q5.24>	PB8 - Reset
//			<q5.25>	PB9 - Reset
//			<q5.26>	PB10 - Reset
//			<q5.27>	PB11 - Reset
//			<q5.28>	PB12 - Reset
//			<q5.29>	PB13 - Reset
//			<q5.30>	PB14 - Reset
//			<q5.31>	PB15 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PB0	
//				<0=> AF0 (defaul 12-00, 12-01)
//				<1=> TIM1_CH2N
//				<2=> TIM3_CH3
//				<3=> TIM8_CH2N
//			<o6.4..7>		PB1	
//				<0=> AF0 (defaul 12-00, 12-01)
//				<1=> TIM1_CH3N
//				<2=> TIM3_CH4
//				<3=> TIM8_CH3N
//			<o6.8..11>	PB2 (ADC Reset)	
//				<0=> AF0 (default)
//			<o6.12..15>	PB3		
//				<5=> SPI1_SCK
//				<6=> SPI3_SCK (default 12-00, 12-01, 12-02)
//			<o6.16..19>	PB4	
//				<2=> TIM3_CH1
//				<5=> SPI1_MISO
//				<6=> SPI3_MISO (default 12-00, 12-01, 12-02)
//			<o6.20..23>	PB5	
//				<2=> TIM3_CH2
//				<5=> SPI1_MOSI
//				<6=> SPI3_MOSI (default 12-00, 12-01, 12-02)
//			<o6.24..27>	PB6	
//				<7=> USART1_TX (default 12-00, 12-01, 12-02)
//			<o6.28..31>	PB7	
//				<7=> USART1_RX (default 12-00, 12-01, 12-02)
//			<o7.0..3>		PB8	
//				<9=> CAN1_RX (default 12-00, 12-01, 12-02)
//			<o7.4..7>	PB9
//				<9=> CAN1_TX (default 12-00, 12-01, 12-02)
//			<o7.8..11> PB10	
//				<7=> USART3_TX (default 12-00, 12-01, 12-02)
//			<o7.12..15> PB11	
//				<7=> USART3_RX (default 12-00, 12-01, 12-02)
//			<o7.16..19> PB12
//				<1=> TIM1_BKIN (default 12-02)
//				<9=> CAN2_RX (default 12-00, 12-01)
//			<o7.20..23> PB13	
//				<1=> TIM1_CH1N (default 12-02)
//				<9=> CAN2_TX (default 12-00, 12-01)
//			<o7.24..27> PB14	
//				<1=> TIM1_CH2N (default 12-02)
//				<5=> SPI2_MISO (default 12-00)
//				<12=> OTG_HS_DM (default 12-01)
//			<o7.28..31> PB15	
//				<1=> TIM1_CH3N (default 12-02)
//				<5=> SPI2_MOSI (default 12-00)
//				<12=> OTG_HS_DP (default 12-01)
//		</e>
#define GPIOBCLOCK			0x0001
#define GPIOBMODER			0xAAAAAA9F
#define GPIOBOTYPER			0x0000
#define GPIOBOSPEEDR		0x55555540
#define GPIOBPUPDR			0x00000000
#define GPIOBBSRR				0xFFFF0000
#define GPIOBAFRL				0x77666000
#define GPIOBAFRH				0x55997799
//	</e>		

//	<e0.0> GPIO Port C Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PC0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PC1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PC2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PC3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PC4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PC5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PC6	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PC7	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PC8	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PC9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PC10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PC11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	PC12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	PC13	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	PC14	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	PC15	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PC0 - Output open-drain
//			<q2.1>	PC1 - Output open-drain
//			<q2.2>	PC2 - Output open-drain
//			<q2.3>	PC3 - Output open-drain
//			<q2.4>	PC4 - Output open-drain
//			<q2.5>	PC5 - Output open-drain
//			<q2.6>	PC6 - Output open-drain
//			<q2.7>	PC7 - Output open-drain
//			<q2.8>	PC8 - Output open-drain
//			<q2.9>	PC9 - Output open-drain
//			<q2.10>	PC10 - Output open-drain
//			<q2.11>	PC11 - Output open-drain
//			<q2.12>	PC12 - Output open-drain
//			<q2.13>	PC13 - Output open-drain
//			<q2.14>	PC14 - Output open-drain
//			<q2.15>	PC15 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PC0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PC1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PC2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PC3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PC4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PC5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PC6	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PC7	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PC8	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PC9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PC10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PC11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	PC12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	PC13	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	PC14	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	PC15	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PC0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PC1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PC2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PC3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PC4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PC5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PC6	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PC7	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PC8	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PC9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PC10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PC11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	PC12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	PC13	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	PC14	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	PC15	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PC0 - Set
//			<q5.1>	PC1 - Set
//			<q5.2>	PC2 - Set
//			<q5.3>	PC3 - Set
//			<q5.4>	PC4 - Set
//			<q5.5>	PC5 - Set
//			<q5.6>	PC6 - Set
//			<q5.7>	PC7 - Set
//			<q5.8>	PC8 - Set
//			<q5.9>	PC9 - Set
//			<q5.10>	PC10 - Set
//			<q5.11>	PC11 - Set
//			<q5.12>	PC12 - Set
//			<q5.13>	PC13 - Set
//			<q5.14>	PC14 - Set
//			<q5.15>	PC15 - Set
//			<q5.16>	PC0 - Reset
//			<q5.17>	PC1 - Reset
//			<q5.18>	PC2 - Reset
//			<q5.19>	PC3 - Reset
//			<q5.20>	PC4 - Reset
//			<q5.21>	PC5 - Reset
//			<q5.22>	PC6 - Reset
//			<q5.23>	PC7 - Reset
//			<q5.24>	PC8 - Reset
//			<q5.25>	PC9 - Reset
//			<q5.26>	PC10 - Reset
//			<q5.27>	PC11 - Reset
//			<q5.28>	PC12 - Reset
//			<q5.29>	PC13 - Reset
//			<q5.30>	PC14 - Reset
//			<q5.31>	PC15 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PC0	
//				<0=> AF0
//			<o6.4..7>		PC1	
//				<0=> AF0
//			<o6.8..11>	PC2	
//				<0=> AF0
//			<o6.12..15>	PC3		
//				<0=> AF0
//			<o6.16..19>	PC4	
//				<0=> AF0
//			<o6.20..23>	PC5	
//				<0=> AF0
//			<o6.24..27>	PC6	
//				<0=> AF0
//				<3=> TIM8_CH1 (default 12-00, 12-02)
//				<8=> USART6_TX (default 12-01)
//			<o6.28..31>	PC7	
//				<0=> AF0
//				<3=> TIM8_CH2 (default 12-00, 12-02)
//				<8=> USART6_RX (default 12-01)
//			<o7.0..3>		PC8	
//				<0=> AF0
//				<3=> TIM8_CH3 (default 12-00, 12-02)
//				<12=> SDIO_D0 (default 12-01)
//			<o7.4..7>	PC9
//				<0=> AF0
//				<3=> TIM8_CH4 (default)
//			<o7.8..11> PC10	
//				<0=> AF0
//				<8=> USART4_TX (default)
//			<o7.12..15> PC11	
//				<0=> AF0
//				<8=> USART4_RX (default)
//			<o7.16..19> PC12	
//				<0=> AF0
//				<8=> USART5_TX (default 12-00, 12-02)
//				<12=> SDIO_CK (default 12-01)
//			<o7.20..23> PC13	
//				<0=> AF0
//			<o7.24..27> PC14	
//				<0=> AF0
//			<o7.28..31> PC15	
//				<0=> AF0
//		</e>
#define GPIOCCLOCK			0x0001
#define GPIOCMODER			0x02AAAF00
#define GPIOCOTYPER			0x0000
#define GPIOCOSPEEDR		0x01555000
#define GPIOCPUPDR			0x00000000
#define GPIOCBSRR				0xFFF0000F
#define GPIOCAFRL				0x33000000
#define GPIOCAFRH				0x00088833
//	</e>		

//	<e0.0> GPIO Port D Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PD0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PD1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PD2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PD3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PD4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PD5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PD6 (USART1 (X8) DE)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PD7 (UART8 (X9) DE)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PD8	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PD9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PD10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PD11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	PD12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	PD13	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	PD14	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	PD15	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PD0 - Output open-drain
//			<q2.1>	PD1 - Output open-drain
//			<q2.2>	PD2 - Output open-drain
//			<q2.3>	PD3 - Output open-drain
//			<q2.4>	PD4 - Output open-drain
//			<q2.5>	PD5 - Output open-drain
//			<q2.6>	PD6 (USART1 (X8) DE) - Output open-drain
//			<q2.7>	PD7 (UART8 (X9) DE) - Output open-drain
//			<q2.8>	PD8 - Output open-drain
//			<q2.9>	PD9 - Output open-drain
//			<q2.10>	PD10 - Output open-drain
//			<q2.11>	PD11 - Output open-drain
//			<q2.12>	PD12 - Output open-drain
//			<q2.13>	PD13 - Output open-drain
//			<q2.14>	PD14 - Output open-drain
//			<q2.15>	PD15 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PD0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PD1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PD2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PD3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PD4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PD5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PD6 (USART1 (X8) DE)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PD7 (UART8 (X9) DE)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PD8	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PD9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PD10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PD11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	PD12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	PD13	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	PD14	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	PD15	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PD0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PD1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PD2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PD3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PD4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PD5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PD6 (USART1 (X8) DE)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PD7 (UART8 (X9) DE)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PD8	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PD9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PD10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PD11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	PD12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	PD13	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	PD14	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	PD15	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PD0 - Set
//			<q5.1>	PD1 - Set
//			<q5.2>	PD2 - Set
//			<q5.3>	PD3 - Set
//			<q5.4>	PD4 - Set
//			<q5.5>	PD5 - Set
//			<q5.6>	PD6 (USART1 (X8) DE) - Set
//			<q5.7>	PD7 (UART8 (X9) DE) - Set
//			<q5.8>	PD8 - Set
//			<q5.9>	PD9 - Set
//			<q5.10>	PD10 - Set
//			<q5.11>	PD11 - Set
//			<q5.12>	PD12 - Set
//			<q5.13>	PD13 - Set
//			<q5.14>	PD14 - Set
//			<q5.15>	PD15 - Set
//			<q5.16>	PD0 - Reset
//			<q5.17>	PD1 - Reset
//			<q5.18>	PD2 - Reset
//			<q5.19>	PD3 - Reset
//			<q5.20>	PD4 - Reset
//			<q5.21>	PD5 - Reset
//			<q5.22>	PD6 (USART1 (X8) DE) - Reset
//			<q5.23>	PD7 (UART8 (X9) DE) - Reset
//			<q5.24>	PD8 - Reset
//			<q5.25>	PD9 - Reset
//			<q5.26>	PD10 - Reset
//			<q5.27>	PD11 - Reset
//			<q5.28>	PD12 - Reset
//			<q5.29>	PD13 - Reset
//			<q5.30>	PD14 - Reset
//			<q5.31>	PD15 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PD0
//				<12=> FMC_D2 (default)
//			<o6.4..7>		PD1	
//				<12=> FMC_D3 (default)
//			<o6.8..11>	PD2	
//				<8=> USART5_RX (default 12-00, 12-02)
//				<12=> SDIO_CMD (default 12-01)
//			<o6.12..15>	PD3		
//				<5=> SPI2_SCK (default 12-00)
//			<o6.16..19>	PD4	
//				<12=> FMC_NOE (default)
//			<o6.20..23>	PD5	
//				<12=> FMC_NWE (default)
//			<o6.24..27>	PD6 (USART1 (X8) DE)	
//				<0=> AF0 (default)
//			<o6.28..31>	PD7 (UART8 (X9) DE)	
//				<0=> AF0 (default 12-00, 12-01)
//				<12=> FMC_NE1 (default 12-02)
//			<o7.0..3>		PD8	
//				<12=> FMC_D13 (default)
//			<o7.4..7>	PD9
//				<12=> FMC_D14 (default)
//			<o7.8..11> PD10	
//				<12=> FMC_D15 (default)
//			<o7.12..15> PD11	
//				<12=> FMC_A16 (default)
//			<o7.16..19> PD12	
//				<12=> FMC_A17 (default)
//			<o7.20..23> PD13	
//				<12=> FMC_A18 (default)
//			<o7.24..27> PD14	
//				<12=> FMC_D0 (default)
//			<o7.28..31> PD15	
//				<12=> FMC_D1 (default)
//		</e>
#define GPIODCLOCK			0x0001
#define GPIODMODER			0xAAAA5AAA
#define GPIODOTYPER			0x0000
#define GPIODOSPEEDR		0xFFFF0F9F
#define GPIODPUPDR			0x00000000
#define GPIODBSRR				0xFFFF0000
#define GPIODAFRL				0x00CC58CC
#define GPIODAFRH				0xCCCCCCCC
//	</e>		

//	<e0.0> GPIO Port E Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PE0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PE1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PE2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PE3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PE4 (FRAM CS)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PE5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PE6	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PE7	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PE8	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PE9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PE10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PE11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	PE12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	PE13	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	PE14	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	PE15	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PE0 - Output open-drain
//			<q2.1>	PE1 - Output open-drain
//			<q2.2>	PE2 - Output open-drain
//			<q2.3>	PE3 - Output open-drain
//			<q2.4>	PE4 (FRAM CS) - Output open-drain
//			<q2.5>	PE5 - Output open-drain
//			<q2.6>	PE6 - Output open-drain
//			<q2.7>	PE7 - Output open-drain
//			<q2.8>	PE8 - Output open-drain
//			<q2.9>	PE9 - Output open-drain
//			<q2.10>	PE10 - Output open-drain
//			<q2.11>	PE11 - Output open-drain
//			<q2.12>	PE12 - Output open-drain
//			<q2.13>	PE13 - Output open-drain
//			<q2.14>	PE14 - Output open-drain
//			<q2.15>	PE15 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PE0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PE1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PE2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PE3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PE4 (FRAM CS)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PE5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PE6	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PE7	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PE8	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PE9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PE10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PE11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	PE12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	PE13	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	PE14	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	PE15	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PE0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PE1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PE2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PE3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PE4 (FRAM CS)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PE5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PE6	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PE7	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PE8	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PE9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PE10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PE11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	PE12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	PE13	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	PE14	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	PE15	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PE0 - Set
//			<q5.1>	PE1 - Set
//			<q5.2>	PE2 - Set
//			<q5.3>	PE3 - Set
//			<q5.4>	PE4 (FRAM CS) - Set
//			<q5.5>	PE5 - Set
//			<q5.6>	PE6 - Set
//			<q5.7>	PE7 - Set
//			<q5.8>	PE8 - Set
//			<q5.9>	PE9 - Set
//			<q5.10>	PE10 - Set
//			<q5.11>	PE11 - Set
//			<q5.12>	PE12 - Set
//			<q5.13>	PE13 - Set
//			<q5.14>	PE14 - Set
//			<q5.15>	PE15 - Set
//			<q5.16>	PE0 - Reset
//			<q5.17>	PE1 - Reset
//			<q5.18>	PE2 - Reset
//			<q5.19>	PE3 - Reset
//			<q5.20>	PE4 (FRAM CS) - Reset
//			<q5.21>	PE5 - Reset
//			<q5.22>	PE6 - Reset
//			<q5.23>	PE7 - Reset
//			<q5.24>	PE8 - Reset
//			<q5.25>	PE9 - Reset
//			<q5.26>	PE10 - Reset
//			<q5.27>	PE11 - Reset
//			<q5.28>	PE12 - Reset
//			<q5.29>	PE13 - Reset
//			<q5.30>	PE14 - Reset
//			<q5.31>	PE15 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PE0	
//				<8=> UART8_RX (default)
//			<o6.4..7>		PE1	
//				<8=> UART8_TX (default)
//			<o6.8..11>	PE2	
//				<5=> SPI4_SCK (default)
//			<o6.12..15>	PE3		
//				<1=> AF1 (default 12-02)
//				<12=> FMC_A19 (default 12-00, 12-01)
//			<o6.16..19>	PE4 (FRAM CS)	
//				<1=> AF1 (default)
//			<o6.20..23>	PE5	
//				<5=> SPI4_MISO (default)
//			<o6.24..27>	PE6	
//				<5=> SPI4_MOSI (default)
//			<o6.28..31>	PE7	
//				<12=> FMC_D4 (default)
//			<o7.0..3>		PE8	
//				<12=> FMC_D5 (default)
//			<o7.4..7>	PE9
//				<12=> FMC_D6 (default)
//			<o7.8..11> PE10	
//				<12=> FMC_D7 (default)
//			<o7.12..15> PE11	
//				<12=> FMC_D8 (default)
//			<o7.16..19> PE12	
//				<12=> FMC_D9 (default)
//			<o7.20..23> PE13	
//				<12=> FMC_D10 (default)
//			<o7.24..27> PE14	
//				<12=> FMC_D11 (default)
//			<o7.28..31> PE15	
//				<12=> FMC_D12 (default)
//		</e>
#define GPIOECLOCK			0x0001
#define GPIOEMODER			0xAAAAA9AA
#define GPIOEOTYPER			0x0000
#define GPIOEOSPEEDR		0xFFFFE8E5
#define GPIOEPUPDR			0x00000000
#define GPIOEBSRR				0xFFEF0010
#define GPIOEAFRL				0xC551C588
#define GPIOEAFRH				0xCCCCCCCC
//	</e>		

//	<e0.0> GPIO Port F Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PF0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PF1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PF2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PF3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PF4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PF5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PF6	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PF7	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PF8	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PF9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PF10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PF11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	PF12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	PF13	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	PF14	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	PF15	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PF0 - Output open-drain
//			<q2.1>	PF1 - Output open-drain
//			<q2.2>	PF2 - Output open-drain
//			<q2.3>	PF3 - Output open-drain
//			<q2.4>	PF4 - Output open-drain
//			<q2.5>	PF5 - Output open-drain
//			<q2.6>	PF6 - Output open-drain
//			<q2.7>	PF7 - Output open-drain
//			<q2.8>	PF8 - Output open-drain
//			<q2.9>	PF9 - Output open-drain
//			<q2.10>	PF10 - Output open-drain
//			<q2.11>	PF11 - Output open-drain
//			<q2.12>	PF12 - Output open-drain
//			<q2.13>	PF13 - Output open-drain
//			<q2.14>	PF14 - Output open-drain
//			<q2.15>	PF15 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PF0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PF1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PF2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PF3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PF4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PF5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PF6	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PF7	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PF8	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PF9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PF10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PF11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	PF12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	PF13	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	PF14	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	PF15	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PF0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PF1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PF2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PF3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PF4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PF5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PF6	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PF7	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PF8	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PF9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PF10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PF11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	PF12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	PF13	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	PF14	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	PF15	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PF0 - Set
//			<q5.1>	PF1 - Set
//			<q5.2>	PF2 - Set
//			<q5.3>	PF3 - Set
//			<q5.4>	PF4 - Set
//			<q5.5>	PF5 - Set
//			<q5.6>	PF6 - Set
//			<q5.7>	PF7 - Set
//			<q5.8>	PF8 - Set
//			<q5.9>	PF9 - Set
//			<q5.10>	PF10 - Set
//			<q5.11>	PF11 - Set
//			<q5.12>	PF12 - Set
//			<q5.13>	PF13 - Set
//			<q5.14>	PF14 - Set
//			<q5.15>	PF15 - Set
//			<q5.16>	PF0 - Reset
//			<q5.17>	PF1 - Reset
//			<q5.18>	PF2 - Reset
//			<q5.19>	PF3 - Reset
//			<q5.20>	PF4 - Reset
//			<q5.21>	PF5 - Reset
//			<q5.22>	PF6 - Reset
//			<q5.23>	PF7 - Reset
//			<q5.24>	PF8 - Reset
//			<q5.25>	PF9 - Reset
//			<q5.26>	PF10 - Reset
//			<q5.27>	PF11 - Reset
//			<q5.28>	PF12 - Reset
//			<q5.29>	PF13 - Reset
//			<q5.30>	PF14 - Reset
//			<q5.31>	PF15 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PF0
//				<12=> FMC_A0 (default)
//			<o6.4..7>		PF1	
//				<12=> FMC_A1 (default)
//			<o6.8..11>	PF2	
//				<12=> FMC_A2 (default)
//			<o6.12..15>	PF3		
//				<12=> FMC_A3 (default)
//			<o6.16..19>	PF4	
//				<12=> FMC_A4 (default)
//			<o6.20..23>	PF5	
//				<12=> FMC_A5 (default)
//			<o6.24..27>	PF6	
//				<3=> TIM10_CH1 (default 12-00, 12-01)
//			<o6.28..31>	PF7	
//				<3=> TIM11_CH1 (default 12-00, 12-01)
//			<o7.0..3>		PF8	
//				<9=> TIM13_CH1 (default 12-00, 12-01)
//			<o7.4..7>	PF9
//				<9=> TIM14_CH1 (default 12-00, 12-01)
//			<o7.8..11> PF10	
//				<0=> AF0 (default)
//			<o7.12..15> PF11	
//				<0=> AF0 (default)
//			<o7.16..19> PF12	
//				<12=> FMC_A6 (default)
//			<o7.20..23> PF13	
//				<12=> FMC_A7 (default)
//			<o7.24..27> PF14	
//				<12=> FMC_A8 (default)
//			<o7.28..31> PF15	
//				<12=> FMC_A9 (default)
//		</e>
#define GPIOFCLOCK			0x0021
#define GPIOFMODER			0xAA000AAA
#define GPIOFOTYPER			0x0000
#define GPIOFOSPEEDR		0xFF000FFF
#define GPIOFPUPDR			0x00000000
#define GPIOFBSRR				0xF03F0FC0
#define GPIOFAFRL				0x33CCCCCC
#define GPIOFAFRH				0xCCCC0099
//	</e>		

//	<e0.0> GPIO Port G Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PG0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PG1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PG2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PG3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PG4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PG5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PG6 (ADC CONVST)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PG7 (ADC2 BUSY)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PG8 (ADC1 BUSY)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PG9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PG10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PG11 (ACT 245 OE)	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	PG12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	PG13	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	PG14	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	PG15	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PG0 - Output open-drain
//			<q2.1>	PG1 - Output open-drain
//			<q2.2>	PG2 - Output open-drain
//			<q2.3>	PG3 - Output open-drain
//			<q2.4>	PG4 - Output open-drain
//			<q2.5>	PG5 - Output open-drain
//			<q2.6>	PG6 (ADC CONVST) - Output open-drain
//			<q2.7>	PG7 (ADC2 BUSY) - Output open-drain
//			<q2.8>	PG8 (ADC1 BUSY) - Output open-drain
//			<q2.9>	PG9 - Output open-drain
//			<q2.10>	PG10 - Output open-drain
//			<q2.11>	PG11 (ACT 245 OE) - Output open-drain
//			<q2.12>	PG12 - Output open-drain
//			<q2.13>	PG13 - Output open-drain
//			<q2.14>	PG14 - Output open-drain
//			<q2.15>	PG15 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PG0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PG1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PG2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PG3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PG4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PG5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PG6 (ADC CONVST)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PG7 (ADC2 BUSY)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PG8 (ADC1 BUSY)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PG9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PG10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PG11 (ACT 245 OE)	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	PG12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	PG13	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	PG14	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	PG15	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PG0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PG1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PG2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PG3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PG4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PG5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PG6 (ADC CONVST)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PG7 (ADC2 BUSY)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PG8 (ADC1 BUSY)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PG9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PG10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PG11 (ACT 245 OE)	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	PG12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	PG13	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	PG14	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	PG15	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PG0 - Set
//			<q5.1>	PG1 - Set
//			<q5.2>	PG2 - Set
//			<q5.3>	PG3 - Set
//			<q5.4>	PG4 - Set
//			<q5.5>	PG5 - Set
//			<q5.6>	PG6 (ADC CONVST) - Set
//			<q5.7>	PG7 (ADC2 BUSY) - Set
//			<q5.8>	PG8 (ADC1 BUSY) - Set
//			<q5.9>	PG9 - Set
//			<q5.10>	PG10 - Set
//			<q5.11>	PG11 (ACT 245 OE) - Set
//			<q5.12>	PG12 - Set
//			<q5.13>	PG13 - Set
//			<q5.14>	PG14 - Set
//			<q5.15>	PG15 - Set
//			<q5.16>	PG0 - Reset
//			<q5.17>	PG1 - Reset
//			<q5.18>	PG2 - Reset
//			<q5.19>	PG3 - Reset
//			<q5.20>	PG4 - Reset
//			<q5.21>	PG5 - Reset
//			<q5.22>	PG6 (ADC CONVST) - Reset
//			<q5.23>	PG7 (ADC2 BUSY) - Reset
//			<q5.24>	PG8 (ADC1 BUSY) - Reset
//			<q5.25>	PG9 - Reset
//			<q5.26>	PG10 - Reset
//			<q5.27>	PG11 (ACT 245 OE) - Reset
//			<q5.28>	PG12 - Reset
//			<q5.29>	PG13 - Reset
//			<q5.30>	PG14 - Reset
//			<q5.31>	PG15 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PG0	
//				<12=> FMC_A10 (default)
//			<o6.4..7>		PG1	
//				<12=> FMC_A11 (default)
//			<o6.8..11>	PG2	
//				<12=> FMC_A12 (default)
//			<o6.12..15>	PG3		
//				<12=> FMC_A13 (default)
//			<o6.16..19>	PG4	
//				<12=> FMC_A14 (default)
//			<o6.20..23>	PG5	
//				<12=> FMC_A15 (default)
//			<o6.24..27>	PG6 (ADC CONVST)	
//				<0=> AF0 (default)
//			<o6.28..31>	PG7 (ADC2 BUSY)	
//				<0=> AF0 (default)
//			<o7.0..3>		PG8 (ADC1 BUSY)	
//				<0=> AF0 (default)
//			<o7.4..7>	PG9
//				<12=> FMC_NE2 (default)
//			<o7.8..11> PG10	
//				<12=> FMC_NE3 (default)
//			<o7.12..15> PG11 (ACT 245 OE)	
//				<0=> AF0 (default)
//			<o7.16..19> PG12	
//				<0=> AF0 (default)
//			<o7.20..23> PG13	
//				<0=> AF0 (default)
//			<o7.24..27> PG14	
//				<0=> AF0 (default)
//			<o7.28..31> PG15	
//				<0=> AF0 (default)
//		</e>
#define GPIOGCLOCK			0x0001
#define GPIOGMODER			0x00681AAA
#define GPIOGOTYPER			0x0000
#define GPIOGOSPEEDR		0x003C0FFF
#define GPIOGPUPDR			0x00000000
#define GPIOGBSRR				0xF7BF0840
#define GPIOGAFRL				0x00CCCCCC
#define GPIOGAFRH				0x00000CC0
//	</e>		

//	<e0.0> GPIO Port H Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PH0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PH1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PH2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PH3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PH4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PH5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PH6	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PH7	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PH8	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PH9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PH10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PH11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.24..25>	PH12	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.26..27>	PH13	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.28..29>	PH14	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.30..31>	PH15	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PH0 - Output open-drain
//			<q2.1>	PH1 - Output open-drain
//			<q2.2>	PH2 - Output open-drain
//			<q2.3>	PH3 - Output open-drain
//			<q2.4>	PH4 - Output open-drain
//			<q2.5>	PH5 - Output open-drain
//			<q2.6>	PH6 - Output open-drain
//			<q2.7>	PH7 - Output open-drain
//			<q2.8>	PH8 - Output open-drain
//			<q2.9>	PH9 - Output open-drain
//			<q2.10>	PH10 - Output open-drain
//			<q2.11>	PH11 - Output open-drain
//			<q2.12>	PH12 - Output open-drain
//			<q2.13>	PH13 - Output open-drain
//			<q2.14>	PH14 - Output open-drain
//			<q2.15>	PH15 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PH0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PH1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PH2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PH3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PH4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PH5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PH6	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PH7	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PH8	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PH9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PH10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PH11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.24..25>	PH12	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.26..27>	PH13	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.28..29>	PH14	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.30..31>	PH15	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PH0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PH1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PH2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PH3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PH4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PH5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PH6	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PH7	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PH8	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PH9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PH10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PH11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.24..25>	PH12	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.26..27>	PH13	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.28..29>	PH14	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.30..31>	PH15	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PH0 - Set
//			<q5.1>	PH1 - Set
//			<q5.2>	PH2 - Set
//			<q5.3>	PH3 - Set
//			<q5.4>	PH4 - Set
//			<q5.5>	PH5 - Set
//			<q5.6>	PH6 - Set
//			<q5.7>	PH7 - Set
//			<q5.8>	PH8 - Set
//			<q5.9>	PH9 - Set
//			<q5.10>	PH10 - Set
//			<q5.11>	PH11 - Set
//			<q5.12>	PH12 - Set
//			<q5.13>	PH13 - Set
//			<q5.14>	PH14 - Set
//			<q5.15>	PH15 - Set
//			<q5.16>	PH0 - Reset
//			<q5.17>	PH1 - Reset
//			<q5.18>	PH2 - Reset
//			<q5.19>	PH3 - Reset
//			<q5.20>	PH4 - Reset
//			<q5.21>	PH5 - Reset
//			<q5.22>	PH6 - Reset
//			<q5.23>	PH7 - Reset
//			<q5.24>	PH8 - Reset
//			<q5.25>	PH9 - Reset
//			<q5.26>	PH10 - Reset
//			<q5.27>	PH11 - Reset
//			<q5.28>	PH12 - Reset
//			<q5.29>	PH13 - Reset
//			<q5.30>	PH14 - Reset
//			<q5.31>	PH15 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PH0	
//				<0=> AF0 (default)
//			<o6.4..7>		PH1	
//				<0=> AF0 (default)
//			<o6.8..11>	PH2	
//				<0=> AF0 (default)
//			<o6.12..15>	PH3		
//				<0=> AF0 (default)
//			<o6.16..19>	PH4	
//				<0=> AF0 (default)
//			<o6.20..23>	PH5	
//				<0=> AF0 (default)
//			<o6.24..27>	PH6	
//				<0=> AF0 (default)
//			<o6.28..31>	PH7	
//				<0=> AF0 (default)
//			<o7.0..3>		PH8	
//				<0=> AF0 (default)
//			<o7.4..7>	PH9
//				<0=> AF0 (default)
//			<o7.8..11> PH10	
//				<2=> TIM5_CH1 (default)
//			<o7.12..15> PH11	
//				<2=> TIM5_CH2 (default)
//			<o7.16..19> PH12	
//				<2=> TIM5_CH3 (default)
//			<o7.20..23> PH13	
//				<3=> TIM8_CH1N (default)
//			<o7.24..27> PH14	
//				<3=> TIM8_CH2N (default)
//			<o7.28..31> PH15	
//				<3=> TIM8_CH3N (default)
//		</e>
#define GPIOHCLOCK			0x0001
#define GPIOHMODER			0xAAA00000
#define GPIOHOTYPER			0x0000
#define GPIOHOSPEEDR		0x00000000
#define GPIOHPUPDR			0x00000000
#define GPIOHBSRR				0xFFFF0000
#define GPIOHAFRL				0x00000000
#define GPIOHAFRH				0x33322200
//	</e>		

//	<e0.0> GPIO Port I Configuration & Clock Enable
//		<e0.1> GPIO port mode register
//			<o1.0..1>	PI0	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.2..3>	PI1	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.4..5>	PI2	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.6..7>	PI3	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.8..9>	PI4	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.10..11>	PI5	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.12..13>	PI6	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.14..15>	PI7	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.16..17>	PI8	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.18..19>	PI9	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.20..21>	PI10	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//			<o1.22..23>	PI11	<0=> Input	<1=> General purpose output mode <2=> Alternate function mode <3=> Analog mode
//		</e>
//		<e0.2> GPIO port output type register
//			<q2.0>	PI0 - Output open-drain
//			<q2.1>	PI1 - Output open-drain
//			<q2.2>	PI2 - Output open-drain
//			<q2.3>	PI3 - Output open-drain
//			<q2.4>	PI4 - Output open-drain
//			<q2.5>	PI5 - Output open-drain
//			<q2.6>	PI6 - Output open-drain
//			<q2.7>	PI7 - Output open-drain
//			<q2.8>	PI8 - Output open-drain
//			<q2.9>	PI9 - Output open-drain
//			<q2.10>	PI10 - Output open-drain
//			<q2.11>	PI11 - Output open-drain
//		</e>
//		<e0.3> GPIO port output speed register
//			<o3.0..1>	PI0	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.2..3>	PI1	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.4..5>	PI2	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.6..7>	PI3	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.8..9>	PI4	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.10..11>	PI5	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.12..13>	PI6	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.14..15>	PI7	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.16..17>	PI8	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.18..19>	PI9	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.20..21>	PI10	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//			<o3.22..23>	PI11	<0=> Low speed (4MHz)	<1=> Medium speed (25 MHz) <2=> Fast speed (50 MHz) <3=> High speed (100 MHz)
//		</e>
//		<e0.4> GPIO port pull-up/pull-down register
//			<o4.0..1>	PI0	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.2..3>	PI1	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.4..5>	PI2	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.6..7>	PI3	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.8..9>	PI4	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.10..11>	PI5	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.12..13>	PI6	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.14..15>	PI7	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.16..17>	PI8	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.18..19>	PI9	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.20..21>	PI10	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//			<o4.22..23>	PI11	<0=> No pull-up, pull-down	<1=> Pull-up <2=> Pull-down <3=> Reserved
//		</e>
//		<e0.5> GPIO port set/reset register
//		<i> if both "Pin set" and "Pin reset" checked, "Pin set" has priority.
//			<q5.0>	PI0 - Set
//			<q5.1>	PI1 - Set
//			<q5.2>	PI2 - Set
//			<q5.3>	PI3 - Set
//			<q5.4>	PI4 - Set
//			<q5.5>	PI5 - Set
//			<q5.6>	PI6 - Set
//			<q5.7>	PI7 - Set
//			<q5.8>	PI8 - Set
//			<q5.9>	PI9 - Set
//			<q5.10>	PI10 - Set
//			<q5.11>	PI11 - Set
//			<q5.16>	PI0 - Reset
//			<q5.17>	PI1 - Reset
//			<q5.18>	PI2 - Reset
//			<q5.19>	PI3 - Reset
//			<q5.20>	PI4 - Reset
//			<q5.21>	PI5 - Reset
//			<q5.22>	PI6 - Reset
//			<q5.23>	PI7 - Reset
//			<q5.24>	PI8 - Reset
//			<q5.25>	PI9 - Reset
//			<q5.26>	PI10 - Reset
//			<q5.27>	PI11 - Reset
//		</e>
//		<e0.6..7> GPIO alternate function low & high register
//			<o6.0..3>		PI0	
//				<0=> AF0 (default)
//			<o6.4..7>		PI1	
//				<0=> AF0 (default)
//			<o6.8..11>	PI2	
//				<0=> AF0 (default)
//			<o6.12..15>	PI3		
//				<0=> AF0 (default)
//			<o6.16..19>	PI4	
//				<0=> AF0 (default)
//			<o6.20..23>	PI5	
//				<0=> AF0 (default 12-00, 12-02)
//				<3=> TIM8_CH1 (default 12-01)
//			<o6.24..27>	PI6	
//				<0=> AF0 (default 12-00, 12-02)
//				<3=> TIM8_CH2 (default 12-01)
//			<o6.28..31>	PI7	
//				<0=> AF0 (default 12-00, 12-02)
//				<3=> TIM8_CH3 (default 12-01)
//			<o7.0..3>		PI8	
//				<0=> AF0 (default)
//			<o7.4..7>	PI9
//				<0=> AF0 (default)
//			<o7.8..11> PI10	
//				<0=> AF0 (default)
//			<o7.12..15> PI11	
//				<0=> AF0 (default)
//		</e>
#define GPIOICLOCK			0x0001ul
#define GPIOIMODER			0x00000000ul
#define GPIOIOTYPER			0x0000ul
#define GPIOIOSPEEDR		0x00000000ul
#define GPIOIPUPDR			0x00000000ul
#define GPIOIBSRR				0x00000000ul
#define GPIOIAFRL				0x00000000ul
#define GPIOIAFRH				0x00000000ul
//	</e>		


#include "stm32f4xx.h"


void GPIO_Config() {
GPIO_TypeDef  *GPIO;
	
SYSCFG->CMPCR |= SYSCFG_CMPCR_CMP_PD;

RCC->AHB1ENR |= ((GPIOACLOCK & 0x0001ul) << 0) | \
								((GPIOBCLOCK & 0x0001ul) << 1) | \
								((GPIOCCLOCK & 0x0001ul) << 2) | \
								((GPIODCLOCK & 0x0001ul) << 3) | \
								((GPIOECLOCK & 0x0001ul) << 4) | \
								((GPIOFCLOCK & 0x0001ul) << 5) | \
								((GPIOGCLOCK & 0x0001ul) << 6) | \
								((GPIOHCLOCK & 0x0001ul) << 7) | \
								((GPIOICLOCK & 0x0001ul) << 8) ;
	
GPIO = GPIOA;	
GPIO->AFR[0]  = GPIOAAFRL;	
GPIO->AFR[1]  = GPIOAAFRH;
GPIO->BSRR    = GPIOABSRR;	
GPIO->MODER   = GPIOAMODER;
GPIO->PUPDR   = GPIOAPUPDR;
GPIO->OSPEEDR = GPIOAOSPEEDR;	
GPIO->OTYPER  = GPIOAOTYPER;
	
GPIO = GPIOB;	
GPIO->AFR[0]  = GPIOBAFRL;	
GPIO->AFR[1]  = GPIOBAFRH;
GPIO->BSRR    = GPIOBBSRR;	
GPIO->MODER   = GPIOBMODER;
GPIO->PUPDR   = GPIOBPUPDR;
GPIO->OSPEEDR = GPIOBOSPEEDR;	
GPIO->OTYPER  = GPIOBOTYPER;	

GPIO = GPIOC;	
GPIO->AFR[0]  = GPIOCAFRL;	
GPIO->AFR[1]  = GPIOCAFRH;
GPIO->BSRR    = GPIOCBSRR;	
GPIO->MODER   = GPIOCMODER;
GPIO->PUPDR   = GPIOCPUPDR;
GPIO->OSPEEDR = GPIOCOSPEEDR;	
GPIO->OTYPER  = GPIOCOTYPER;

GPIO = GPIOD;	
GPIO->AFR[0]  = GPIODAFRL;	
GPIO->AFR[1]  = GPIODAFRH;
GPIO->BSRR    = GPIODBSRR;	
GPIO->MODER   = GPIODMODER;
GPIO->PUPDR   = GPIODPUPDR;
GPIO->OSPEEDR = GPIODOSPEEDR;	
GPIO->OTYPER  = GPIODOTYPER;

GPIO = GPIOE;	
GPIO->AFR[0]  = GPIOEAFRL;	
GPIO->AFR[1]  = GPIOEAFRH;
GPIO->BSRR    = GPIOEBSRR;	
GPIO->MODER   = GPIOEMODER;
GPIO->PUPDR   = GPIOEPUPDR;
GPIO->OSPEEDR = GPIOEOSPEEDR;	
GPIO->OTYPER  = GPIOEOTYPER;

GPIO = GPIOF;	
GPIO->AFR[0]  = GPIOFAFRL;	
GPIO->AFR[1]  = GPIOFAFRH;
GPIO->BSRR    = GPIOFBSRR;	
GPIO->MODER   = GPIOFMODER;
GPIO->PUPDR   = GPIOFPUPDR;
GPIO->OSPEEDR = GPIOFOSPEEDR;	
GPIO->OTYPER  = GPIOFOTYPER;	

GPIO = GPIOG;	
GPIO->AFR[0]  = GPIOGAFRL;	
GPIO->AFR[1]  = GPIOGAFRH;
GPIO->BSRR    = GPIOGBSRR;	
GPIO->MODER   = GPIOGMODER;
GPIO->PUPDR   = GPIOGPUPDR;
GPIO->OSPEEDR = GPIOGOSPEEDR;	
GPIO->OTYPER  = GPIOGOTYPER;	

GPIO = GPIOH;	
GPIO->AFR[0]  = GPIOHAFRL;	
GPIO->AFR[1]  = GPIOHAFRH;
GPIO->BSRR    = GPIOHBSRR;	
GPIO->MODER   = GPIOHMODER;
GPIO->PUPDR   = GPIOHPUPDR;
GPIO->OSPEEDR = GPIOHOSPEEDR;	
GPIO->OTYPER  = GPIOHOTYPER;	

GPIO = GPIOI;	
GPIO->AFR[0]  = GPIOIAFRL;	
GPIO->AFR[1]  = GPIOIAFRH;
GPIO->BSRR    = GPIOIBSRR;	
GPIO->MODER   = GPIOIMODER;
GPIO->PUPDR   = GPIOIPUPDR;
GPIO->OSPEEDR = GPIOIOSPEEDR;	
GPIO->OTYPER  = GPIOIOTYPER;	

}

