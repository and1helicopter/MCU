#line 1 "STARTUP\\GPIO_EK_PP_0815_12_03.c"








































































































































































#line 177 "STARTUP\\GPIO_EK_PP_0815_12_03.c"

































































































































































#line 346 "STARTUP\\GPIO_EK_PP_0815_12_03.c"



























































































































































#line 509 "STARTUP\\GPIO_EK_PP_0815_12_03.c"




















































































































































#line 665 "STARTUP\\GPIO_EK_PP_0815_12_03.c"

















































































































































#line 818 "STARTUP\\GPIO_EK_PP_0815_12_03.c"
















































































































































#line 970 "STARTUP\\GPIO_EK_PP_0815_12_03.c"
















































































































































#line 1122 "STARTUP\\GPIO_EK_PP_0815_12_03.c"
















































































































































#line 1274 "STARTUP\\GPIO_EK_PP_0815_12_03.c"



















































































































#line 1397 "STARTUP\\GPIO_EK_PP_0815_12_03.c"



#line 1 "STARTUP\\stm32f4xx.h"










































  



 



 
    






  


 
  


 

#line 85 "STARTUP\\stm32f4xx.h"

 




 




    






 










 











            



  





 










 
#line 156 "STARTUP\\stm32f4xx.h"
                                             


 



 



 









 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      
 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMP_STAMP_IRQn             = 2,       
  RTC_WKUP_IRQn               = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Stream0_IRQn           = 11,      
  DMA1_Stream1_IRQn           = 12,      
  DMA1_Stream2_IRQn           = 13,      
  DMA1_Stream3_IRQn           = 14,      
  DMA1_Stream4_IRQn           = 15,      
  DMA1_Stream5_IRQn           = 16,      
  DMA1_Stream6_IRQn           = 17,      
  ADC_IRQn                    = 18,      

#line 275 "STARTUP\\stm32f4xx.h"

#line 348 "STARTUP\\stm32f4xx.h"
    

  CAN1_TX_IRQn                = 19,      
  CAN1_RX0_IRQn               = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,        
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  OTG_FS_WKUP_IRQn            = 42,          
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  TIM8_CC_IRQn                = 46,      
  DMA1_Stream7_IRQn           = 47,      
  FMC_IRQn                    = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_DAC_IRQn               = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Stream0_IRQn           = 56,      
  DMA2_Stream1_IRQn           = 57,      
  DMA2_Stream2_IRQn           = 58,      
  DMA2_Stream3_IRQn           = 59,      
  DMA2_Stream4_IRQn           = 60,      
  ETH_IRQn                    = 61,      
  ETH_WKUP_IRQn               = 62,      
  CAN2_TX_IRQn                = 63,      
  CAN2_RX0_IRQn               = 64,      
  CAN2_RX1_IRQn               = 65,      
  CAN2_SCE_IRQn               = 66,      
  OTG_FS_IRQn                 = 67,      
  DMA2_Stream5_IRQn           = 68,      
  DMA2_Stream6_IRQn           = 69,      
  DMA2_Stream7_IRQn           = 70,      
  USART6_IRQn                 = 71,      
  I2C3_EV_IRQn                = 72,      
  I2C3_ER_IRQn                = 73,      
  OTG_HS_EP1_OUT_IRQn         = 74,      
  OTG_HS_EP1_IN_IRQn          = 75,      
  OTG_HS_WKUP_IRQn            = 76,      
  OTG_HS_IRQn                 = 77,      
  DCMI_IRQn                   = 78,      
  CRYP_IRQn                   = 79,      
  HASH_RNG_IRQn               = 80,      
  FPU_IRQn                    = 81,      
  UART7_IRQn                  = 82,      
  UART8_IRQn                  = 83,      
  SPI4_IRQn                   = 84,      
  SPI5_IRQn                   = 85,      
  SPI6_IRQn                   = 86,      
  SAI1_IRQn                   = 87,      
  LTDC_IRQn                   = 88,      
  LTDC_ER_IRQn                = 89,      
  DMA2D_IRQn                  = 90          

   
#line 463 "STARTUP\\stm32f4xx.h"

} IRQn_Type;



 

#line 1 "STARTUP\\core_cm4.h"
 







 

























 
























 




 


 

 













#line 110 "STARTUP\\core_cm4.h"


 
#line 124 "STARTUP\\core_cm4.h"

#line 185 "STARTUP\\core_cm4.h"

#line 1 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 187 "STARTUP\\core_cm4.h"
#line 1 ".\\STARTUP\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 











 









 









 









 











 











 











 







 










 










 









 





#line 684 ".\\STARTUP\\core_cmInstr.h"

   

#line 188 "STARTUP\\core_cm4.h"
#line 1 ".\\STARTUP\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 634 ".\\STARTUP\\core_cmFunc.h"

 

#line 189 "STARTUP\\core_cm4.h"
#line 1 ".\\STARTUP\\core_cm4_simd.h"
 







 

























 
















 


 



 


 
#line 122 ".\\STARTUP\\core_cm4_simd.h"











#line 689 ".\\STARTUP\\core_cm4_simd.h"

 






#line 190 "STARTUP\\core_cm4.h"








 
#line 225 "STARTUP\\core_cm4.h"

 






 
#line 241 "STARTUP\\core_cm4.h"

 













 


 





 


 
typedef union
{
  struct
  {



    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                

    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       



    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                

    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 



 















 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile const  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile const  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                     
  volatile const  uint32_t PID5;                     
  volatile const  uint32_t PID6;                     
  volatile const  uint32_t PID7;                     
  volatile const  uint32_t PID0;                     
  volatile const  uint32_t PID1;                     
  volatile const  uint32_t PID2;                     
  volatile const  uint32_t PID3;                     
  volatile const  uint32_t CID0;                     
  volatile const  uint32_t CID1;                     
  volatile const  uint32_t CID2;                     
  volatile const  uint32_t CID3;                     
} ITM_Type;

 



 



























 



 



 



 









   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile const  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile const  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                  
  volatile const  uint32_t FIFO0;                    
  volatile const  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;                
  volatile const  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                    
  volatile const  uint32_t DEVTYPE;                  
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   







 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 






























 








 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile const  uint32_t MVFR0;                    
  volatile const  uint32_t MVFR1;                    
} FPU_Type;

 



























 



 












 
























 












 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
#line 1399 "STARTUP\\core_cm4.h"

#line 1408 "STARTUP\\core_cm4.h"











 










 

 



 




 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
 
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));  
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
 
static __inline uint32_t SysTick_Config(uint32_t ticks, uint32_t pri)							 
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);      	 

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                  	 

  NVIC_SetPriority (SysTick_IRQn, pri); 						   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                          	 
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = 
                   (1UL << 1)   |
                   (1UL << 0);                    	 
  return (0);                                                  	 
}



 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 





#line 471 "STARTUP\\stm32f4xx.h"
#line 1 "STARTUP\\system_stm32f4xx.h"

























  



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           




 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 472 "STARTUP\\stm32f4xx.h"
#line 473 "STARTUP\\stm32f4xx.h"



   
 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;



 



    



 

typedef struct
{
  volatile uint32_t SR;      
  volatile uint32_t CR1;           
  volatile uint32_t CR2;     
  volatile uint32_t SMPR1;   
  volatile uint32_t SMPR2;   
  volatile uint32_t JOFR1;   
  volatile uint32_t JOFR2;   
  volatile uint32_t JOFR3;   
  volatile uint32_t JOFR4;   
  volatile uint32_t HTR;     
  volatile uint32_t LTR;     
  volatile uint32_t SQR1;    
  volatile uint32_t SQR2;    
  volatile uint32_t SQR3;    
  volatile uint32_t JSQR;    
  volatile uint32_t JDR1;    
  volatile uint32_t JDR2;    
  volatile uint32_t JDR3;    
  volatile uint32_t JDR4;    
  volatile uint32_t DR;      
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;     
  volatile uint32_t CCR;     
  volatile uint32_t CDR;    
 
} ADC_Common_TypeDef;




 

typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];          
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;          
  volatile uint8_t  IDR;         
  uint8_t       RESERVED0;   
  uint16_t      RESERVED1;   
  volatile uint32_t CR;          
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;   
  volatile uint32_t CR;       
  volatile uint32_t APB1FZ;   
  volatile uint32_t APB2FZ;   
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SR;        
  volatile uint32_t RISR;      
  volatile uint32_t IER;       
  volatile uint32_t MISR;      
  volatile uint32_t ICR;       
  volatile uint32_t ESCR;      
  volatile uint32_t ESUR;      
  volatile uint32_t CWSTRTR;   
  volatile uint32_t CWSIZER;   
  volatile uint32_t DR;        
} DCMI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t NDTR;    
  volatile uint32_t PAR;     
  volatile uint32_t M0AR;    
  volatile uint32_t M1AR;    
  volatile uint32_t FCR;     
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;    
  volatile uint32_t HISR;    
  volatile uint32_t LIFCR;   
  volatile uint32_t HIFCR;   
} DMA_TypeDef;
 


 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t ISR;            
  volatile uint32_t IFCR;           
  volatile uint32_t FGMAR;          
  volatile uint32_t FGOR;           
  volatile uint32_t BGMAR;          
  volatile uint32_t BGOR;           
  volatile uint32_t FGPFCCR;        
  volatile uint32_t FGCOLR;         
  volatile uint32_t BGPFCCR;        
  volatile uint32_t BGCOLR;         
  volatile uint32_t FGCMAR;         
  volatile uint32_t BGCMAR;         
  volatile uint32_t OPFCCR;         
  volatile uint32_t OCOLR;          
  volatile uint32_t OMAR;           
  volatile uint32_t OOR;            
  volatile uint32_t NLR;            
  volatile uint32_t LWR;            
  volatile uint32_t AMTCR;          
  uint32_t      RESERVED[236];  
  volatile uint32_t FGCLUT[256];    
  volatile uint32_t BGCLUT[256];    
} DMA2D_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
  uint32_t      RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
  uint32_t      RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
  uint32_t      RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
  uint32_t      RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
  uint32_t      RESERVED4[5];
  volatile uint32_t MMCTGFCR;
  uint32_t      RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
  uint32_t      RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
  uint32_t      RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
  volatile uint32_t RESERVED8;
  volatile uint32_t PTPTSSR;
  uint32_t      RESERVED9[565];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
  volatile uint32_t DMARSWTR;
  uint32_t      RESERVED10[8];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;     
  volatile uint32_t EMR;     
  volatile uint32_t RTSR;    
  volatile uint32_t FTSR;    
  volatile uint32_t SWIER;   
  volatile uint32_t PR;      
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;       
  volatile uint32_t KEYR;      
  volatile uint32_t OPTKEYR;   
  volatile uint32_t SR;        
  volatile uint32_t CR;        
  volatile uint32_t OPTCR;     
  volatile uint32_t OPTCR1;    
} FLASH_TypeDef;

#line 908 "STARTUP\\stm32f4xx.h"




 

typedef struct
{
  volatile uint32_t BTCR[8];        
} FMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];     
} FMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;        
  volatile uint32_t SR2;         
  volatile uint32_t PMEM2;       
  volatile uint32_t PATT2;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR2;       
} FMC_Bank2_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR3;        
  volatile uint32_t SR3;         
  volatile uint32_t PMEM3;       
  volatile uint32_t PATT3;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR3;       
} FMC_Bank3_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR4;        
  volatile uint32_t SR4;         
  volatile uint32_t PMEM4;       
  volatile uint32_t PATT4;       
  volatile uint32_t PIO4;        
} FMC_Bank4_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t SDCR[2];         
  volatile uint32_t SDTR[2];         
  volatile uint32_t SDCMR;        
  volatile uint32_t SDRTR;        
  volatile uint32_t SDSR;         
} FMC_Bank5_6_TypeDef; 




 

typedef struct
{
  volatile uint32_t MODER;     
  volatile uint32_t OTYPER;    
  volatile uint32_t OSPEEDR;   
  volatile uint32_t PUPDR;     
  volatile uint32_t IDR;       
  volatile uint32_t ODR;       
  volatile uint32_t BSRR;      


  volatile uint32_t LCKR;      
  volatile uint32_t AFR[2];    
} GPIO_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MEMRMP;        
  volatile uint32_t PMC;           
  volatile uint32_t EXTICR[4];     
  uint32_t      RESERVED[2];    
  volatile uint32_t CMPCR;         
} SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t OAR1;        
  uint16_t      RESERVED2;   
  volatile uint16_t OAR2;        
  uint16_t      RESERVED3;   
  volatile uint16_t DR;          
  uint16_t      RESERVED4;   
  volatile uint16_t SR1;         
  uint16_t      RESERVED5;   
  volatile uint16_t SR2;         
  uint16_t      RESERVED6;   
  volatile uint16_t CCR;         
  uint16_t      RESERVED7;   
  volatile uint16_t TRISE;       
  uint16_t      RESERVED8;   
  volatile uint16_t FLTR;        
  uint16_t      RESERVED9;   
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
} IWDG_TypeDef;



 
  
typedef struct
{
  uint32_t      RESERVED0[2];   
  volatile uint32_t SSCR;           
  volatile uint32_t BPCR;           
  volatile uint32_t AWCR;           
  volatile uint32_t TWCR;           
  volatile uint32_t GCR;            
  uint32_t      RESERVED1[2];   
  volatile uint32_t SRCR;           
  uint32_t      RESERVED2[1];   
  volatile uint32_t BCCR;           
  uint32_t      RESERVED3[1];   
  volatile uint32_t IER;            
  volatile uint32_t ISR;            
  volatile uint32_t ICR;            
  volatile uint32_t LIPCR;          
  volatile uint32_t CPSR;           
  volatile uint32_t CDSR;          
} LTDC_TypeDef;  



 
  
typedef struct
{  
  volatile uint32_t CR;             
  volatile uint32_t WHPCR;          
  volatile uint32_t WVPCR;          
  volatile uint32_t CKCR;           
  volatile uint32_t PFCR;           
  volatile uint32_t CACR;           
  volatile uint32_t DCCR;           
  volatile uint32_t BFCR;           
  uint32_t      RESERVED0[2];   
  volatile uint32_t CFBAR;          
  volatile uint32_t CFBLR;          
  volatile uint32_t CFBLNR;         
  uint32_t      RESERVED1[3];   
  volatile uint32_t CLUTWR;          

} LTDC_Layer_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t PLLCFGR;        
  volatile uint32_t CFGR;           
  volatile uint32_t CIR;            
  volatile uint32_t AHB1RSTR;       
  volatile uint32_t AHB2RSTR;       
  volatile uint32_t AHB3RSTR;       
  uint32_t      RESERVED0;      
  volatile uint32_t APB1RSTR;       
  volatile uint32_t APB2RSTR;       
  uint32_t      RESERVED1[2];   
  volatile uint32_t AHB1ENR;        
  volatile uint32_t AHB2ENR;        
  volatile uint32_t AHB3ENR;        
  uint32_t      RESERVED2;      
  volatile uint32_t APB1ENR;        
  volatile uint32_t APB2ENR;        
  uint32_t      RESERVED3[2];   
  volatile uint32_t AHB1LPENR;      
  volatile uint32_t AHB2LPENR;      
  volatile uint32_t AHB3LPENR;      
  uint32_t      RESERVED4;      
  volatile uint32_t APB1LPENR;      
  volatile uint32_t APB2LPENR;      
  uint32_t      RESERVED5[2];   
  volatile uint32_t BDCR;           
  volatile uint32_t CSR;            
  uint32_t      RESERVED6[2];   
  volatile uint32_t SSCGR;          
  volatile uint32_t PLLI2SCFGR;     
  volatile uint32_t PLLSAICFGR;     
  volatile uint32_t DCKCFGR;        

} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t TR;       
  volatile uint32_t DR;       
  volatile uint32_t CR;       
  volatile uint32_t ISR;      
  volatile uint32_t PRER;     
  volatile uint32_t WUTR;     
  volatile uint32_t CALIBR;   
  volatile uint32_t ALRMAR;   
  volatile uint32_t ALRMBR;   
  volatile uint32_t WPR;      
  volatile uint32_t SSR;      
  volatile uint32_t SHIFTR;   
  volatile uint32_t TSTR;     
  volatile uint32_t TSDR;     
  volatile uint32_t TSSSR;    
  volatile uint32_t CALR;     
  volatile uint32_t TAFCR;    
  volatile uint32_t ALRMASSR; 
  volatile uint32_t ALRMBSSR; 
  uint32_t RESERVED7;     
  volatile uint32_t BKP0R;    
  volatile uint32_t BKP1R;    
  volatile uint32_t BKP2R;    
  volatile uint32_t BKP3R;    
  volatile uint32_t BKP4R;    
  volatile uint32_t BKP5R;    
  volatile uint32_t BKP6R;    
  volatile uint32_t BKP7R;    
  volatile uint32_t BKP8R;    
  volatile uint32_t BKP9R;    
  volatile uint32_t BKP10R;   
  volatile uint32_t BKP11R;   
  volatile uint32_t BKP12R;   
  volatile uint32_t BKP13R;   
  volatile uint32_t BKP14R;   
  volatile uint32_t BKP15R;   
  volatile uint32_t BKP16R;   
  volatile uint32_t BKP17R;   
  volatile uint32_t BKP18R;   
  volatile uint32_t BKP19R;   
} RTC_TypeDef;




 
  
typedef struct
{
  volatile uint32_t GCR;       
} SAI_TypeDef;

typedef struct
{
  volatile uint32_t CR1;       
  volatile uint32_t CR2;       
  volatile uint32_t FRCR;      
  volatile uint32_t SLOTR;     
  volatile uint32_t IMR;       
  volatile uint32_t SR;        
  volatile uint32_t CLRFR;     
  volatile uint32_t DR;        
} SAI_Block_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;           
  volatile uint32_t CLKCR;           
  volatile uint32_t ARG;             
  volatile uint32_t CMD;             
  volatile const uint32_t  RESPCMD;         
  volatile const uint32_t  RESP1;           
  volatile const uint32_t  RESP2;           
  volatile const uint32_t  RESP3;           
  volatile const uint32_t  RESP4;           
  volatile uint32_t DTIMER;          
  volatile uint32_t DLEN;            
  volatile uint32_t DCTRL;           
  volatile const uint32_t  DCOUNT;          
  volatile const uint32_t  STA;             
  volatile uint32_t ICR;             
  volatile uint32_t MASK;            
  uint32_t      RESERVED0[2];    
  volatile const uint32_t  FIFOCNT;         
  uint32_t      RESERVED1[13];   
  volatile uint32_t FIFO;            
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t SR;          
  uint16_t      RESERVED2;   
  volatile uint16_t DR;          
  uint16_t      RESERVED3;   
  volatile uint16_t CRCPR;       
  uint16_t      RESERVED4;   
  volatile uint16_t RXCRCR;      
  uint16_t      RESERVED5;   
  volatile uint16_t TXCRCR;      
  uint16_t      RESERVED6;   
  volatile uint16_t I2SCFGR;     
  uint16_t      RESERVED7;   
  volatile uint16_t I2SPR;       
  uint16_t      RESERVED8;   
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;          
  uint16_t      RESERVED0;    
  volatile uint16_t CR2;          
  uint16_t      RESERVED1;    
  volatile uint16_t SMCR;         
  uint16_t      RESERVED2;    
  volatile uint16_t DIER;         
  uint16_t      RESERVED3;    
  volatile uint16_t SR;           
  uint16_t      RESERVED4;    
  volatile uint16_t EGR;          
  uint16_t      RESERVED5;    
  volatile uint16_t CCMR1;        
  uint16_t      RESERVED6;    
  volatile uint16_t CCMR2;        
  uint16_t      RESERVED7;    
  volatile uint16_t CCER;         
  uint16_t      RESERVED8;    
  volatile uint32_t CNT;          
  volatile uint16_t PSC;          
  uint16_t      RESERVED9;    
  volatile uint32_t ARR;          
  volatile uint16_t RCR;          
  uint16_t      RESERVED10;   
  volatile uint32_t CCR1;         
  volatile uint32_t CCR2;         
  volatile uint32_t CCR3;         
  volatile uint32_t CCR4;         
  volatile uint16_t BDTR;         
  uint16_t      RESERVED11;   
  volatile uint16_t DCR;          
  uint16_t      RESERVED12;   
  volatile uint16_t DMAR;         
  uint16_t      RESERVED13;   
  volatile uint16_t OR;           
  uint16_t      RESERVED14;   
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;          
  uint16_t      RESERVED0;   
  volatile uint16_t DR;          
  uint16_t      RESERVED1;   
  volatile uint16_t BRR;         
  uint16_t      RESERVED2;   
  volatile uint16_t CR1;         
  uint16_t      RESERVED3;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED4;   
  volatile uint16_t CR3;         
  uint16_t      RESERVED5;   
  volatile uint16_t GTPR;        
  uint16_t      RESERVED6;   
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;          
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t DOUT;        
  volatile uint32_t DMACR;       
  volatile uint32_t IMSCR;       
  volatile uint32_t RISR;        
  volatile uint32_t MISR;        
  volatile uint32_t K0LR;        
  volatile uint32_t K0RR;        
  volatile uint32_t K1LR;        
  volatile uint32_t K1RR;        
  volatile uint32_t K2LR;        
  volatile uint32_t K2RR;        
  volatile uint32_t K3LR;        
  volatile uint32_t K3RR;        
  volatile uint32_t IV0LR;       
  volatile uint32_t IV0RR;       
  volatile uint32_t IV1LR;       
  volatile uint32_t IV1RR;       
  volatile uint32_t CSGCMCCM0R;  
  volatile uint32_t CSGCMCCM1R;  
  volatile uint32_t CSGCMCCM2R;  
  volatile uint32_t CSGCMCCM3R;  
  volatile uint32_t CSGCMCCM4R;  
  volatile uint32_t CSGCMCCM5R;  
  volatile uint32_t CSGCMCCM6R;  
  volatile uint32_t CSGCMCCM7R;  
  volatile uint32_t CSGCM0R;     
  volatile uint32_t CSGCM1R;     
  volatile uint32_t CSGCM2R;     
  volatile uint32_t CSGCM3R;     
  volatile uint32_t CSGCM4R;     
  volatile uint32_t CSGCM5R;     
  volatile uint32_t CSGCM6R;     
  volatile uint32_t CSGCM7R;     
} CRYP_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;                
  volatile uint32_t DIN;               
  volatile uint32_t STR;               
  volatile uint32_t HR[5];             
  volatile uint32_t IMR;               
  volatile uint32_t SR;                
       uint32_t RESERVED[52];      
  volatile uint32_t CSR[54];           
} HASH_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t HR[8];       
} HASH_DIGEST_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;   
  volatile uint32_t SR;   
  volatile uint32_t DR;   
} RNG_TypeDef;

 


 
#pragma anon_unions

typedef struct
{
  volatile uint32_t GOTGCTL;
  volatile uint32_t GOTGINT;
  volatile uint32_t GAHBCFG;
  volatile uint32_t GUSBCFG;
  volatile uint32_t GRSTCTL;
  volatile uint32_t GINTSTS;
  volatile uint32_t GINTMSK;
  volatile uint32_t GRXSTSR;
  volatile uint32_t GRXSTSP;
  volatile uint32_t GRXFSIZ;
  union {
    volatile uint32_t HNPTXFSIZ;
    volatile uint32_t DIEPTXF0;
  };
  volatile uint32_t HNPTXSTS;
  volatile uint32_t GI2CCTL;
       uint32_t RESERVED0;
  volatile uint32_t GCCFG;
  volatile uint32_t CID;
       uint32_t RESERVED1[48];
  volatile uint32_t HPTXFSIZ;
  volatile uint32_t DIEPTXF1;
  volatile uint32_t DIEPTXF2;
  volatile uint32_t DIEPTXF3;
  volatile uint32_t DIEPTXF4;
  volatile uint32_t DIEPTXF5;
  volatile uint32_t DIEPTXF6;
  volatile uint32_t DIEPTXF7;
  volatile uint32_t DIEPTXF8;
  volatile uint32_t DIEPTXF9;
  volatile uint32_t DIEPTXF10;
  volatile uint32_t DIEPTXF11;
  volatile uint32_t DIEPTXF12;
  volatile uint32_t DIEPTXF13;
  volatile uint32_t DIEPTXF14;
  volatile uint32_t DIEPTXF15;
       uint32_t RESERVED2[176];
  volatile uint32_t HCFG;
  volatile uint32_t HFIR;
  volatile uint32_t HFNUM;
       uint32_t RESERVED3;
  volatile uint32_t HPTXSTS;
  volatile uint32_t HAINT;
  volatile uint32_t HAINTMSK;
       uint32_t RESERVED4[9];
  volatile uint32_t HPRT;
       uint32_t RESERVED5[47];
  volatile uint32_t HCCHAR0;
       uint32_t RESERVED6;
  volatile uint32_t HCINT0;
  volatile uint32_t HCINTMSK0;
  volatile uint32_t HCTSIZ0;
       uint32_t RESERVED7[3];
  volatile uint32_t HCCHAR1;
       uint32_t RESERVED8;
  volatile uint32_t HCINT1;
  volatile uint32_t HCINTMSK1;
  volatile uint32_t HCTSIZ1;
       uint32_t RESERVED9[3];
  volatile uint32_t HCCHAR2;
       uint32_t RESERVED10;
  volatile uint32_t HCINT2;
  volatile uint32_t HCINTMSK2;
  volatile uint32_t HCTSIZ2;
       uint32_t RESERVED11[3];
  volatile uint32_t HCCHR3;
       uint32_t RESERVED12;
  volatile uint32_t HCINT3;
  volatile uint32_t HCINTMSK3;
  volatile uint32_t HCTSIZ3;
       uint32_t RESERVED13[3];
  volatile uint32_t HCCHR4;
       uint32_t RESERVED14;
  volatile uint32_t HCINT4;
  volatile uint32_t HCINTMSK4;
  volatile uint32_t HCTSIZ4;
       uint32_t RESERVED15[3];
  volatile uint32_t HCCHR5;
       uint32_t RESERVED16;
  volatile uint32_t HCINT5;
  volatile uint32_t HCINTMSK5;
  volatile uint32_t HCTSIZ5;
       uint32_t RESERVED17[3];
  volatile uint32_t HCCHR6;
       uint32_t RESERVED18;
  volatile uint32_t HCINT6;
  volatile uint32_t HCINTMSK6;
  volatile uint32_t HCTSIZ6;
       uint32_t RESERVED19[3];
  volatile uint32_t HCCHR7;
       uint32_t RESERVED20;
  volatile uint32_t HCINT7;
  volatile uint32_t HCINTMSK7;
  volatile uint32_t HCTSIZ7;
       uint32_t RESERVED21[3];
  volatile uint32_t HCCHR8;
       uint32_t RESERVED22;
  volatile uint32_t HCINT8;
  volatile uint32_t HCINTMSK8;
  volatile uint32_t HCTSIZ8;
       uint32_t RESERVED23[3];
  volatile uint32_t HCCHR9;
       uint32_t RESERVED24;
  volatile uint32_t HCINT9;
  volatile uint32_t HCINTMSK9;
  volatile uint32_t HCTSIZ9;
       uint32_t RESERVED25[3];
  volatile uint32_t HCCHR10;
       uint32_t RESERVED26;
  volatile uint32_t HCINT10;
  volatile uint32_t HCINTMSK10;
  volatile uint32_t HCTSIZ10;
       uint32_t RESERVED27[3];
  volatile uint32_t HCCHR11;
       uint32_t RESERVED28;
  volatile uint32_t HCINT11;
  volatile uint32_t HCINTMSK11;
  volatile uint32_t HCTSIZ11;
       uint32_t RESERVED29[3];
  volatile uint32_t HCCHR12;
       uint32_t RESERVED30;
  volatile uint32_t HCINT12;
  volatile uint32_t HCINTMSK12;
  volatile uint32_t HCTSIZ12;
       uint32_t RESERVED31[3];
  volatile uint32_t HCCHR13;
       uint32_t RESERVED32;
  volatile uint32_t HCINT13;
  volatile uint32_t HCINTMSK13;
  volatile uint32_t HCTSIZ13;
       uint32_t RESERVED33[3];
  volatile uint32_t HCCHR14;
       uint32_t RESERVED34;
  volatile uint32_t HCINT14;
  volatile uint32_t HCINTMSK14;
  volatile uint32_t HCTSIZ14;
       uint32_t RESERVED35[3];
  volatile uint32_t HCCHR15;
       uint32_t RESERVED36;
  volatile uint32_t HCINT15;
  volatile uint32_t HCINTMSK15;
  volatile uint32_t HCTSIZ15;
       uint32_t RESERVED37[3];
       uint32_t RESERVED38[64];
  volatile uint32_t DCFG;
  volatile uint32_t DCTL;
  volatile uint32_t DSTS;
       uint32_t RESERVED39;
  volatile uint32_t DIEPMSK;
  volatile uint32_t DOEPMSK;
  volatile uint32_t DAINT;
  volatile uint32_t DAINTMSK;
       uint32_t RESERVED40[2];
  volatile uint32_t DVBUSDIS;
  volatile uint32_t DVBUSPULSE;
       uint32_t RESERVED41;
  volatile uint32_t DIEPEMPMSK;
       uint32_t RESERVED42[50];
  volatile uint32_t DIEPCTL0;
       uint32_t RESERVED43;
  volatile uint32_t DIEPINT0;
       uint32_t RESERVED44;
  volatile uint32_t DIEPTSIZ0;
       uint32_t RESERVED45;
  volatile uint32_t DTXFSTS0;
       uint32_t RESERVED46;
  volatile uint32_t DIEPCTL1;
       uint32_t RESERVED47;
  volatile uint32_t DIEPINT1;
       uint32_t RESERVED48;
  volatile uint32_t DIEPTSIZ1;
       uint32_t RESERVED49;
  volatile uint32_t DTXFSTS1;
       uint32_t RESERVED50;
  volatile uint32_t DIEPCTL2;
       uint32_t RESERVED51;
  volatile uint32_t DIEPINT2;
       uint32_t RESERVED52;
  volatile uint32_t DIEPTSIZ2;
       uint32_t RESERVED53;
  volatile uint32_t DTXFSTS2;
       uint32_t RESERVED54;
  volatile uint32_t DIEPCTL3;
       uint32_t RESERVED55;
  volatile uint32_t DIEPINT3;
       uint32_t RESERVED56;
  volatile uint32_t DIEPTSIZ3;
       uint32_t RESERVED57;
  volatile uint32_t DTXFSTS3;
       uint32_t RESERVED58;
  volatile uint32_t DIEPCTL4;
       uint32_t RESERVED59;
  volatile uint32_t DIEPINT4;
       uint32_t RESERVED60;
  volatile uint32_t DIEPTSIZ4;
       uint32_t RESERVED61;
  volatile uint32_t DTXFSTS4;
       uint32_t RESERVED62;
  volatile uint32_t DIEPCTL5;
       uint32_t RESERVED63;
  volatile uint32_t DIEPINT5;
       uint32_t RESERVED64;
  volatile uint32_t DIEPTSIZ5;
       uint32_t RESERVED65[3];
  volatile uint32_t DIEPCTL6;
       uint32_t RESERVED66;
  volatile uint32_t DIEPINT6;
       uint32_t RESERVED67;
  volatile uint32_t DIEPTSIZ6;
       uint32_t RESERVED68[3];
  volatile uint32_t DIEPCTL7;
       uint32_t RESERVED69;
  volatile uint32_t DIEPINT7;
       uint32_t RESERVED70;
  volatile uint32_t DIEPTSIZ7;
       uint32_t RESERVED71[3];
  volatile uint32_t DIEPCTL8;
       uint32_t RESERVED72;
  volatile uint32_t DIEPINT8;
       uint32_t RESERVED73;
  volatile uint32_t DIEPTSIZ8;
       uint32_t RESERVED74[3];
  volatile uint32_t DIEPCTL9;
       uint32_t RESERVED75;
  volatile uint32_t DIEPINT9;
       uint32_t RESERVED76;
  volatile uint32_t DIEPTSIZ9;
       uint32_t RESERVED77[3];
  volatile uint32_t DIEPCTL10;
       uint32_t RESERVED78;
  volatile uint32_t DIEPINT10;
       uint32_t RESERVED79;
  volatile uint32_t DIEPTSIZ10;
       uint32_t RESERVED80[3];
  volatile uint32_t DIEPCTL11;
       uint32_t RESERVED81;
  volatile uint32_t DIEPINT11;
       uint32_t RESERVED82;
  volatile uint32_t DIEPTSIZ11;
       uint32_t RESERVED83[3];
  volatile uint32_t DIEPCTL12;
       uint32_t RESERVED84;
  volatile uint32_t DIEPINT12;
       uint32_t RESERVED85;
  volatile uint32_t DIEPTSIZ86;
       uint32_t RESERVED86[3];
  volatile uint32_t DIEPCTL13;
       uint32_t RESERVED87;
  volatile uint32_t DIEPINT13;
       uint32_t RESERVED88;
  volatile uint32_t DIEPTSIZ13;
       uint32_t RESERVED89[3];
  volatile uint32_t DIEPCTL14;
       uint32_t RESERVED90;
  volatile uint32_t DIEPINT14;
       uint32_t RESERVED91;
  volatile uint32_t DIEPTSIZ14;
       uint32_t RESERVED92[3];
  volatile uint32_t DIEPCTL15;
       uint32_t RESERVED93;
  volatile uint32_t DIEPINT15;
       uint32_t RESERVED94;
  volatile uint32_t DIEPTSIZ15;
       uint32_t RESERVED95[3];
  volatile uint32_t DOEPCTL0;
       uint32_t RESERVED96;
  volatile uint32_t DOEPINT0;
       uint32_t RESERVED97;
  volatile uint32_t DOEPTSIZ0;
       uint32_t RESERVED98[3];
  volatile uint32_t DOEPCTL1;
       uint32_t RESERVED99;
  volatile uint32_t DOEPINT1;
       uint32_t RESERVED100;
  volatile uint32_t DOEPTSIZ1;
       uint32_t RESERVED101[3];
  volatile uint32_t DOEPCTL2;
       uint32_t RESERVED102;
  volatile uint32_t DOEPINT2;
       uint32_t RESERVED103;
  volatile uint32_t DOEPTSIZ2;
       uint32_t RESERVED104[3];
  volatile uint32_t DOEPCTL3;
       uint32_t RESERVED105;
  volatile uint32_t DOEPINT3;
       uint32_t RESERVED106;
  volatile uint32_t DOEPTSIZ3;
       uint32_t RESERVED107[3];
  volatile uint32_t DOEPCTL4;
       uint32_t RESERVED108;
  volatile uint32_t DOEPINT4;
       uint32_t RESERVED109;
  volatile uint32_t DOEPTSIZ4;
       uint32_t RESERVED110[3];
  volatile uint32_t DOEPCTL5;
       uint32_t RESERVED111;
  volatile uint32_t DOEPINT5;
       uint32_t RESERVED112;
  volatile uint32_t DOEPTSIZ5;
       uint32_t RESERVED113[3];
  volatile uint32_t DOEPCTL6;
       uint32_t RESERVED114;
  volatile uint32_t DOEPINT6;
       uint32_t RESERVED115;
  volatile uint32_t DOEPTSIZ6;
       uint32_t RESERVED116[3];
  volatile uint32_t DOEPCTL7;
       uint32_t RESERVED117;
  volatile uint32_t DOEPINT7;
       uint32_t RESERVED118;
  volatile uint32_t DOEPTSIZ7;
       uint32_t RESERVED119[3];
  volatile uint32_t DOEPCTL8;
       uint32_t RESERVED120;
  volatile uint32_t DOEPINT8;
       uint32_t RESERVED121;
  volatile uint32_t DOEPTSIZ8;
       uint32_t RESERVED122[3];
  volatile uint32_t DOEPCTL9;
       uint32_t RESERVED123;
  volatile uint32_t DOEPINT9;
       uint32_t RESERVED124;
  volatile uint32_t DOEPTSIZ9;
       uint32_t RESERVED125[3];
  volatile uint32_t DOEPCTL10;
       uint32_t RESERVED126;
  volatile uint32_t DOEPINT10;
       uint32_t RESERVED127;
  volatile uint32_t DOEPTSIZ10;
       uint32_t RESERVED128[3];
  volatile uint32_t DOEPCTL11;
       uint32_t RESERVED129;
  volatile uint32_t DOEPINT11;
       uint32_t RESERVED130;
  volatile uint32_t DOEPTSIZ11;
       uint32_t RESERVED131[3];
  volatile uint32_t DOEPCTL12;
       uint32_t RESERVED132;
  volatile uint32_t DOEPINT12;
       uint32_t RESERVED133;
  volatile uint32_t DOEPTSIZ12;
       uint32_t RESERVED134[3];
  volatile uint32_t DOEPCTL13;
       uint32_t RESERVED135;
  volatile uint32_t DOEPINT13;
       uint32_t RESERVED136;
  volatile uint32_t DOEPTSIZ13;
       uint32_t RESERVED137[3];
  volatile uint32_t DOEPCTL14;
       uint32_t RESERVED138;
  volatile uint32_t DOEPINT14;
       uint32_t RESERVED139;
  volatile uint32_t DOEPTSIZ14;
       uint32_t RESERVED140[3];
  volatile uint32_t DOEPCTL15;
       uint32_t RESERVED141;
  volatile uint32_t DOEPINT15;
       uint32_t RESERVED142;
  volatile uint32_t DOEPTSIZ15;
       uint32_t RESERVED143[3];
       uint32_t RESERVED144[64];
  volatile uint32_t PCGCCTL;
} OTG_FS_TypeDef;



 

typedef struct
{
  volatile uint32_t GOTGCTL;
  volatile uint32_t GOTGINT;
  volatile uint32_t GAHBCFG;
  volatile uint32_t GUSBCFG;
  volatile uint32_t GRSTCTL;
  volatile uint32_t GINTSTS;
  volatile uint32_t GINTMSK;
  volatile uint32_t GRXSTSR;
  volatile uint32_t GRXSTSP;
  volatile uint32_t GRXFSIZ;
  union {
    volatile uint32_t GNPTXFSIZ;
    volatile uint32_t TX0FSIZ;
  };
  volatile uint32_t GNPTXSTS;
  volatile uint32_t GI2CCTL;
       uint32_t RESERVED0;
  volatile uint32_t GCCFG;
  volatile uint32_t CID;
       uint32_t RESERVED1[48];
  volatile uint32_t HPTXFSIZ;
  volatile uint32_t DIEPTXF1;
  volatile uint32_t DIEPTXF2;
  volatile uint32_t DIEPTXF3;
  volatile uint32_t DIEPTXF4;
  volatile uint32_t DIEPTXF5;
  volatile uint32_t DIEPTXF6;
  volatile uint32_t DIEPTXF7;
  volatile uint32_t DIEPTXF8;
  volatile uint32_t DIEPTXF9;
  volatile uint32_t DIEPTXF10;
  volatile uint32_t DIEPTXF11;
  volatile uint32_t DIEPTXF12;
  volatile uint32_t DIEPTXF13;
  volatile uint32_t DIEPTXF14;
  volatile uint32_t DIEPTXF15;
       uint32_t RESERVED2[176];
  volatile uint32_t HCFG;
  volatile uint32_t HFIR;
  volatile uint32_t HFNUM;
       uint32_t RESERVED3;
  volatile uint32_t HPTXSTS;
  volatile uint32_t HAINT;
  volatile uint32_t HAINTMSK;
       uint32_t RESERVED4[9];
  volatile uint32_t HPRT;
       uint32_t RESERVED5[47];
  volatile uint32_t HCCHAR0;
  volatile uint32_t HCSPLT0;
  volatile uint32_t HCINT0;
  volatile uint32_t HCINTMSK0;
  volatile uint32_t HCTSIZ0;
  volatile uint32_t HCDMA0;
       uint32_t RESERVED6[2];
  volatile uint32_t HCCHAR1;
  volatile uint32_t HCSPLT1;
  volatile uint32_t HCINT1;
  volatile uint32_t HCINTMSK1;
  volatile uint32_t HCTSIZ1;
  volatile uint32_t HCDMA1;
       uint32_t RESERVED7[2];
  volatile uint32_t HCCHAR2;
  volatile uint32_t HCSPLT2;
  volatile uint32_t HCINT2;
  volatile uint32_t HCINTMSK2;
  volatile uint32_t HCTSIZ2;
  volatile uint32_t HCDMA2;
       uint32_t RESERVED8[2];
  volatile uint32_t HCCHAR3;
  volatile uint32_t HCSPLT3;
  volatile uint32_t HCINT3;
  volatile uint32_t HCINTMSK3;
  volatile uint32_t HCTSIZ3;
  volatile uint32_t HCDMA3;
       uint32_t RESERVED9[2];
  volatile uint32_t HCCHAR4;
  volatile uint32_t HCSPLT4;
  volatile uint32_t HCINT4;
  volatile uint32_t HCINTMSK4;
  volatile uint32_t HCTSIZ4;
  volatile uint32_t HCDMA4;
       uint32_t RESERVED10[2];
  volatile uint32_t HCCHAR5;
  volatile uint32_t HCSPLT5;
  volatile uint32_t HCINT5;
  volatile uint32_t HCINTMSK5;
  volatile uint32_t HCTSIZ5;
  volatile uint32_t HCDMA5;
       uint32_t RESERVED11[2];
  volatile uint32_t HCCHAR6;
  volatile uint32_t HCSPLT6;
  volatile uint32_t HCINT6;
  volatile uint32_t HCINTMSK6;
  volatile uint32_t HCTSIZ6;
  volatile uint32_t HCDMA6;
       uint32_t RESERVED12[2];
  volatile uint32_t HCCHAR7;
  volatile uint32_t HCSPLT7;
  volatile uint32_t HCINT7;
  volatile uint32_t HCINTMSK7;
  volatile uint32_t HCTSIZ7;
  volatile uint32_t HCDMA7;
       uint32_t RESERVED13[2];
  volatile uint32_t HCCHAR8;
  volatile uint32_t HCSPLT8;
  volatile uint32_t HCINT8;
  volatile uint32_t HCINTMSK8;
  volatile uint32_t HCTSIZ8;
  volatile uint32_t HCDMA8;
       uint32_t RESERVED14[2];
  volatile uint32_t HCCHAR9;
  volatile uint32_t HCSPLT9;
  volatile uint32_t HCINT9;
  volatile uint32_t HCINTMSK9;
  volatile uint32_t HCTSIZ9;
  volatile uint32_t HCDMA9;
       uint32_t RESERVED15[2];
  volatile uint32_t HCCHAR10;
  volatile uint32_t HCSPLT10;
  volatile uint32_t HCINT10;
  volatile uint32_t HCINTMSK10;
  volatile uint32_t HCTSIZ10;
  volatile uint32_t HCDMA10;
       uint32_t RESERVED16[2];
  volatile uint32_t HCCHAR11;
  volatile uint32_t HCSPLT11;
  volatile uint32_t HCINT11;
  volatile uint32_t HCINTMSK11;
  volatile uint32_t HCTSIZ11;
  volatile uint32_t HCDMA11;
       uint32_t RESERVED17[2];
  volatile uint32_t HCCHAR12;
  volatile uint32_t HCSPLT12;
  volatile uint32_t HCINT12;
  volatile uint32_t HCINTMSK12;
  volatile uint32_t HCTSIZ12;
  volatile uint32_t HCDMA12;
       uint32_t RESERVED18[2];
  volatile uint32_t HCCHAR13;
  volatile uint32_t HCSPLT13;
  volatile uint32_t HCINT13;
  volatile uint32_t HCINTMSK13;
  volatile uint32_t HCTSIZ13;
  volatile uint32_t HCDMA13;
       uint32_t RESERVED19[2];
  volatile uint32_t HCCHAR14;
  volatile uint32_t HCSPLT14;
  volatile uint32_t HCINT14;
  volatile uint32_t HCINTMSK14;
  volatile uint32_t HCTSIZ14;
  volatile uint32_t HCDMA14;
       uint32_t RESERVED20[2];
  volatile uint32_t HCCHAR15;
  volatile uint32_t HCSPLT15;
  volatile uint32_t HCINT15;
  volatile uint32_t HCINTMSK15;
  volatile uint32_t HCTSIZ15;
  volatile uint32_t HCDMA15;
       uint32_t RESERVED21[2];
       uint32_t RESERVED22[64];
  volatile uint32_t DCFG;
  volatile uint32_t DCTL;
  volatile uint32_t DSTS;
       uint32_t RESERVED23;
  volatile uint32_t DIEPMSK;
  volatile uint32_t DOEPMSK;
  volatile uint32_t DAINT;
  volatile uint32_t DAINTMSK;
       uint32_t RESERVED24[2];
  volatile uint32_t DVBUSDIS;
  volatile uint32_t DVBUSPULSE;
       uint32_t RESERVED25;
  volatile uint32_t DIEPEMPMSK;
  volatile uint32_t EACHHINT;
  volatile uint32_t EACHHINTMSK;
  volatile uint32_t DIEPEACHMSK1;
       uint32_t RESERVED26[15];
  volatile uint32_t DOEPEACHMSK1;
       uint32_t RESERVED27[31];
  volatile uint32_t DIEPCTL0;
       uint32_t RESERVED28;
  volatile uint32_t DIEPINT0;
       uint32_t RESERVED29;
  volatile uint32_t DIEPTSIZ0;
  volatile uint32_t DIEPDMA0;
  volatile uint32_t DTXFSTS0;
       uint32_t RESERVED30;
  volatile uint32_t DIEPCTL1;
       uint32_t RESERVED31;
  volatile uint32_t DIEPINT1;
       uint32_t RESERVED32;
  volatile uint32_t DIEPTSIZ1;
  volatile uint32_t DIEPDMA1;
  volatile uint32_t DTXFSTS1;
       uint32_t RESERVED33;
  volatile uint32_t DIEPCTL2;
       uint32_t RESERVED34;
  volatile uint32_t DIEPINT2;
       uint32_t RESERVED35;
  volatile uint32_t DIEPTSIZ2;
  volatile uint32_t DIEPDMA2;
  volatile uint32_t DTXFSTS2;
       uint32_t RESERVED36;
  volatile uint32_t DIEPCTL3;
       uint32_t RESERVED37;
  volatile uint32_t DIEPINT3;
       uint32_t RESERVED38;
  volatile uint32_t DIEPTSIZ3;
  volatile uint32_t DIEPDMA3;
  volatile uint32_t DTXFSTS3;
       uint32_t RESERVED39;
  volatile uint32_t DIEPCTL4;
       uint32_t RESERVED40;
  volatile uint32_t DIEPINT4;
       uint32_t RESERVED41;
  volatile uint32_t DIEPTSIZ4;
  volatile uint32_t DIEPDMA4;
  volatile uint32_t DTXFSTS4;
       uint32_t RESERVED42;
  volatile uint32_t DIEPCTL5;
       uint32_t RESERVED43;
  volatile uint32_t DIEPINT5;
       uint32_t RESERVED44;
  volatile uint32_t DIEPTSIZ5;
  volatile uint32_t DIEPDMA5;
  volatile uint32_t DTXFSTS5;
       uint32_t RESERVED45;
  volatile uint32_t DIEPCTL6;
       uint32_t RESERVED46;
  volatile uint32_t DIEPINT6;
       uint32_t RESERVED47;
  volatile uint32_t DIEPTSIZ6;
  volatile uint32_t DIEPDMA6;
  volatile uint32_t DTXFSTS6;
       uint32_t RESERVED48;
  volatile uint32_t DIEPCTL7;
       uint32_t RESERVED49;
  volatile uint32_t DIEPINT7;
       uint32_t RESERVED50;
  volatile uint32_t DIEPTSIZ7;
  volatile uint32_t DIEPDMA7;
  volatile uint32_t DTXFSTS7;
       uint32_t RESERVED51;
  volatile uint32_t DIEPCTL8;
       uint32_t RESERVED52;
  volatile uint32_t DIEPINT8;
       uint32_t RESERVED53;
  volatile uint32_t DIEPTSIZ8;
  volatile uint32_t DIEPDMA8;
  volatile uint32_t DTXFSTS8;
       uint32_t RESERVED54;
  volatile uint32_t DIEPCTL9;
       uint32_t RESERVED55;
  volatile uint32_t DIEPINT9;
       uint32_t RESERVED56;
  volatile uint32_t DIEPTSIZ9;
  volatile uint32_t DIEPDMA9;
  volatile uint32_t DTXFSTS9;
       uint32_t RESERVED57;
  volatile uint32_t DIEPCTL10;
       uint32_t RESERVED58;
  volatile uint32_t DIEPINT10;
       uint32_t RESERVED59;
  volatile uint32_t DIEPTSIZ10;
  volatile uint32_t DIEPDMA10;
  volatile uint32_t DTXFSTS10;
       uint32_t RESERVED60;
  volatile uint32_t DIEPCTL11;
       uint32_t RESERVED61;
  volatile uint32_t DIEPINT11;
       uint32_t RESERVED62;
  volatile uint32_t DIEPTSIZ11;
  volatile uint32_t DIEPDMA11;
  volatile uint32_t DTXFSTS11;
       uint32_t RESERVED63;
  volatile uint32_t DIEPCTL12;
       uint32_t RESERVED64;
  volatile uint32_t DIEPINT12;
       uint32_t RESERVED65;
  volatile uint32_t DIEPTSIZ12;
  volatile uint32_t DIEPDMA12;
  volatile uint32_t DTXFSTS12;
       uint32_t RESERVED66;
  volatile uint32_t DIEPCTL13;
       uint32_t RESERVED67;
  volatile uint32_t DIEPINT13;
       uint32_t RESERVED68;
  volatile uint32_t DIEPTSIZ13;
  volatile uint32_t DIEPDMA13;
  volatile uint32_t DTXFSTS13;
       uint32_t RESERVED69;
  volatile uint32_t DIEPCTL14;
       uint32_t RESERVED70;
  volatile uint32_t DIEPINT14;
       uint32_t RESERVED71;
  volatile uint32_t DIEPTSIZ14;
  volatile uint32_t DIEPDMA14;
  volatile uint32_t DTXFSTS14;
       uint32_t RESERVED72;
  volatile uint32_t DIEPCTL15;
       uint32_t RESERVED73;
  volatile uint32_t DIEPINT15;
       uint32_t RESERVED74;
  volatile uint32_t DIEPTSIZ15;
  volatile uint32_t DIEPDMA15;
  volatile uint32_t DTXFSTS15;
       uint32_t RESERVED75;
  volatile uint32_t DOEPCTL0;
       uint32_t RESERVED76;
  volatile uint32_t DOEPINT0;
       uint32_t RESERVED77;
  volatile uint32_t DOEPTSIZ0;
  volatile uint32_t DOEPDMAB0;
       uint32_t RESERVED78[2];
  volatile uint32_t DOEPCTL1;
       uint32_t RESERVED79;
  volatile uint32_t DOEPINT1;
       uint32_t RESERVED80;
  volatile uint32_t DOEPTSIZ1;
  volatile uint32_t DOEPDMAB1;
       uint32_t RESERVED81[2];
  volatile uint32_t DOEPCTL2;
       uint32_t RESERVED82;
  volatile uint32_t DOEPINT2;
       uint32_t RESERVED83;
  volatile uint32_t DOEPTSIZ2;
  volatile uint32_t DOEPDMAB2;
       uint32_t RESERVED84[2];
  volatile uint32_t DOEPCTL3;
       uint32_t RESERVED85;
  volatile uint32_t DOEPINT3;
       uint32_t RESERVED86;
  volatile uint32_t DOEPTSIZ3;
  volatile uint32_t DOEPDMAB3;
       uint32_t RESERVED87[2];
  volatile uint32_t DOEPCTL4;
       uint32_t RESERVED88;
  volatile uint32_t DOEPINT4;
       uint32_t RESERVED89;
  volatile uint32_t DOEPTSIZ4;
  volatile uint32_t DOEPDMAB4;
       uint32_t RESERVED90[2];
  volatile uint32_t DOEPCTL5;
       uint32_t RESERVED91;
  volatile uint32_t DOEPINT5;
       uint32_t RESERVED92;
  volatile uint32_t DOEPTSIZ5;
  volatile uint32_t DOEPDMAB5;
       uint32_t RESERVED93[2];
  volatile uint32_t DOEPCTL6;
       uint32_t RESERVED94;
  volatile uint32_t DOEPINT6;
       uint32_t RESERVED95;
  volatile uint32_t DOEPTSIZ6;
  volatile uint32_t DOEPDMAB6;
       uint32_t RESERVED96[2];
  volatile uint32_t DOEPCTL7;
       uint32_t RESERVED97;
  volatile uint32_t DOEPINT7;
       uint32_t RESERVED98;
  volatile uint32_t DOEPTSIZ7;
  volatile uint32_t DOEPDMAB7;
       uint32_t RESERVED99[2];
  volatile uint32_t DOEPCTL8;
       uint32_t RESERVED100;
  volatile uint32_t DOEPINT8;
       uint32_t RESERVED101;
  volatile uint32_t DOEPTSIZ8;
  volatile uint32_t DOEPDMAB8;
       uint32_t RESERVED102[2];
  volatile uint32_t DOEPCTL9;
       uint32_t RESERVED103;
  volatile uint32_t DOEPINT9;
       uint32_t RESERVED104;
  volatile uint32_t DOEPTSIZ9;
  volatile uint32_t DOEPDMAB9;
       uint32_t RESERVED105[2];
  volatile uint32_t DOEPCTL10;
       uint32_t RESERVED106;
  volatile uint32_t DOEPINT10;
       uint32_t RESERVED107;
  volatile uint32_t DOEPTSIZ10;
  volatile uint32_t DOEPDMAB10;
       uint32_t RESERVED108[2];
  volatile uint32_t DOEPCTL11;
       uint32_t RESERVED109;
  volatile uint32_t DOEPINT11;
       uint32_t RESERVED110;
  volatile uint32_t DOEPTSIZ11;
  volatile uint32_t DOEPDMAB11;
       uint32_t RESERVED111[2];
  volatile uint32_t DOEPCTL12;
       uint32_t RESERVED112;
  volatile uint32_t DOEPINT12;
       uint32_t RESERVED113;
  volatile uint32_t DOEPTSIZ12;
  volatile uint32_t DOEPDMAB12;
       uint32_t RESERVED114[2];
  volatile uint32_t DOEPCTL13;
       uint32_t RESERVED115;
  volatile uint32_t DOEPINT13;
       uint32_t RESERVED116;
  volatile uint32_t DOEPTSIZ13;
  volatile uint32_t DOEPDMAB13;
       uint32_t RESERVED117[2];
  volatile uint32_t DOEPCTL14;
       uint32_t RESERVED118;
  volatile uint32_t DOEPINT14;
       uint32_t RESERVED119;
  volatile uint32_t DOEPTSIZ14;
  volatile uint32_t DOEPDMAB14;
       uint32_t RESERVED120[2];
  volatile uint32_t DOEPCTL15;
       uint32_t RESERVED121;
  volatile uint32_t DOEPINT15;
       uint32_t RESERVED122;
  volatile uint32_t DOEPTSIZ15;
  volatile uint32_t DOEPDMAB15;
       uint32_t RESERVED123[2];
       uint32_t RESERVED143[64];
  volatile uint32_t PCGCCTL;
} OTG_HS_TypeDef;
#pragma no_anon_unions



 
  


 
#line 2251 "STARTUP\\stm32f4xx.h"









#line 2266 "STARTUP\\stm32f4xx.h"

 




 





 
#line 2308 "STARTUP\\stm32f4xx.h"

 
#line 2334 "STARTUP\\stm32f4xx.h"

 
#line 2373 "STARTUP\\stm32f4xx.h"
 
#line 2392 "STARTUP\\stm32f4xx.h"

 
 
#line 2409 "STARTUP\\stm32f4xx.h"

#line 2418 "STARTUP\\stm32f4xx.h"


 
#line 2428 "STARTUP\\stm32f4xx.h"

 




 
  


   
#line 2525 "STARTUP\\stm32f4xx.h"
 
#line 2558 "STARTUP\\stm32f4xx.h"

#line 2566 "STARTUP\\stm32f4xx.h"

#line 2575 "STARTUP\\stm32f4xx.h"





 



 
  
  

 
    
 
 
 

 
 
 
 
 
 
#line 2606 "STARTUP\\stm32f4xx.h"

 
#line 2632 "STARTUP\\stm32f4xx.h"
  
 
#line 2658 "STARTUP\\stm32f4xx.h"

 
#line 2696 "STARTUP\\stm32f4xx.h"

 
#line 2738 "STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 
#line 2787 "STARTUP\\stm32f4xx.h"

 
#line 2825 "STARTUP\\stm32f4xx.h"

 
#line 2863 "STARTUP\\stm32f4xx.h"

 
#line 2892 "STARTUP\\stm32f4xx.h"

 


 


 


 


 



 
#line 2928 "STARTUP\\stm32f4xx.h"

 
#line 2950 "STARTUP\\stm32f4xx.h"

 



 
 
 
 
 
 
 
#line 2971 "STARTUP\\stm32f4xx.h"

 
#line 2982 "STARTUP\\stm32f4xx.h"

 
#line 3000 "STARTUP\\stm32f4xx.h"











 





 





 
#line 3038 "STARTUP\\stm32f4xx.h"

 












 
#line 3059 "STARTUP\\stm32f4xx.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 3199 "STARTUP\\stm32f4xx.h"

 
#line 3216 "STARTUP\\stm32f4xx.h"

 
#line 3233 "STARTUP\\stm32f4xx.h"

 
#line 3250 "STARTUP\\stm32f4xx.h"

 
#line 3284 "STARTUP\\stm32f4xx.h"

 
#line 3318 "STARTUP\\stm32f4xx.h"

 
#line 3352 "STARTUP\\stm32f4xx.h"

 
#line 3386 "STARTUP\\stm32f4xx.h"

 
#line 3420 "STARTUP\\stm32f4xx.h"

 
#line 3454 "STARTUP\\stm32f4xx.h"

 
#line 3488 "STARTUP\\stm32f4xx.h"

 
#line 3522 "STARTUP\\stm32f4xx.h"

 
#line 3556 "STARTUP\\stm32f4xx.h"

 
#line 3590 "STARTUP\\stm32f4xx.h"

 
#line 3624 "STARTUP\\stm32f4xx.h"

 
#line 3658 "STARTUP\\stm32f4xx.h"

 
#line 3692 "STARTUP\\stm32f4xx.h"

 
#line 3726 "STARTUP\\stm32f4xx.h"

 
#line 3760 "STARTUP\\stm32f4xx.h"

 
#line 3794 "STARTUP\\stm32f4xx.h"

 
#line 3828 "STARTUP\\stm32f4xx.h"

 
#line 3862 "STARTUP\\stm32f4xx.h"

 
#line 3896 "STARTUP\\stm32f4xx.h"

 
#line 3930 "STARTUP\\stm32f4xx.h"

 
#line 3964 "STARTUP\\stm32f4xx.h"

 
#line 3998 "STARTUP\\stm32f4xx.h"

 
#line 4032 "STARTUP\\stm32f4xx.h"

 
#line 4066 "STARTUP\\stm32f4xx.h"

 
#line 4100 "STARTUP\\stm32f4xx.h"

 
#line 4134 "STARTUP\\stm32f4xx.h"

 
#line 4168 "STARTUP\\stm32f4xx.h"

 
#line 4202 "STARTUP\\stm32f4xx.h"

 
 
 
 
 
 



 



 


 
 
 
 
 
 


#line 4239 "STARTUP\\stm32f4xx.h"

#line 4248 "STARTUP\\stm32f4xx.h"






 





 


 


 


 



 
 
 
 
 
 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 

 
 
 
 
 
 
#line 4390 "STARTUP\\stm32f4xx.h"

 




 






 






 






 






 
 
 
 
 
  
#line 4478 "STARTUP\\stm32f4xx.h"

 
#line 4497 "STARTUP\\stm32f4xx.h"

  
#line 4508 "STARTUP\\stm32f4xx.h"

  
#line 4530 "STARTUP\\stm32f4xx.h"

  
#line 4552 "STARTUP\\stm32f4xx.h"

  
#line 4574 "STARTUP\\stm32f4xx.h"

  
#line 4596 "STARTUP\\stm32f4xx.h"

 
 
 
 
 

 

#line 4615 "STARTUP\\stm32f4xx.h"

 

#line 4624 "STARTUP\\stm32f4xx.h"

 

#line 4633 "STARTUP\\stm32f4xx.h"

 



 



 



 



 

#line 4658 "STARTUP\\stm32f4xx.h"

 





 

#line 4673 "STARTUP\\stm32f4xx.h"

 





 



 



 



 

 






 




 





 





 



 



 




 



 






 
                                                                     
 


 
 
 
 
 
 
#line 4773 "STARTUP\\stm32f4xx.h"

 
#line 4795 "STARTUP\\stm32f4xx.h"

 
#line 4817 "STARTUP\\stm32f4xx.h"

 
#line 4839 "STARTUP\\stm32f4xx.h"

 
#line 4861 "STARTUP\\stm32f4xx.h"

 
#line 4883 "STARTUP\\stm32f4xx.h"

 
 
 
 
 
 
#line 4907 "STARTUP\\stm32f4xx.h"

#line 4915 "STARTUP\\stm32f4xx.h"

 
#line 4924 "STARTUP\\stm32f4xx.h"

 
#line 4943 "STARTUP\\stm32f4xx.h"

 
#line 4951 "STARTUP\\stm32f4xx.h"

#line 4977 "STARTUP\\stm32f4xx.h"



                                             
 
#line 4995 "STARTUP\\stm32f4xx.h"

#line 5802 "STARTUP\\stm32f4xx.h"


 
 
 
 
 
 











#line 5832 "STARTUP\\stm32f4xx.h"

 











#line 5855 "STARTUP\\stm32f4xx.h"

 











#line 5878 "STARTUP\\stm32f4xx.h"

 











#line 5901 "STARTUP\\stm32f4xx.h"

 












#line 5924 "STARTUP\\stm32f4xx.h"























 












#line 5969 "STARTUP\\stm32f4xx.h"























 












#line 6014 "STARTUP\\stm32f4xx.h"























 












#line 6059 "STARTUP\\stm32f4xx.h"























 












#line 6104 "STARTUP\\stm32f4xx.h"

















 












#line 6143 "STARTUP\\stm32f4xx.h"

















 












#line 6182 "STARTUP\\stm32f4xx.h"

















 












#line 6221 "STARTUP\\stm32f4xx.h"

















 



























 



























 



























 
#line 6330 "STARTUP\\stm32f4xx.h"

 
#line 6339 "STARTUP\\stm32f4xx.h"

 
#line 6348 "STARTUP\\stm32f4xx.h"

 
#line 6359 "STARTUP\\stm32f4xx.h"

#line 6369 "STARTUP\\stm32f4xx.h"

#line 6379 "STARTUP\\stm32f4xx.h"

#line 6389 "STARTUP\\stm32f4xx.h"

 
#line 6400 "STARTUP\\stm32f4xx.h"

#line 6410 "STARTUP\\stm32f4xx.h"

#line 6420 "STARTUP\\stm32f4xx.h"

#line 6430 "STARTUP\\stm32f4xx.h"

 
#line 6441 "STARTUP\\stm32f4xx.h"

#line 6451 "STARTUP\\stm32f4xx.h"

#line 6461 "STARTUP\\stm32f4xx.h"

#line 6471 "STARTUP\\stm32f4xx.h"

 
#line 6482 "STARTUP\\stm32f4xx.h"

#line 6492 "STARTUP\\stm32f4xx.h"

#line 6502 "STARTUP\\stm32f4xx.h"

#line 6512 "STARTUP\\stm32f4xx.h"

 
#line 6523 "STARTUP\\stm32f4xx.h"

#line 6533 "STARTUP\\stm32f4xx.h"

#line 6543 "STARTUP\\stm32f4xx.h"

#line 6553 "STARTUP\\stm32f4xx.h"

 
#line 6564 "STARTUP\\stm32f4xx.h"

#line 6574 "STARTUP\\stm32f4xx.h"

#line 6584 "STARTUP\\stm32f4xx.h"

#line 6594 "STARTUP\\stm32f4xx.h"

 
#line 6605 "STARTUP\\stm32f4xx.h"

#line 6615 "STARTUP\\stm32f4xx.h"

#line 6625 "STARTUP\\stm32f4xx.h"

#line 6635 "STARTUP\\stm32f4xx.h"

 


 


 






























 






























 





                                            
































 





                                            
































 




                                            












 






 














 
 
 
 
 
 
































































 
#line 6909 "STARTUP\\stm32f4xx.h"

 
































































 
































































 
#line 7057 "STARTUP\\stm32f4xx.h"
 
#line 7074 "STARTUP\\stm32f4xx.h"

 
#line 7092 "STARTUP\\stm32f4xx.h"
 
#line 7109 "STARTUP\\stm32f4xx.h"

 
#line 7143 "STARTUP\\stm32f4xx.h"

 
 
 
 
 
 
#line 7167 "STARTUP\\stm32f4xx.h"

 
#line 7176 "STARTUP\\stm32f4xx.h"

 



 





 
 
 
 
 
 
#line 7207 "STARTUP\\stm32f4xx.h"

 
#line 7216 "STARTUP\\stm32f4xx.h"







 



#line 7237 "STARTUP\\stm32f4xx.h"



 



 


 
#line 7262 "STARTUP\\stm32f4xx.h"

 
#line 7272 "STARTUP\\stm32f4xx.h"

 




 


 



 
 
 
 
 
 


 





 


 



 
 
 
 
 

 




 




 




 




 

#line 7343 "STARTUP\\stm32f4xx.h"

 




 





 






 






 






 



 




 






 





 




 




 





 



 



 





                                
 




 



 




 



 






 
 
 
 
 
 











 
#line 7480 "STARTUP\\stm32f4xx.h"


















 


 
#line 7512 "STARTUP\\stm32f4xx.h"

 


 
 
 
 
 
 



#line 7531 "STARTUP\\stm32f4xx.h"

#line 7541 "STARTUP\\stm32f4xx.h"

#line 7552 "STARTUP\\stm32f4xx.h"

 
#line 7561 "STARTUP\\stm32f4xx.h"

#line 7572 "STARTUP\\stm32f4xx.h"















 
 








 








 






#line 7622 "STARTUP\\stm32f4xx.h"

 











 











 
#line 7654 "STARTUP\\stm32f4xx.h"

 




















 
#line 7700 "STARTUP\\stm32f4xx.h"

 
#line 7719 "STARTUP\\stm32f4xx.h"

 



  




 







 
#line 7763 "STARTUP\\stm32f4xx.h"

 
#line 7781 "STARTUP\\stm32f4xx.h"

 


 
#line 7809 "STARTUP\\stm32f4xx.h"

 






 









 
#line 7853 "STARTUP\\stm32f4xx.h"

 
#line 7873 "STARTUP\\stm32f4xx.h"

 
#line 7901 "STARTUP\\stm32f4xx.h"

 






 








 
#line 7944 "STARTUP\\stm32f4xx.h"

 
#line 7964 "STARTUP\\stm32f4xx.h"

 













 
#line 7990 "STARTUP\\stm32f4xx.h"

 





 




 




 
#line 8014 "STARTUP\\stm32f4xx.h"


 
 
 
 
 
 



 






 
 
 
 
 
 
#line 8065 "STARTUP\\stm32f4xx.h"

 
#line 8095 "STARTUP\\stm32f4xx.h"

 
#line 8123 "STARTUP\\stm32f4xx.h"

 
#line 8140 "STARTUP\\stm32f4xx.h"

 



 


 



 
#line 8193 "STARTUP\\stm32f4xx.h"

 
#line 8235 "STARTUP\\stm32f4xx.h"

 


 


 



 
#line 8274 "STARTUP\\stm32f4xx.h"

 
#line 8294 "STARTUP\\stm32f4xx.h"

 


 
#line 8312 "STARTUP\\stm32f4xx.h"

 
#line 8332 "STARTUP\\stm32f4xx.h"

 
#line 8340 "STARTUP\\stm32f4xx.h"

 
#line 8348 "STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
 
 
 
 
 








 
































 









#line 8473 "STARTUP\\stm32f4xx.h"







 
#line 8490 "STARTUP\\stm32f4xx.h"

#line 8499 "STARTUP\\stm32f4xx.h"





 
#line 8511 "STARTUP\\stm32f4xx.h"
                                     












 
#line 8532 "STARTUP\\stm32f4xx.h"

 
#line 8541 "STARTUP\\stm32f4xx.h"






 
#line 8555 "STARTUP\\stm32f4xx.h"

 


 
 
 
 
 
 




 












 


 






#line 8599 "STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 8669 "STARTUP\\stm32f4xx.h"

 
#line 8684 "STARTUP\\stm32f4xx.h"

 
#line 8710 "STARTUP\\stm32f4xx.h"

 


 


 
 
 
 
 
 









#line 8744 "STARTUP\\stm32f4xx.h"

 
#line 8754 "STARTUP\\stm32f4xx.h"

 
#line 8764 "STARTUP\\stm32f4xx.h"

 


 


 


 


 





















 




 
 
 
 
 
   












 






 


 






  
#line 8851 "STARTUP\\stm32f4xx.h"



  
#line 8866 "STARTUP\\stm32f4xx.h"



  
#line 8881 "STARTUP\\stm32f4xx.h"



  
#line 8896 "STARTUP\\stm32f4xx.h"

 






  
#line 8916 "STARTUP\\stm32f4xx.h"



  
#line 8931 "STARTUP\\stm32f4xx.h"



  
#line 8946 "STARTUP\\stm32f4xx.h"



  
#line 8961 "STARTUP\\stm32f4xx.h"

 




           


  
#line 8981 "STARTUP\\stm32f4xx.h"



  
#line 8995 "STARTUP\\stm32f4xx.h"



  
#line 9009 "STARTUP\\stm32f4xx.h"



  
#line 9023 "STARTUP\\stm32f4xx.h"

 






  
#line 9042 "STARTUP\\stm32f4xx.h"



  
#line 9056 "STARTUP\\stm32f4xx.h"



  
#line 9070 "STARTUP\\stm32f4xx.h"



  
#line 9084 "STARTUP\\stm32f4xx.h"

   



 
 
 
 
 
 






#line 9107 "STARTUP\\stm32f4xx.h"







 




#line 9126 "STARTUP\\stm32f4xx.h"

#line 9135 "STARTUP\\stm32f4xx.h"

 


























 
#line 9181 "STARTUP\\stm32f4xx.h"

 






#line 9202 "STARTUP\\stm32f4xx.h"

 
#line 9212 "STARTUP\\stm32f4xx.h"

 






























 





















 






























 





















 
#line 9335 "STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
#line 9370 "STARTUP\\stm32f4xx.h"





#line 9382 "STARTUP\\stm32f4xx.h"

 
#line 9390 "STARTUP\\stm32f4xx.h"

#line 9397 "STARTUP\\stm32f4xx.h"

 


 
#line 9408 "STARTUP\\stm32f4xx.h"


 
 
 
 
 
 
#line 9426 "STARTUP\\stm32f4xx.h"

 


 



 
#line 9450 "STARTUP\\stm32f4xx.h"

 
#line 9459 "STARTUP\\stm32f4xx.h"







 
#line 9479 "STARTUP\\stm32f4xx.h"

 
#line 9490 "STARTUP\\stm32f4xx.h"



 
 
 
 
 
 
#line 9507 "STARTUP\\stm32f4xx.h"



 
#line 9519 "STARTUP\\stm32f4xx.h"







 



 
 
 
 
 
 



 









 
#line 9567 "STARTUP\\stm32f4xx.h"
 


 






 
 
 
 
 
 
#line 9611 "STARTUP\\stm32f4xx.h"

 
#line 9627 "STARTUP\\stm32f4xx.h"

 


 


 
#line 9645 "STARTUP\\stm32f4xx.h"
  
 


 
#line 9661 "STARTUP\\stm32f4xx.h"

 



  


 








 

  
#line 9688 "STARTUP\\stm32f4xx.h"

 






 



 


 


 
#line 9717 "STARTUP\\stm32f4xx.h"

 


 
#line 9732 "STARTUP\\stm32f4xx.h"

 


 
#line 9747 "STARTUP\\stm32f4xx.h"

 


 
 
 

 
#line 9762 "STARTUP\\stm32f4xx.h"

 




 




 




 




 


 


 


 


 


 


 
 
 

 
#line 9815 "STARTUP\\stm32f4xx.h"

#line 9822 "STARTUP\\stm32f4xx.h"

 


 


 



 


 



 


 


 


 



 
 
 

 
#line 9897 "STARTUP\\stm32f4xx.h"

 


 


 


 


 




   
#line 9948 "STARTUP\\stm32f4xx.h"

 
#line 9974 "STARTUP\\stm32f4xx.h"

 
#line 9991 "STARTUP\\stm32f4xx.h"

 





 


 


 


 




 

 

  







 

















 









 

  

 

 
#line 1401 "STARTUP\\GPIO_EK_PP_0815_12_03.c"


void GPIO_Config() {
GPIO_TypeDef  *GPIO;
	
((SYSCFG_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x3800))->CMPCR |= ((uint32_t)0x00000001);

((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->AHB1ENR |= ((0x0001 & 0x0001ul) << 0) | 								((0x0001 & 0x0001ul) << 1) | 								((0x0001 & 0x0001ul) << 2) | 								((0x0001 & 0x0001ul) << 3) | 								((0x0001 & 0x0001ul) << 4) | 								((0x0001 & 0x0001ul) << 5) | 								((0x0001 & 0x0001ul) << 6) | 								((0x0001 & 0x0001ul) << 7) | 								((0x0001ul & 0x0001ul) << 8) ;
#line 1417 "STARTUP\\GPIO_EK_PP_0815_12_03.c"
	
GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0000));	
GPIO->AFR[0]  = 0x03000711;	
GPIO->AFR[1]  = 0x21101111;
GPIO->BSRR    = 0xFFFF0800;	
GPIO->MODER   = 0x00AAEFE1;
GPIO->PUPDR   = 0x10001000;
GPIO->OSPEEDR = 0x00000000;	
GPIO->OTYPER  = 0x0000;
	
GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0400));	
GPIO->AFR[0]  = 0x77666020;	
GPIO->AFR[1]  = 0x11117799;
GPIO->BSRR    = 0xFFFF0000;	
GPIO->MODER   = 0xAAAAAA98;
GPIO->PUPDR   = 0x01000004;
GPIO->OSPEEDR = 0x55555540;	
GPIO->OTYPER  = 0x0000;	

GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0800));	
GPIO->AFR[0]  = 0x33000000;	
GPIO->AFR[1]  = 0x00088803;
GPIO->BSRR    = 0xFFF0020F;	
GPIO->MODER   = 0x02AAA050;
GPIO->PUPDR   = 0x00000000;
GPIO->OSPEEDR = 0x01555000;	
GPIO->OTYPER  = 0x0000;

GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00));	
GPIO->AFR[0]  = 0xC7CC08CC;	
GPIO->AFR[1]  = 0xCCCCCCCC;
GPIO->BSRR    = 0xFFFF0000;	
GPIO->MODER   = 0xAAAAAA2A;
GPIO->PUPDR   = 0x00000000;
GPIO->OSPEEDR = 0xFFFFCF1F;	
GPIO->OTYPER  = 0x0000;

GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000));	
GPIO->AFR[0]  = 0xC5511588;	
GPIO->AFR[1]  = 0xCCCCCCCC;
GPIO->BSRR    = 0xFFEF0010;	
GPIO->MODER   = 0xAAAAA96A;
GPIO->PUPDR   = 0x00000000;
GPIO->OSPEEDR = 0xFFFFE825;	
GPIO->OTYPER  = 0x0000;

GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400));	
GPIO->AFR[0]  = 0x33CCCCCC;	
GPIO->AFR[1]  = 0xCCCC0099;
GPIO->BSRR    = 0xF03F0FC0;	
GPIO->MODER   = 0xAA001AAA;
GPIO->PUPDR   = 0x0000A000;
GPIO->OSPEEDR = 0xFF000FFF;	
GPIO->OTYPER  = 0x0000;	

GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800));	
GPIO->AFR[0]  = 0x00CCCCCC;	
GPIO->AFR[1]  = 0x00000CC0;
GPIO->BSRR    = 0xFE3F01C0;	
GPIO->MODER   = 0x00295AAA;
GPIO->PUPDR   = 0x00000000;
GPIO->OSPEEDR = 0x003C0FFF;	
GPIO->OTYPER  = 0x0000;	

GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1C00));	
GPIO->AFR[0]  = 0x00000000;	
GPIO->AFR[1]  = 0x33322200;
GPIO->BSRR    = 0xFFFF1FFC;	
GPIO->MODER   = 0xA9555550;
GPIO->PUPDR   = 0x00000000;
GPIO->OSPEEDR = 0x00000000;	
GPIO->OTYPER  = 0x0000;	

GPIO = ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x2000));	
GPIO->AFR[0]  = 0x00000000ul;	
GPIO->AFR[1]  = 0x00000000ul;
GPIO->BSRR    = 0x00000000ul;	
GPIO->MODER   = 0x00000000ul;
GPIO->PUPDR   = 0x00000000ul;
GPIO->OSPEEDR = 0x00000000ul;	
GPIO->OTYPER  = 0x0000ul;	

}

