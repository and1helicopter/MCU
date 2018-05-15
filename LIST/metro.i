#line 1 "SOURCE\\Metro.c"
#line 1 ".\\STARTUP\\stm32f4xx.h"










































  



 



 
    






  


 
  


 

#line 85 ".\\STARTUP\\stm32f4xx.h"

 




 




    






 










 











            



  





 










 
#line 156 ".\\STARTUP\\stm32f4xx.h"
                                             


 



 



 









 
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

#line 275 ".\\STARTUP\\stm32f4xx.h"

#line 348 ".\\STARTUP\\stm32f4xx.h"
    

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

   
#line 463 ".\\STARTUP\\stm32f4xx.h"

} IRQn_Type;



 

#line 1 ".\\STARTUP\\core_cm4.h"
 







 

























 
























 




 


 

 













#line 110 ".\\STARTUP\\core_cm4.h"


 
#line 124 ".\\STARTUP\\core_cm4.h"

#line 185 ".\\STARTUP\\core_cm4.h"

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






 
#line 187 ".\\STARTUP\\core_cm4.h"
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

   

#line 188 ".\\STARTUP\\core_cm4.h"
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

 

#line 189 ".\\STARTUP\\core_cm4.h"
#line 1 ".\\STARTUP\\core_cm4_simd.h"
 







 

























 
















 


 



 


 
#line 122 ".\\STARTUP\\core_cm4_simd.h"











#line 689 ".\\STARTUP\\core_cm4_simd.h"

 






#line 190 ".\\STARTUP\\core_cm4.h"








 
#line 225 ".\\STARTUP\\core_cm4.h"

 






 
#line 241 ".\\STARTUP\\core_cm4.h"

 













 


 





 


 
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

 




































 






 







































 






 

 
#line 1399 ".\\STARTUP\\core_cm4.h"

#line 1408 ".\\STARTUP\\core_cm4.h"











 










 

 



 




 










 
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

 





#line 471 ".\\STARTUP\\stm32f4xx.h"
#line 1 ".\\STARTUP\\system_stm32f4xx.h"

























  



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           




 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 472 ".\\STARTUP\\stm32f4xx.h"
#line 473 ".\\STARTUP\\stm32f4xx.h"



   
 
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

#line 908 ".\\STARTUP\\stm32f4xx.h"




 

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



 
  


 
#line 2251 ".\\STARTUP\\stm32f4xx.h"









#line 2266 ".\\STARTUP\\stm32f4xx.h"

 




 





 
#line 2308 ".\\STARTUP\\stm32f4xx.h"

 
#line 2334 ".\\STARTUP\\stm32f4xx.h"

 
#line 2373 ".\\STARTUP\\stm32f4xx.h"
 
#line 2392 ".\\STARTUP\\stm32f4xx.h"

 
 
#line 2409 ".\\STARTUP\\stm32f4xx.h"

#line 2418 ".\\STARTUP\\stm32f4xx.h"


 
#line 2428 ".\\STARTUP\\stm32f4xx.h"

 




 
  


   
#line 2525 ".\\STARTUP\\stm32f4xx.h"
 
#line 2558 ".\\STARTUP\\stm32f4xx.h"

#line 2566 ".\\STARTUP\\stm32f4xx.h"

#line 2575 ".\\STARTUP\\stm32f4xx.h"





 



 
  
  

 
    
 
 
 

 
 
 
 
 
 
#line 2606 ".\\STARTUP\\stm32f4xx.h"

 
#line 2632 ".\\STARTUP\\stm32f4xx.h"
  
 
#line 2658 ".\\STARTUP\\stm32f4xx.h"

 
#line 2696 ".\\STARTUP\\stm32f4xx.h"

 
#line 2738 ".\\STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 
#line 2787 ".\\STARTUP\\stm32f4xx.h"

 
#line 2825 ".\\STARTUP\\stm32f4xx.h"

 
#line 2863 ".\\STARTUP\\stm32f4xx.h"

 
#line 2892 ".\\STARTUP\\stm32f4xx.h"

 


 


 


 


 



 
#line 2928 ".\\STARTUP\\stm32f4xx.h"

 
#line 2950 ".\\STARTUP\\stm32f4xx.h"

 



 
 
 
 
 
 
 
#line 2971 ".\\STARTUP\\stm32f4xx.h"

 
#line 2982 ".\\STARTUP\\stm32f4xx.h"

 
#line 3000 ".\\STARTUP\\stm32f4xx.h"











 





 





 
#line 3038 ".\\STARTUP\\stm32f4xx.h"

 












 
#line 3059 ".\\STARTUP\\stm32f4xx.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 3199 ".\\STARTUP\\stm32f4xx.h"

 
#line 3216 ".\\STARTUP\\stm32f4xx.h"

 
#line 3233 ".\\STARTUP\\stm32f4xx.h"

 
#line 3250 ".\\STARTUP\\stm32f4xx.h"

 
#line 3284 ".\\STARTUP\\stm32f4xx.h"

 
#line 3318 ".\\STARTUP\\stm32f4xx.h"

 
#line 3352 ".\\STARTUP\\stm32f4xx.h"

 
#line 3386 ".\\STARTUP\\stm32f4xx.h"

 
#line 3420 ".\\STARTUP\\stm32f4xx.h"

 
#line 3454 ".\\STARTUP\\stm32f4xx.h"

 
#line 3488 ".\\STARTUP\\stm32f4xx.h"

 
#line 3522 ".\\STARTUP\\stm32f4xx.h"

 
#line 3556 ".\\STARTUP\\stm32f4xx.h"

 
#line 3590 ".\\STARTUP\\stm32f4xx.h"

 
#line 3624 ".\\STARTUP\\stm32f4xx.h"

 
#line 3658 ".\\STARTUP\\stm32f4xx.h"

 
#line 3692 ".\\STARTUP\\stm32f4xx.h"

 
#line 3726 ".\\STARTUP\\stm32f4xx.h"

 
#line 3760 ".\\STARTUP\\stm32f4xx.h"

 
#line 3794 ".\\STARTUP\\stm32f4xx.h"

 
#line 3828 ".\\STARTUP\\stm32f4xx.h"

 
#line 3862 ".\\STARTUP\\stm32f4xx.h"

 
#line 3896 ".\\STARTUP\\stm32f4xx.h"

 
#line 3930 ".\\STARTUP\\stm32f4xx.h"

 
#line 3964 ".\\STARTUP\\stm32f4xx.h"

 
#line 3998 ".\\STARTUP\\stm32f4xx.h"

 
#line 4032 ".\\STARTUP\\stm32f4xx.h"

 
#line 4066 ".\\STARTUP\\stm32f4xx.h"

 
#line 4100 ".\\STARTUP\\stm32f4xx.h"

 
#line 4134 ".\\STARTUP\\stm32f4xx.h"

 
#line 4168 ".\\STARTUP\\stm32f4xx.h"

 
#line 4202 ".\\STARTUP\\stm32f4xx.h"

 
 
 
 
 
 



 



 


 
 
 
 
 
 


#line 4239 ".\\STARTUP\\stm32f4xx.h"

#line 4248 ".\\STARTUP\\stm32f4xx.h"






 





 


 


 


 



 
 
 
 
 
 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 

 
 
 
 
 
 
#line 4390 ".\\STARTUP\\stm32f4xx.h"

 




 






 






 






 






 
 
 
 
 
  
#line 4478 ".\\STARTUP\\stm32f4xx.h"

 
#line 4497 ".\\STARTUP\\stm32f4xx.h"

  
#line 4508 ".\\STARTUP\\stm32f4xx.h"

  
#line 4530 ".\\STARTUP\\stm32f4xx.h"

  
#line 4552 ".\\STARTUP\\stm32f4xx.h"

  
#line 4574 ".\\STARTUP\\stm32f4xx.h"

  
#line 4596 ".\\STARTUP\\stm32f4xx.h"

 
 
 
 
 

 

#line 4615 ".\\STARTUP\\stm32f4xx.h"

 

#line 4624 ".\\STARTUP\\stm32f4xx.h"

 

#line 4633 ".\\STARTUP\\stm32f4xx.h"

 



 



 



 



 

#line 4658 ".\\STARTUP\\stm32f4xx.h"

 





 

#line 4673 ".\\STARTUP\\stm32f4xx.h"

 





 



 



 



 

 






 




 





 





 



 



 




 



 






 
                                                                     
 


 
 
 
 
 
 
#line 4773 ".\\STARTUP\\stm32f4xx.h"

 
#line 4795 ".\\STARTUP\\stm32f4xx.h"

 
#line 4817 ".\\STARTUP\\stm32f4xx.h"

 
#line 4839 ".\\STARTUP\\stm32f4xx.h"

 
#line 4861 ".\\STARTUP\\stm32f4xx.h"

 
#line 4883 ".\\STARTUP\\stm32f4xx.h"

 
 
 
 
 
 
#line 4907 ".\\STARTUP\\stm32f4xx.h"

#line 4915 ".\\STARTUP\\stm32f4xx.h"

 
#line 4924 ".\\STARTUP\\stm32f4xx.h"

 
#line 4943 ".\\STARTUP\\stm32f4xx.h"

 
#line 4951 ".\\STARTUP\\stm32f4xx.h"

#line 4977 ".\\STARTUP\\stm32f4xx.h"



                                             
 
#line 4995 ".\\STARTUP\\stm32f4xx.h"

#line 5802 ".\\STARTUP\\stm32f4xx.h"


 
 
 
 
 
 











#line 5832 ".\\STARTUP\\stm32f4xx.h"

 











#line 5855 ".\\STARTUP\\stm32f4xx.h"

 











#line 5878 ".\\STARTUP\\stm32f4xx.h"

 











#line 5901 ".\\STARTUP\\stm32f4xx.h"

 












#line 5924 ".\\STARTUP\\stm32f4xx.h"























 












#line 5969 ".\\STARTUP\\stm32f4xx.h"























 












#line 6014 ".\\STARTUP\\stm32f4xx.h"























 












#line 6059 ".\\STARTUP\\stm32f4xx.h"























 












#line 6104 ".\\STARTUP\\stm32f4xx.h"

















 












#line 6143 ".\\STARTUP\\stm32f4xx.h"

















 












#line 6182 ".\\STARTUP\\stm32f4xx.h"

















 












#line 6221 ".\\STARTUP\\stm32f4xx.h"

















 



























 



























 



























 
#line 6330 ".\\STARTUP\\stm32f4xx.h"

 
#line 6339 ".\\STARTUP\\stm32f4xx.h"

 
#line 6348 ".\\STARTUP\\stm32f4xx.h"

 
#line 6359 ".\\STARTUP\\stm32f4xx.h"

#line 6369 ".\\STARTUP\\stm32f4xx.h"

#line 6379 ".\\STARTUP\\stm32f4xx.h"

#line 6389 ".\\STARTUP\\stm32f4xx.h"

 
#line 6400 ".\\STARTUP\\stm32f4xx.h"

#line 6410 ".\\STARTUP\\stm32f4xx.h"

#line 6420 ".\\STARTUP\\stm32f4xx.h"

#line 6430 ".\\STARTUP\\stm32f4xx.h"

 
#line 6441 ".\\STARTUP\\stm32f4xx.h"

#line 6451 ".\\STARTUP\\stm32f4xx.h"

#line 6461 ".\\STARTUP\\stm32f4xx.h"

#line 6471 ".\\STARTUP\\stm32f4xx.h"

 
#line 6482 ".\\STARTUP\\stm32f4xx.h"

#line 6492 ".\\STARTUP\\stm32f4xx.h"

#line 6502 ".\\STARTUP\\stm32f4xx.h"

#line 6512 ".\\STARTUP\\stm32f4xx.h"

 
#line 6523 ".\\STARTUP\\stm32f4xx.h"

#line 6533 ".\\STARTUP\\stm32f4xx.h"

#line 6543 ".\\STARTUP\\stm32f4xx.h"

#line 6553 ".\\STARTUP\\stm32f4xx.h"

 
#line 6564 ".\\STARTUP\\stm32f4xx.h"

#line 6574 ".\\STARTUP\\stm32f4xx.h"

#line 6584 ".\\STARTUP\\stm32f4xx.h"

#line 6594 ".\\STARTUP\\stm32f4xx.h"

 
#line 6605 ".\\STARTUP\\stm32f4xx.h"

#line 6615 ".\\STARTUP\\stm32f4xx.h"

#line 6625 ".\\STARTUP\\stm32f4xx.h"

#line 6635 ".\\STARTUP\\stm32f4xx.h"

 


 


 






























 






























 





                                            
































 





                                            
































 




                                            












 






 














 
 
 
 
 
 
































































 
#line 6909 ".\\STARTUP\\stm32f4xx.h"

 
































































 
































































 
#line 7057 ".\\STARTUP\\stm32f4xx.h"
 
#line 7074 ".\\STARTUP\\stm32f4xx.h"

 
#line 7092 ".\\STARTUP\\stm32f4xx.h"
 
#line 7109 ".\\STARTUP\\stm32f4xx.h"

 
#line 7143 ".\\STARTUP\\stm32f4xx.h"

 
 
 
 
 
 
#line 7167 ".\\STARTUP\\stm32f4xx.h"

 
#line 7176 ".\\STARTUP\\stm32f4xx.h"

 



 





 
 
 
 
 
 
#line 7207 ".\\STARTUP\\stm32f4xx.h"

 
#line 7216 ".\\STARTUP\\stm32f4xx.h"







 



#line 7237 ".\\STARTUP\\stm32f4xx.h"



 



 


 
#line 7262 ".\\STARTUP\\stm32f4xx.h"

 
#line 7272 ".\\STARTUP\\stm32f4xx.h"

 




 


 



 
 
 
 
 
 


 





 


 



 
 
 
 
 

 




 




 




 




 

#line 7343 ".\\STARTUP\\stm32f4xx.h"

 




 





 






 






 






 



 




 






 





 




 




 





 



 



 





                                
 




 



 




 



 






 
 
 
 
 
 











 
#line 7480 ".\\STARTUP\\stm32f4xx.h"


















 


 
#line 7512 ".\\STARTUP\\stm32f4xx.h"

 


 
 
 
 
 
 



#line 7531 ".\\STARTUP\\stm32f4xx.h"

#line 7541 ".\\STARTUP\\stm32f4xx.h"

#line 7552 ".\\STARTUP\\stm32f4xx.h"

 
#line 7561 ".\\STARTUP\\stm32f4xx.h"

#line 7572 ".\\STARTUP\\stm32f4xx.h"















 
 








 








 






#line 7622 ".\\STARTUP\\stm32f4xx.h"

 











 











 
#line 7654 ".\\STARTUP\\stm32f4xx.h"

 




















 
#line 7700 ".\\STARTUP\\stm32f4xx.h"

 
#line 7719 ".\\STARTUP\\stm32f4xx.h"

 



  




 







 
#line 7763 ".\\STARTUP\\stm32f4xx.h"

 
#line 7781 ".\\STARTUP\\stm32f4xx.h"

 


 
#line 7809 ".\\STARTUP\\stm32f4xx.h"

 






 









 
#line 7853 ".\\STARTUP\\stm32f4xx.h"

 
#line 7873 ".\\STARTUP\\stm32f4xx.h"

 
#line 7901 ".\\STARTUP\\stm32f4xx.h"

 






 








 
#line 7944 ".\\STARTUP\\stm32f4xx.h"

 
#line 7964 ".\\STARTUP\\stm32f4xx.h"

 













 
#line 7990 ".\\STARTUP\\stm32f4xx.h"

 





 




 




 
#line 8014 ".\\STARTUP\\stm32f4xx.h"


 
 
 
 
 
 



 






 
 
 
 
 
 
#line 8065 ".\\STARTUP\\stm32f4xx.h"

 
#line 8095 ".\\STARTUP\\stm32f4xx.h"

 
#line 8123 ".\\STARTUP\\stm32f4xx.h"

 
#line 8140 ".\\STARTUP\\stm32f4xx.h"

 



 


 



 
#line 8193 ".\\STARTUP\\stm32f4xx.h"

 
#line 8235 ".\\STARTUP\\stm32f4xx.h"

 


 


 



 
#line 8274 ".\\STARTUP\\stm32f4xx.h"

 
#line 8294 ".\\STARTUP\\stm32f4xx.h"

 


 
#line 8312 ".\\STARTUP\\stm32f4xx.h"

 
#line 8332 ".\\STARTUP\\stm32f4xx.h"

 
#line 8340 ".\\STARTUP\\stm32f4xx.h"

 
#line 8348 ".\\STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
 
 
 
 
 








 
































 









#line 8473 ".\\STARTUP\\stm32f4xx.h"







 
#line 8490 ".\\STARTUP\\stm32f4xx.h"

#line 8499 ".\\STARTUP\\stm32f4xx.h"





 
#line 8511 ".\\STARTUP\\stm32f4xx.h"
                                     












 
#line 8532 ".\\STARTUP\\stm32f4xx.h"

 
#line 8541 ".\\STARTUP\\stm32f4xx.h"






 
#line 8555 ".\\STARTUP\\stm32f4xx.h"

 


 
 
 
 
 
 




 












 


 






#line 8599 ".\\STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 8669 ".\\STARTUP\\stm32f4xx.h"

 
#line 8684 ".\\STARTUP\\stm32f4xx.h"

 
#line 8710 ".\\STARTUP\\stm32f4xx.h"

 


 


 
 
 
 
 
 









#line 8744 ".\\STARTUP\\stm32f4xx.h"

 
#line 8754 ".\\STARTUP\\stm32f4xx.h"

 
#line 8764 ".\\STARTUP\\stm32f4xx.h"

 


 


 


 


 





















 




 
 
 
 
 
   












 






 


 






  
#line 8851 ".\\STARTUP\\stm32f4xx.h"



  
#line 8866 ".\\STARTUP\\stm32f4xx.h"



  
#line 8881 ".\\STARTUP\\stm32f4xx.h"



  
#line 8896 ".\\STARTUP\\stm32f4xx.h"

 






  
#line 8916 ".\\STARTUP\\stm32f4xx.h"



  
#line 8931 ".\\STARTUP\\stm32f4xx.h"



  
#line 8946 ".\\STARTUP\\stm32f4xx.h"



  
#line 8961 ".\\STARTUP\\stm32f4xx.h"

 




           


  
#line 8981 ".\\STARTUP\\stm32f4xx.h"



  
#line 8995 ".\\STARTUP\\stm32f4xx.h"



  
#line 9009 ".\\STARTUP\\stm32f4xx.h"



  
#line 9023 ".\\STARTUP\\stm32f4xx.h"

 






  
#line 9042 ".\\STARTUP\\stm32f4xx.h"



  
#line 9056 ".\\STARTUP\\stm32f4xx.h"



  
#line 9070 ".\\STARTUP\\stm32f4xx.h"



  
#line 9084 ".\\STARTUP\\stm32f4xx.h"

   



 
 
 
 
 
 






#line 9107 ".\\STARTUP\\stm32f4xx.h"







 




#line 9126 ".\\STARTUP\\stm32f4xx.h"

#line 9135 ".\\STARTUP\\stm32f4xx.h"

 


























 
#line 9181 ".\\STARTUP\\stm32f4xx.h"

 






#line 9202 ".\\STARTUP\\stm32f4xx.h"

 
#line 9212 ".\\STARTUP\\stm32f4xx.h"

 






























 





















 






























 





















 
#line 9335 ".\\STARTUP\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
#line 9370 ".\\STARTUP\\stm32f4xx.h"





#line 9382 ".\\STARTUP\\stm32f4xx.h"

 
#line 9390 ".\\STARTUP\\stm32f4xx.h"

#line 9397 ".\\STARTUP\\stm32f4xx.h"

 


 
#line 9408 ".\\STARTUP\\stm32f4xx.h"


 
 
 
 
 
 
#line 9426 ".\\STARTUP\\stm32f4xx.h"

 


 



 
#line 9450 ".\\STARTUP\\stm32f4xx.h"

 
#line 9459 ".\\STARTUP\\stm32f4xx.h"







 
#line 9479 ".\\STARTUP\\stm32f4xx.h"

 
#line 9490 ".\\STARTUP\\stm32f4xx.h"



 
 
 
 
 
 
#line 9507 ".\\STARTUP\\stm32f4xx.h"



 
#line 9519 ".\\STARTUP\\stm32f4xx.h"







 



 
 
 
 
 
 



 









 
#line 9567 ".\\STARTUP\\stm32f4xx.h"
 


 






 
 
 
 
 
 
#line 9611 ".\\STARTUP\\stm32f4xx.h"

 
#line 9627 ".\\STARTUP\\stm32f4xx.h"

 


 


 
#line 9645 ".\\STARTUP\\stm32f4xx.h"
  
 


 
#line 9661 ".\\STARTUP\\stm32f4xx.h"

 



  


 








 

  
#line 9688 ".\\STARTUP\\stm32f4xx.h"

 






 



 


 


 
#line 9717 ".\\STARTUP\\stm32f4xx.h"

 


 
#line 9732 ".\\STARTUP\\stm32f4xx.h"

 


 
#line 9747 ".\\STARTUP\\stm32f4xx.h"

 


 
 
 

 
#line 9762 ".\\STARTUP\\stm32f4xx.h"

 




 




 




 




 


 


 


 


 


 


 
 
 

 
#line 9815 ".\\STARTUP\\stm32f4xx.h"

#line 9822 ".\\STARTUP\\stm32f4xx.h"

 


 


 



 


 



 


 


 


 



 
 
 

 
#line 9897 ".\\STARTUP\\stm32f4xx.h"

 


 


 


 


 




   
#line 9948 ".\\STARTUP\\stm32f4xx.h"

 
#line 9974 ".\\STARTUP\\stm32f4xx.h"

 
#line 9991 ".\\STARTUP\\stm32f4xx.h"

 





 


 


 


 




 

 

  







 

















 









 

  

 

 
#line 2 "SOURCE\\Metro.c"
#line 1 "SOURCE\\global.h"








__inline void nop(int n) {while (n--) __nop();}






















#line 1 ".\\STARTUP\\defines.h"
 









 





 


 


 



 
#line 36 ".\\STARTUP\\defines.h"













#line 33 "SOURCE\\global.h"

#line 1 "SOURCE\\IntPrty.h"
typedef enum IRQPrty
{
  
  SysTick_Prty                = 15,      
 
  WWDG_Prty                   = 15,       
  PVD_Prty                    = 15,       
  TAMP_STAMP_Prty             = 15,       
  RTC_WKUP_Prty               = 15,       
  FLASH_Prty                  = 15,       
  RCC_Prty                    = 15,       
  EXTI0_Prty                  = 15,       
  EXTI1_Prty                  = 15,       
  EXTI2_Prty                  = 15,       
  EXTI3_Prty                  = 15,       
  EXTI4_Prty                  = 15,      
  DMA1_Stream0_Prty           = 15,      
  DMA1_Stream1_Prty           = 15,      
  DMA1_Stream2_Prty           = 15,      
  DMA1_Stream3_Prty           = 15,      
  DMA1_Stream4_Prty           = 15,      
  DMA1_Stream5_Prty           = 15,      
  DMA1_Stream6_Prty           = 15,      
  ADC_Prty                    = 15,      
	 
  CAN1_TX_Prty                = 15,      
  CAN1_RX0_Prty               = 15,      
  CAN1_RX1_Prty               = 15,      
  CAN1_SCE_Prty               = 15,      
  EXTI9_5_Prty                = 15,      
  TIM1_BRK_TIM9_Prty		= 0,     				 
  TIM1_UP_TIM10_Prty    = 1,     				 
  TIM1_TRG_COM_TIM11_Prty     = 15,      
  TIM1_CC_Prty                = 15,      
  TIM2_Prty             = 2,     				 
  TIM3_Prty             = 2,     				 
  TIM4_Prty                   = 15,      
  I2C1_EV_Prty                = 15,      
  I2C1_ER_Prty                = 15,      
  I2C2_EV_Prty                = 15,      
  I2C2_ER_Prty                = 15,        
  SPI1_Prty                   = 15,      
  SPI2_Prty                   = 15,      
  USART1_Prty                 = 15,      
  USART2_Prty                 = 15,      
  USART3_Prty                 = 15,      
  EXTI15_10_Prty              = 15,      
  RTC_Alarm_Prty              = 15,      
  OTG_FS_WKUP_Prty            = 15,          
  TIM8_BRK_TIM12_Prty		= 0,     				 
  TIM8_UP_TIM13_Prty    = 1,     				 
  TIM8_TRG_COM_TIM14_Prty     = 15,      
  TIM8_CC_Prty                = 15,      
  DMA1_Stream7_Prty           = 15,      
  FMC_Prty                    = 15,      
  SDIO_Prty                   = 15,      
  TIM5_Prty             = 2,     				 
  SPI3_Prty                   = 15,      
  UART4_Prty                  = 15,      
  UART5_Prty                  = 15,      
  TIM6_DAC_Prty               = 15,      
  TIM7_Prty                   = 15,      
  DMA2_Stream0_Prty     = 1,     				 
  DMA2_Stream1_Prty           = 15,      
  DMA2_Stream2_Prty           = 15,      
  DMA2_Stream3_Prty           = 15,      
  DMA2_Stream4_Prty     = 3,     				 
  ETH_Prty                    = 15,      
  ETH_WKUP_Prty               = 15,      
  CAN2_TX_Prty                = 15,      
  CAN2_RX0_Prty               = 15,      
  CAN2_RX1_Prty               = 15,      
  CAN2_SCE_Prty               = 15,      
  OTG_FS_Prty                 = 15,      
  DMA2_Stream5_Prty           = 15,      
  DMA2_Stream6_Prty           = 15,      
  DMA2_Stream7_Prty           = 15,      
  USART6_Prty                 = 15,      
  I2C3_EV_Prty                = 15,      
  I2C3_ER_Prty                = 15,      
  OTG_HS_EP1_OUT_Prty         = 15,      
  OTG_HS_EP1_IN_Prty          = 15,      
  OTG_HS_WKUP_Prty            = 15,      
  OTG_HS_Prty                 = 15,      
  DCMI_Prty                   = 15,      
  CRYP_Prty                   = 15,      
  HASH_RNG_Prty               = 15,      
  FPU_Prty                    = 15,      
  UART7_Prty                  = 15,      
  UART8_Prty                  = 15,      
  SPI4_Prty                   = 15,      
  SPI5_Prty                   = 15,      
  SPI6_Prty                   = 15,      
  SAI1_Prty                   = 15,      
  LTDC_Prty                   = 15,      
  LTDC_ER_Prty                = 15,      
  DMA2D_Prty                  = 15       
  
} IRQPrty_Type;

#line 35 "SOURCE\\global.h"
#line 1 ".\\PERIPH\\pult.h"



typedef enum PultKeys {
	K_Minus		= 0x01,
	K_Plus		= 0x04,
	K_Down		= 0x02,
	K_Up			= 0x08,
	K_Left		= 0x03,
	K_Enter		= 0x0C,
	K_Ena			= 0x10,
	K_Dis			= 0x20,
	K_Shift		= 0x40
} PultKeys_type;

typedef enum PultLed {
	Led_Alarm		= 0x04,
	Led_Ena			= 0x08,
	Led_Zero		= 0x10,
	Led_Limit		= 0x20,
	Led_TorqP		= 0x02,
	Led_TorqN		= 0x01
} PultLeds_type;


typedef enum ParamFlag {
	TiFlag	= 0x01ul	
} ParamsFlag_type;	

extern int 	Leds;

extern int  WaitPultReady(void);
extern int 	PultRefresh(void);

extern void InitPult(void);
extern void PultUpdate(void);
extern void ClearScreen(void);
extern void Display(void);

extern void lcdout(int pos, int chcount, unsigned char *str);
extern void lcdouttextl(int pos, float num, int prec, unsigned char str[]);
extern void lcdouthex8(int pos, int num);
extern void lcdouthex4(int pos, short num);
extern void lcdoutDT(int D, int T, int SS);
extern void lcdoutDT3(int D, int T, int SS);
extern void lcdoutBIN(int pos, unsigned short num);

extern float GetValue(int Num);
extern  void FillData(int Num, float Val, float Min, float Max, float Step, int Pos, int Prec, char *Str, int Flags);
extern   int ChangeParam(int Count, char *Header, char *Strs);
extern   int SubItem(int Items, int Pos, char *ItemsSTR, int CheckPos);
extern   int SubMenuAsk(char *request);

extern	 int WorkPultKeyb;
#line 36 "SOURCE\\global.h"
#line 1 ".\\PERIPH\\usart.h"


typedef enum USARTPrms {
   OneStopBit		=	0ul,
   TwoStopBits	=	1ul,
	
   NoParity			= (2ul << 1),
   EvenParity		=	(1ul << 1),
   OddParity		=	(0ul << 1),

   Baud9600			=	(0ul << 8),
   Baud19200		=	(1ul << 8),
   Baud38400		=	(2ul << 8),
   Baud57600		=	(3ul << 8),
   Baud115200		=	(4ul << 8),
   Baud230400		=	(5ul << 8),
	 Baud460080		= (6ul << 8),
	 Baud5250000  = (7ul << 8)
} USARTPrms_type;

typedef enum MasterSendMode {
   SendAlways		=	0ul,
   SendFree			=	1ul

} MasterSendMode_type;

struct UsartPrms_struct {
	unsigned char Parity_Stop;
	unsigned char BaudRate;
	unsigned char Addr1;
	unsigned char Addr2;	
};

union UsartPrms_union	{
					 unsigned int AllParams;
struct UsartPrms_struct	Params;	
};












typedef int(*UsartProc_Type)(int, unsigned char*, unsigned char*, int, int);

extern unsigned short CalcCRC(int Count, unsigned char *Buff);
extern  int ModbusErr(int ErrCode, unsigned char *RxBuff, unsigned char *TxBuff);

extern void InitUsart(int Channel, int Params, UsartProc_Type Proc);
extern void SetUartParams(int Channel, int Params);
extern void SetUartParity(int Channel, int Params);
extern void SetUartStopBits(int Channel, int Params);

extern  int MasterSend(int Port, int TX_Count, int SendMode, unsigned char *TX_Buff);

extern  int Modbus03(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus06(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus08(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus16(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);
extern  int Modbus23(int Count, unsigned char *RxBuff, unsigned char *TxBuff, unsigned short *DataAddr, unsigned int DataLen);

extern  int GetSavedUartParams(int Port);
extern void PutSavedUartParams(int Port, int Params);


#line 37 "SOURCE\\global.h"
#line 1 ".\\PERIPH\\rtc.h"
extern int InitRTC(unsigned int Timeout);

extern int32_t  ReadRTC(int32_t RtcWait, uint32_t *RtcDate, uint32_t *RtcTime);
extern void SetRTC(uint32_t Date, uint32_t Time);
extern void PackRTC(uint32_t S_M_H, uint32_t D_M_Y);

extern int RTC_OK;








#line 38 "SOURCE\\global.h"
#line 1 ".\\PERIPH\\IntADC.h"
#line 12 ".\\PERIPH\\IntADC.h"

extern void InitIntADC(void);



#line 39 "SOURCE\\global.h"
#line 1 ".\\PERIPH\\Extmemadc.h"
union ExtMem_type {
	  int w32[524288];
	short w16[524288*2];
};

extern union ExtMem_type ExtMem;
extern short ExtADC[16];
extern short ADCData[16];























extern void InitExtMem(void);
extern void InitTrgExtADC(int freq);
#line 40 "SOURCE\\global.h"
#line 1 ".\\PERIPH\\fram.h"



extern void InitFram(void);
extern void SaveParamsProc(void);
extern int  LoadParamsProc(void);


#line 41 "SOURCE\\global.h"
#line 1 ".\\PERIPH\\mcan.h"
extern void InitCAN1(void);

#line 42 "SOURCE\\global.h"

#line 1 "SOURCE\\Protocol.h"
extern int ModbusStdProc(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum);
extern int RecieveTemprData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum);
extern int RecieveSlaveData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum);
extern int RecieveDriverData(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum);
#line 44 "SOURCE\\global.h"
#line 1 "SOURCE\\StdFunc.h"
struct PI_params_type {
				 short Kp;
unsigned short Ti;	
};	


static __inline int AP_REG(short x, unsigned short Ti, int *Buffer) {
	*Buffer += (x - (*Buffer >> 16)) * Ti;
	return *Buffer >> 16;
}

static __inline int PI_REG(short x, short os, int *Buffer, struct PI_params_type *Params) {
short Err;
	Err 		= __qsub16(x,os);
	if (Params->Ti == 0) {*Buffer = 0; return (__ssat((Err * Params->Kp) >> 8, 16));}
	*Buffer = __qadd(*Buffer, Err * Params->Ti);
	return 		__qadd(*Buffer, __ssat(Err * Params->Kp, 24) << 8) >> 16;
}

static __inline int CalcU_I(short Uab_Ia, short Ubc_Ic) {
	return (__sqrtf((unsigned int)(Uab_Ia*Uab_Ia + Uab_Ia*Ubc_Ic + Ubc_Ic*Ubc_Ic) / 3 * 2 + 0.5f));
}

static __inline int CalcP(short Uab, short Ubc, short Ia, short Ic) {
	return ((long long)(Uab*Ia - Ubc*Ic) * 0x00093CD4ul) >> 32;	
}

static __inline int CalcQ(short Uab, short Ubc, short Ia, short Ic) {
	return (int)(((long long)Uab * (int)(Ia + 2*Ic) + (long long)Ubc * (int)(Ic + 2*Ia)) >> 12) / 3;
}

static __inline int CalcQ3Ph(short Uab, short Ubc, short Uca, short Ia, short Ib, short Ic) {
	return (int)(((long long)Uab * (int)Ic + (long long)Ubc * (int)Ia + (long long)Uca * (int)Ib) >> 12) / 3;
}


extern short FiltDigIn(unsigned int NewCurrDigIn, unsigned short *PrevDigIn, unsigned char *Counters, unsigned char RefDigIn) ;
extern void  SetZeroChs(unsigned int *SetZeroCmnd);
#line 45 "SOURCE\\global.h"
#line 1 "SOURCE\\Termodat.h"


extern int TermodatStatus;
extern int TermodatStep;
extern int TermodatBUSY;
extern int TermodatError;
extern int TermodatInit;

extern int TermodatCycle(int Port);
extern int RecieveTermodat(int RxCount, unsigned char *RxBuffer, unsigned char *TxBuffer, int Status, int PortNum);

#line 46 "SOURCE\\global.h"

#line 1 ".\\PERIPH\\Oscil.h"



typedef struct  {
	uint16_t  OscilTypeData[32];					
	uint16_t  OscilAddr[32];							
	uint32_t  OscilSize; 								  
	 int16_t  OscilQuantity;							
	 int16_t  OscilChNum;								  
	uint16_t  OscilHistoryPercent; 				
	uint16_t  OscilFreqDiv;							  
	uint16_t  OscilEnable;								
  
	uint8_t		OscilChNumName[32][32]; 		
	uint8_t 	OscilComtradeConfig[1392];	
  
  uint16_t  OscilSizePercent;           
  
} OscilConfig_type;

typedef struct {								  
	uint32_t  OscilHistoryCount; 		
	uint16_t  OscilSampleRate; 			
	uint16_t  OscilSampleSize;			
	uint16_t  OscilNeed;						
	uint16_t  OscilLoad;						
	uint32_t  OscilLoadTemp;				
	
	uint16_t  OscilStatus[32];			
	uint16_t  OscilLoadData[32];		
	uint32_t  OscilEnd[32];			    
	uint32_t  OscilDateTime[64];		
	uint32_t  OscilReasons[32];     
	uint16_t  OscilNewConfig[48];	  
	
	uint32_t  OscilMemorySize;      
	uint16_t  OscilStatusLoad;
  uint16_t  Padding[1];           
  uint32_t  OscilLenght;          
  uint32_t  OscilRemainingCount;  
} OscilCmnd_type;


void OscilWriteMemory(void);
extern void Oscil(void);
extern void InitOscil(OscilConfig_type *SavedOscilConfig, OscilCmnd_type *OscilCmnd, uint16_t *DataBlock, uint16_t *Memory);


#line 48 "SOURCE\\global.h"
#line 1 "SOURCE\\Metro.h"











 








 














struct EventLog_type {
	int	EventCode;
	int RTC_Date;
	int RTC_Time;
	int RTC_SSC;
	
unsigned short DigInput1;				
unsigned short DigOutPut1;			
	






	
short Uab;							
short Ubc;							
short Uca;							
short Ua;								
short Ub;								
short Uc;								
	
	int ReadyWord1;				
	int StatusWord1;			
	int AlarmWord1;				
	int WarnWord1;				

short SUFlt;						
short Udc1Flt;					
short Udc2Flt;					

short I1Flt;						
short I2Flt;						
short I3Flt;						
short I4Flt;						

short P1Flt;						
short P2Flt;						
short P3Flt;						
short P4Flt;						

short Q1Flt;						
short Q2Flt;						
short Q3Flt;						
short Q4Flt;						

short SUNotFlt;					

signed char T[24];			
 
short TD[12];						

short Ia1Ia2;
short Ib1Ib2;
short Ic1Ic2;
short Ia3Ia4;
short Ib3Ib4;
short Ic3Ic4;

short IGBTStat1[7];			
short IGBTStat2[7];	
short IGBTStat3[7];	

short I1Flt2;						
short I2Flt2;						
short I3Flt2;						
short I4Flt2;						

short P1Flt2;						
short P2Flt2;						
short P3Flt2;						
short P4Flt2;						

short Q1Flt2;						
short Q2Flt2;						
short Q3Flt2;						
short Q4Flt2;						

short TD2[12];					

short IGBTStat4[7];

short Udc1Flt_rms;			
short Udc2Flt_rms;			

short Q12Flt_rms;				
short Q34Flt_rms;				

short Ic12_rms;					
short Ic34_rms;					


};	

struct	StdCmnd_type {
short SaveParam;				 	
short ParamsLoaded;			 
	int SetDate;					 
	int SetTime;					 
short CurrentEvent;			 
short FlagSaveEvent;		 	 
short LoadEvent;				 
short NewEvent;					 	 
unsigned int SetZeroCmd; 
short Status;						 
short CycleCounter;			 
short CANLink1;					 	
short	Temp[1];
						
unsigned short	DigIn1;						 
unsigned short	DigIn1Or;
unsigned short	DigIn1And;
unsigned short	DigInput1;			

unsigned short	DigIn2;						 
unsigned short	DigIn2Or;
unsigned short	DigIn2And;
unsigned short	DigInput2;
	
unsigned short	DigIn3;						 
unsigned short	DigIn3Or;
unsigned short	DigIn3And;
unsigned short	DigInput3;

unsigned short	DigIn4;						 
unsigned short	DigIn4Or;
unsigned short	DigIn4And;
unsigned short	DigInput4;

unsigned short	DigOut1;					 
unsigned short	DigOut1Or;
unsigned short	DigOut1And;
unsigned short	DigOutput1;			

unsigned short	DigOut2;					 
unsigned short	DigOut2Or;
unsigned short	DigOut2And;
unsigned short	DigOutput2;
	
unsigned short	DigOut3;					 
unsigned short	DigOut3Or;
unsigned short	DigOut3And;
unsigned short	DigOutput3;

unsigned short	DigOut4;					 
unsigned short	DigOut4Or;
unsigned short	DigOut4And;
unsigned short	DigOutput4;

unsigned char DigIn1Count[16];		 
unsigned char DigIn2Count[16];		 
unsigned char DigIn3Count[16];		 
unsigned char DigIn4Count[16];		 

unsigned short PrevDigIn1;				 
unsigned short PrevDigIn2;
unsigned short PrevDigIn3;
unsigned short PrevDigIn4;				 

	int Temp1;
short Temp2[10];							

short	ExtADCData[16];							 								 
short	IntADCData[8*8];						 								 
																	 
																	 
																	 
short ADCDataNorm[32];						 								 

																	 

};



	
	
struct SavedParam_type {
OscilConfig_type Oscil;				 
	
unsigned short ADCK[24];							 		 
				 short ADCOffs[24];						 		 

					 int K1dPhase;							 		 
					 int T1dPhase;															 
					 int K2dPhase;															 
				 short EnaIntGen;															 
				 short EnaFixCorrect;													 
				 short RefStandByIvdI;				 
unsigned short RefStandByIvdT;				 
					 int RefStandByEnaT;				 
				 short RefPEna2ndBridge;			 
				 short RefPDis2ndBridge;			 
				 short EnaAuto2ndBridge;			 
				 short DefMode;								  
unsigned   int UartParams[8];					 		 

unsigned short ParamFiltSU;						 
unsigned short ParamFiltI1;
unsigned short ParamFiltI2;
unsigned short ParamFiltP1;
unsigned short ParamFiltP2;
unsigned short ParamFiltQ1;
unsigned short ParamFiltQ2;
unsigned short ParamFiltUdc;

struct PI_params_type	RegUdc;					 
struct PI_params_type	RegQ;
struct PI_params_type	RegPLL;
struct PI_params_type	RegRes;	

 													 

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
unsigned short RefMtzIVD;							 					
unsigned short RefMtzTVD;							 
				 
unsigned short RefTemprEnaVent;
unsigned short RefTemprDisVent;				 
				 
				 short RefUdcZarad;						 			 
				 short RefSUZarad;						 
				 short KM3Active;							 
				 short KM3Pause;							 
				 short RefUdcZero;						 
				 short RefDeltaUdc;						 
unsigned   int RefWorkKM1;						 
				 short RefCountRazrad;				 

				 short RefUdc;								 
				 short RefQ;									 
				 short RefFi1;								 
					 int SoftStartUdc;					  
				 short MainCh;
				 short ENATIMOffset;
					 
unsigned   int Xn[16];								 			 
					 int Tn[16];																																			 
					
					 int RefWorkRazrad;																																 
					 int RefPauseRazrad;
					 int MaskAlarmKMsOffReady;
					 int MaskAlarmKMsOffWork;
					 int RefAlarmAutoClear;
					 int RefAlarmAutoPause;
					 
					 int RefTEna2ndBridge;
					 int RefTDis2ndBridge;
				 short BridgeUgolCorrect;
				 short EnaRegParamsCorrect;
				 
				 short RefPEnaDiodeMode;							 
				 short RefPDisDiodeMode;							 
				 short RefTEnaDiodeMode;							 
				 short RefTDisDiodeMode;							 
				 short RefUdcDisDiodeMode;						 
				 short EnaDiodeMode;									 
					
				 short RefIHighFreq;
				 short RefTHighFreq;

					 int Pad5[3];
																																														 
};

 
 
 
union	EventLog_union	{
	 int Buffer[64];						
struct EventLog_type EventData;	
};

union	StdCmnd_union	{
	 int Buffer[128];
struct StdCmnd_type StdCmnd;
};

union SavedParam_union	{
	 int Buffer[1790ul];
struct SavedParam_type SavedParam;	
};	


struct Metro_type {
union	EventLog_union 		WorkingEvent;				 
union	EventLog_union 		LoadedEvent;				 
union StdCmnd_union	 		StdCmnd;						 	
union SavedParam_union	SavedParam;					 
      int Padding[2];
	 
    OscilCmnd_type  OscilCmnd;								  
	
				 short NeedDisable;											 	
				 short NeedEnable;
				 short Gamma1;													 
				 short Gamma2;													 
				 short Gamma3;													 
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
					 int PhaseCalc;										
					 int IncPhaseCalc;					 
					 int ErrorTIM1Flag;
					 int ErrorTIM8Flag;
					 int ARR;
					 int TestAMP;
					 int WorkUgol;										
			
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
					 
					 int BufRegUdc1;		
					 int BufRegUdc2;		
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
				 short K_Zarad;			
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
					 int CANCmndTx;										 
					 int CANCmndRx;										 
					 
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
					 
					 
				 short ExtADCArray[16*2*8];
				 short *pExtADCArray;
				 
				  
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







 


typedef enum ADCChannels								 
{
	 
	_Uab		=	16ul,			 
	_Ubc		= 17ul,			 
	_Uca		= 18ul,			 
	
	 
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





extern void TIM1_Init(int freq);
extern void TIM8_Init(int freq);
extern void TIM2_TIM5_Init(void);

extern void InitParams(int ParamsLoaded);
#line 49 "SOURCE\\global.h"







#line 3 "SOURCE\\Metro.c"

#line 1 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"




 





 












 






   









 






#line 61 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"

#line 75 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"







   




 















 
#line 112 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"



extern const int math_errhandling;
#line 261 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );






 
extern __declspec(__nothrow) double exp2(double  );  
extern __declspec(__nothrow) float exp2f(float  );
__declspec(__nothrow) long double exp2l(long double );
extern __declspec(__nothrow) double fdim(double  , double  );
extern __declspec(__nothrow) float fdimf(float  , float  );
__declspec(__nothrow) long double fdiml(long double , long double );
#line 803 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"
extern __declspec(__nothrow) double fma(double  , double  , double  );
extern __declspec(__nothrow) float fmaf(float  , float  , float  );

inline __declspec(__nothrow) long double fmal(long double __x, long double __y, long double __z)     { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __declspec(__nothrow) __attribute__((const)) double fmax(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fmaxf(float  , float  );
__declspec(__nothrow) long double fmaxl(long double , long double );
extern __declspec(__nothrow) __attribute__((const)) double fmin(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fminf(float  , float  );
__declspec(__nothrow) long double fminl(long double , long double );
extern __declspec(__nothrow) double log2(double  );  
extern __declspec(__nothrow) float log2f(float  );
__declspec(__nothrow) long double log2l(long double );
extern __declspec(__nothrow) long lrint(double  );
extern __declspec(__nothrow) long lrintf(float  );

inline __declspec(__nothrow) long lrintl(long double __x)     { return lrint((double)__x); }


extern __declspec(__nothrow) long long llrint(double  );
extern __declspec(__nothrow) long long llrintf(float  );

inline __declspec(__nothrow) long long llrintl(long double __x)     { return llrint((double)__x); }


extern __declspec(__nothrow) long lround(double  );
extern __declspec(__nothrow) long lroundf(float  );

inline __declspec(__nothrow) long lroundl(long double __x)     { return lround((double)__x); }


extern __declspec(__nothrow) long long llround(double  );
extern __declspec(__nothrow) long long llroundf(float  );

inline __declspec(__nothrow) long long llroundl(long double __x)     { return llround((double)__x); }


extern __declspec(__nothrow) __attribute__((const)) double nan(const char * );
extern __declspec(__nothrow) __attribute__((const)) float nanf(const char * );

inline __declspec(__nothrow) __attribute__((const)) long double nanl(const char *__t)     { return (long double)nan(__t); }
#line 856 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"
extern __declspec(__nothrow) __attribute__((const)) double nearbyint(double  );
extern __declspec(__nothrow) __attribute__((const)) float nearbyintf(float  );
__declspec(__nothrow) long double nearbyintl(long double );
extern  double remquo(double  , double  , int * );
extern  float remquof(float  , float  , int * );

inline long double remquol(long double __x, long double __y, int *__q)     { return (long double)remquo((double)__x, (double)__y, __q); }


extern __declspec(__nothrow) __attribute__((const)) double round(double  );
extern __declspec(__nothrow) __attribute__((const)) float roundf(float  );
__declspec(__nothrow) long double roundl(long double );
extern __declspec(__nothrow) double tgamma(double  );  
extern __declspec(__nothrow) float tgammaf(float  );
__declspec(__nothrow) long double tgammal(long double );
extern __declspec(__nothrow) __attribute__((const)) double trunc(double  );
extern __declspec(__nothrow) __attribute__((const)) float truncf(float  );
__declspec(__nothrow) long double truncl(long double );






#line 896 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"

#line 1087 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"











#line 1317 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\Math.h"





 
#line 5 "SOURCE\\Metro.c"









__align(4) struct Metro_type Metro;

 

static __inline void FixCorrect(void)	{

	if (Metro . SavedParam . SavedParam .EnaFixCorrect == 0) {Metro .GammaT1_1_fixcorrect = Metro .GammaT1_3_fixcorrect = Metro .GammaT8_1_fixcorrect = Metro .GammaT8_3_fixcorrect = 0; return;}

	 

	if (Metro .Ia12_fixcorrect >  5) Metro .GammaT8_3_fixcorrect++;
	if (Metro .Ia12_fixcorrect < -5) Metro .GammaT8_3_fixcorrect--;
	
	if (Metro .Ic12_fixcorrect >  5) Metro .GammaT8_1_fixcorrect++;
	if (Metro .Ic12_fixcorrect < -5) Metro .GammaT8_1_fixcorrect--;

	 

	if (Metro .Ia34_fixcorrect >  5) Metro .GammaT1_3_fixcorrect++;
	if (Metro .Ia34_fixcorrect < -5) Metro .GammaT1_3_fixcorrect--;
	
	if (Metro .Ic34_fixcorrect >  5) Metro .GammaT1_1_fixcorrect++;
	if (Metro .Ic34_fixcorrect < -5) Metro .GammaT1_1_fixcorrect--;
		
	Metro .GammaT8_1_fixcorrect = __ssat(Metro .GammaT8_1_fixcorrect, 9);
	Metro .GammaT8_3_fixcorrect = __ssat(Metro .GammaT8_3_fixcorrect, 9);

	Metro .GammaT1_1_fixcorrect = __ssat(Metro .GammaT1_1_fixcorrect, 9);
	Metro .GammaT1_3_fixcorrect = __ssat(Metro .GammaT1_3_fixcorrect, 9);
	
}


static __inline void CAN_Message(int Cycle) {			 
int TempData;
	
	 
	if ((Cycle & 0x07) == 0) {

		 
		if (((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->TSR & (((uint32_t)0x00000004) | ((uint32_t)0x00000008))) {								 
			((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->TSR	|= (((uint32_t)0x00000004) | ((uint32_t)0x00000008) | ((uint32_t)0x00000080));		 
		}	
		
		 
		Metro . StdCmnd . StdCmnd .CANLink1 = (short)__qadd16(Metro . StdCmnd . StdCmnd .CANLink1, 1);
		
		 
		while (((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->RF0R & 0x03)	{
			if ((((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sFIFOMailBox[0].RDTR & 0x0000FF00) == 0) {							 
				TempData  			 = ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sFIFOMailBox[0].RDLR;									 
				Metro.CANRefUdc	 = TempData >> 16;
				Metro.CANStatus	 = (short)TempData;
				Metro.CANCmndRx  = ((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sFIFOMailBox[0].RDHR;									 
				Metro . StdCmnd . StdCmnd .CANLink1 = 0;
			}
			(*(volatile unsigned int *)((((unsigned int)(&((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->RF0R) - ((uint32_t)0x40000000))*32 + 5*4) + ((uint32_t)0x42000000))) = 1;
		}	

		 
		Metro.CANCmndTx &= ~((Metro.CANCmndRx >> 16) & 0xFFFF);
		
		 
		if (Metro . StdCmnd . StdCmnd .CANLink1 > 10)	{	Metro.CANCmndTx = 0;}
		
		 
		if (((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->TSR & ((uint32_t)0x04000000)) {																			 
			((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sTxMailBox[0].TDLR = Metro . StdCmnd . StdCmnd .Status | (Metro.WorkRefUdc1 << 16);												 
			((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sTxMailBox[0].TDHR = (Metro.CANCmndTx & 0xFFFF) | (Metro.CANCmndRx << 16);						 
			((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sTxMailBox[0].TDTR = 8;																			 
			((CAN_TypeDef *) (((uint32_t)0x40000000) + 0x6400))->sTxMailBox[0].TIR	 = (0ul << 21) | ((uint32_t)0x00000001);						 
		} 
		
		 





	}	
} 

static __inline void CheckCANCmnd(void) {					 
	 
	if (Metro.CANCmndRx & 0x0001) {Metro.NeedEnable  |= 0x0001; Metro.CANCmndRx &= ~0x0001;}
	 
	if (Metro.CANCmndRx & 0x0002) {
		Metro.CANCmndRx &= ~0x0002;
		if ((Metro . StdCmnd . StdCmnd .Status == 5) || (Metro . StdCmnd . StdCmnd .Status == 6) || (Metro . StdCmnd . StdCmnd .Status == 7)) Metro.NeedDisable |= 0x0001; 
	}
	
	 
	if ((Metro . StdCmnd . StdCmnd .CANLink1 > 25) && (Metro . StdCmnd . StdCmnd .CANLink1 < 1000)) {						 
		if ((Metro.CANStatus == 5) || (Metro.CANStatus == 6) || (Metro.CANStatus == 7)) {Metro.NeedEnable |= 0x0001; Metro.CANStatus = 0;}
	}
}


static __inline  int Delay(int Expr, int TimeDelay, int *Counter) {
int Temp;
	Temp = *Counter;
	if (Expr) {Temp = __qadd(Temp,1);} else {Temp = 0;}
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

static __inline void CalcDigOut(void) {						 
int TempDigOut = 0;
int i;
	
	 
	if (Metro .KM1ENA) 		{Metro .KM1ENA = __qadd(Metro .KM1ENA,1);}												 
	if (Metro .ACZaradENA) {Metro .ACZaradENA = __qadd16(Metro .ACZaradENA,1);}							 
	if (Metro .AC_KM_ENA) 	{Metro .AC_KM_ENA = __qadd16(Metro .AC_KM_ENA,1);}								 
	
	 
	if (Metro . StdCmnd . StdCmnd .Status == 2)	{	TempDigOut |= (1ul << 0);	}																			 

	if (Metro . StdCmnd . StdCmnd .Status == 5) 	{	TempDigOut |= (1ul << 3);	}																			 
	
	if (Metro . WorkingEvent . EventData .AlarmWord1)		{	TempDigOut |= (1ul << 9) | (1ul << 2);}													 
	
	if (Metro .KM1ENA)				{	TempDigOut |= (1ul << 7);	}																			 

	if (Metro .ACZaradENA)		{	TempDigOut |= (1ul << 6);	}																			 

	if (Metro .AC_KM_ENA)		{	TempDigOut |= (1ul << 5);	}																			 
	
	if (Metro .CountRazrad)	{ Metro .CountRazrad--; TempDigOut |= (1ul << 2); }							 																		
	
	Metro . StdCmnd . StdCmnd .DigOut1 		=  TempDigOut;																													 
}

static __inline void CalcDigIn(void) {						 
	
	 
	Metro .K_Alarm  = ((Metro . StdCmnd . StdCmnd .DigInput1 & 0x0001) == 0) ? 0 : __qadd16(Metro .K_Alarm, 1);
	Metro .K_Start  = ((Metro . StdCmnd . StdCmnd .DigInput1 & 0x0008) == 0) ? 0 : __qadd16(Metro .K_Start, 1);
	Metro .K_Stop   = ((Metro . StdCmnd . StdCmnd .DigInput1 & 0x0010) == 0) ? 0 : __qadd16(Metro .K_Stop,  1);
	Metro .K_Zarad  = ((Metro . StdCmnd . StdCmnd .DigInput1 & 0x0002) == 0) ? 0 : __qadd16(Metro .K_Zarad, 1);
	Metro .K_Razrad = ((Metro . StdCmnd . StdCmnd .DigInput1 & 0x0004) == 0) ? 0 : __qadd16(Metro .K_Razrad,1);

	Metro .KM1ON    = ((Metro . StdCmnd . StdCmnd .DigInput1 & 0x1000) == 0) ? 0 : __qadd(Metro .KM1ON, 1);
	
	Metro .AC_KM_ON = ((Metro . StdCmnd . StdCmnd .DigInput1 & 0x0400) == 0) ? 0 : __qadd16(Metro .AC_KM_ON, 1);
	
	

}

static __inline void DigInOut(void) {							 
	
	 
	(*(volatile unsigned int *)((((unsigned int)(&((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0800))->ODR) - ((uint32_t)0x40000000))*32 + 3*4) + ((uint32_t)0x42000000))) = 0;								

	Metro . WorkingEvent . EventData .DigOutPut1 	= (Metro . StdCmnd . StdCmnd .DigOut1 | Metro . StdCmnd . StdCmnd .DigOut1Or) & Metro . StdCmnd . StdCmnd .DigOut1And;										 
	Metro . StdCmnd . StdCmnd .DigOutput1 	= ~Metro . WorkingEvent . EventData .DigOutPut1;																														 
	
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1C00))->BSRR = ((Metro . StdCmnd . StdCmnd .DigOutput1 & 0x07FF) << 2) | (( (~Metro . StdCmnd . StdCmnd .DigOutput1) & 0x07FF) << 18);
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0000))->BSRR = ((Metro . StdCmnd . StdCmnd .DigOutput1 & 0x1800) >>11) | (( (~Metro . StdCmnd . StdCmnd .DigOutput1) & 0x1800) << 5);	
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400))->BSRR = ((Metro . StdCmnd . StdCmnd .DigOutput1 & 0x2000) >> 2) | (( (~Metro . StdCmnd . StdCmnd .DigOutput1) & 0x2000) << 14);
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0800))->BSRR = ((Metro . StdCmnd . StdCmnd .DigOutput1 & 0xC000) >>14) | (( (~Metro . StdCmnd . StdCmnd .DigOutput1) & 0xC000) << 2);
	
	nop(10);
	Metro . StdCmnd . StdCmnd .DigIn1 = (((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x2000))->IDR & 0x0FFF) | ((((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400))->IDR & 0x03C0)<<6);		  
	(*(volatile unsigned int *)((((unsigned int)(&((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0800))->ODR) - ((uint32_t)0x40000000))*32 + 3*4) + ((uint32_t)0x42000000))) = 1;								
	 
	Metro . WorkingEvent . EventData .DigInput1 = Metro . StdCmnd . StdCmnd .DigInput1 = FiltDigIn( (((Metro . StdCmnd . StdCmnd .DigIn1 | Metro . StdCmnd . StdCmnd .DigIn1Or) & Metro . StdCmnd . StdCmnd .DigIn1And) << 16) | Metro . StdCmnd . StdCmnd .DigInput1,
																										&Metro . StdCmnd . StdCmnd .PrevDigIn1,
																										Metro . StdCmnd . StdCmnd .DigIn1Count,
																										19);
	 
	(*(volatile unsigned int *)((((unsigned int)(&((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0800))->ODR) - ((uint32_t)0x40000000))*32 + 2*4) + ((uint32_t)0x42000000))) = 0;
}


static __inline  int AnalyzeUgol() {							 
int x = 50;	
int d01,d12,d02;
	
	d01 = (((short)((Metro . Ugol_n0 - Metro . Ugol_n1) & 0xFFFF)) < 0 ? (-(short)((Metro . Ugol_n0 - Metro . Ugol_n1) & 0xFFFF)) : ((short)((Metro . Ugol_n0 - Metro . Ugol_n1) & 0xFFFF)));
	d12 = (((short)((Metro . Ugol_n1 - Metro . Ugol_n2) & 0xFFFF)) < 0 ? (-(short)((Metro . Ugol_n1 - Metro . Ugol_n2) & 0xFFFF)) : ((short)((Metro . Ugol_n1 - Metro . Ugol_n2) & 0xFFFF)));
	d02 = (((short)((Metro . Ugol_n0 - Metro . Ugol_n2) & 0xFFFF)) < 0 ? (-(short)((Metro . Ugol_n0 - Metro . Ugol_n2) & 0xFFFF)) : ((short)((Metro . Ugol_n0 - Metro . Ugol_n2) & 0xFFFF)));
	
	if ((d01 > (65536ul / (80ul + x))) && (d01 < (65536ul / (80 - x)))) return 0;
	 
	if ((d12 > (65536ul / (80ul + x))) && (d12 < (65536ul / (80 - x)))) return 0;
	 
	if ((d02 > (65536ul / ((80ul + x)>>1))) && (d02 < (65536ul / ((80 - x)>>1)))) return 0;
	
	return 1;
}
static __inline  int AnalyzeUgol2(int NewUgol) {	 
static int i = 0;
static int ErrorCounter = 0;
			 int DeltaUgol = 0;
				
	DeltaUgol	= Metro.PrevUgols[i];
	Metro.PrevUgols[i] = NewUgol;
	if (++i > 39) i = 0;

	DeltaUgol = (((short)((NewUgol - DeltaUgol) & 0xFFFF)) < 0 ? (-(short)((NewUgol - DeltaUgol) & 0xFFFF)) : ((short)((NewUgol - DeltaUgol) & 0xFFFF)));
		
	 

	if ((DeltaUgol > 0x0000828F) || (DeltaUgol < 0x00007D70)) ErrorCounter++; else ErrorCounter = 0;
	
	return ErrorCounter;
}
static __inline void NormIntADC(int chs, int k) {	 
int i;
	for (i = 0; i < chs; i++) {
		Metro . StdCmnd . StdCmnd .ADCDataNorm[i+16] = ((short)__qsub16((Metro . StdCmnd . StdCmnd .IntADCData[i + (k + 8)*chs] << 3), Metro . SavedParam . SavedParam .ADCOffs[i+16]) * Metro . SavedParam . SavedParam .ADCK[i+16]) >> 15;
	}
}

static __inline void NormExtADC(int chs, int k) {	 
int i;
	for (i = 0; i < chs; i++) { 
		Metro . StdCmnd . StdCmnd .ADCDataNorm[i] = ((short)__qsub16(Metro .ExtADCArray[i + (k + 8)*chs], Metro . SavedParam . SavedParam .ADCOffs[i]) * Metro . SavedParam . SavedParam .ADCK[i]) >> 16;
	}	
}

static __inline void CalcSensUdc(int k) {					 
static int SummUdc1 = 0;
static int SummUdc2 = 0;
short UdcNotFlt;

	UdcNotFlt = -Metro . StdCmnd . StdCmnd .ADCDataNorm[_Udc1];
	Metro . WorkingEvent . EventData .Udc1Flt = AP_REG(UdcNotFlt, Metro . SavedParam . SavedParam .ParamFiltUdc / 8,  &Metro.BufFiltUdc1);
	SummUdc1 += UdcNotFlt;

	UdcNotFlt = Metro . StdCmnd . StdCmnd .ADCDataNorm[_Udc2];
	Metro . WorkingEvent . EventData .Udc2Flt = AP_REG(UdcNotFlt, Metro . SavedParam . SavedParam .ParamFiltUdc / 8,  &Metro.BufFiltUdc2);
	SummUdc2 += UdcNotFlt;
	
	if (k == (8 - 1)) 
	{
		Metro . WorkingEvent . EventData .Udc1Flt_rms = SummUdc1 / 8;
		Metro . WorkingEvent . EventData .Udc2Flt_rms = SummUdc2 / 8;
		SummUdc1 = SummUdc2 = 0;
	}
}	

static __inline void CalcSensU(int k) {
short SUNotFlt;
	
	 
	Metro . WorkingEvent . EventData .Uab = -Metro . StdCmnd . StdCmnd .ADCDataNorm[_Uab];
  Metro . WorkingEvent . EventData .Ubc = -Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ubc];
	Metro . WorkingEvent . EventData .Uca = -Metro . StdCmnd . StdCmnd .ADCDataNorm[_Uca];
	
	 
	Metro . WorkingEvent . EventData .SUNotFlt = __ssat(CalcU_I(Metro . WorkingEvent . EventData .Uab, Metro . WorkingEvent . EventData .Ubc), 16);
	Metro . WorkingEvent . EventData .SUFlt = AP_REG(Metro . WorkingEvent . EventData .SUNotFlt, Metro . SavedParam . SavedParam .ParamFiltSU / 8, &Metro.BufFiltSU);
	
	Metro . WorkingEvent . EventData .Ua = __ssat(( 2*(int)Metro . WorkingEvent . EventData .Uab + (int)Metro . WorkingEvent . EventData .Ubc) / 3, 16);
	Metro . WorkingEvent . EventData .Ub =           ((int)Metro . WorkingEvent . EventData .Ubc - (int)Metro . WorkingEvent . EventData .Uab) / 3;
	Metro . WorkingEvent . EventData .Uc = __ssat((-2*(int)Metro . WorkingEvent . EventData .Ubc - (int)Metro . WorkingEvent . EventData .Uab) / 3, 16);
	
} 

static __inline void CalcSensI(int k) {
static int SummI12 = 0;
static int SummI34 = 0;
	
static int SummIa12 = 0;
static int SummIc12 = 0;
static int SummIa34 = 0;
static int SummIc34 = 0;
static int Count = 0;
	
	
	Metro . WorkingEvent . EventData .Ia1Ia2   = (short)__qadd16(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1], Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia2]);
	Metro . WorkingEvent . EventData .Ib1Ib2   = (short)__qadd16(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib1], Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib2]);
	Metro . WorkingEvent . EventData .Ic1Ic2   = (short)__qadd16(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic1], Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic2]);
	SummI12 				+= Metro . WorkingEvent . EventData .Ic1Ic2;
	 
	SummIa12				+= Metro . WorkingEvent . EventData .Ia1Ia2;
	SummIc12 				+= Metro . WorkingEvent . EventData .Ic1Ic2;
	
	Metro . WorkingEvent . EventData .Ia3Ia4   = (short)__qadd16(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia3], Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia4]);
	Metro . WorkingEvent . EventData .Ib3Ib4   = (short)__qadd16(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib3], Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib4]);
	Metro . WorkingEvent . EventData .Ic3Ic4   = (short)__qadd16(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic3], Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic4]);	
	SummI34 				+=	Metro . WorkingEvent . EventData .Ic3Ic4;
	 
	SummIa34				+= Metro . WorkingEvent . EventData .Ia3Ia4;
	SummIc34 				+= Metro . WorkingEvent . EventData .Ic3Ic4;
	
	 
	Metro . WorkingEvent . EventData .I1Flt = AP_REG(__ssat(CalcU_I(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic1]),16), Metro . SavedParam . SavedParam .ParamFiltI1 / 8, &Metro.BufFiltI1);
	Metro . WorkingEvent . EventData .I2Flt = AP_REG(__ssat(CalcU_I(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia2],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic2]),16), Metro . SavedParam . SavedParam .ParamFiltI2 / 8, &Metro.BufFiltI2);
	Metro . WorkingEvent . EventData .I3Flt = AP_REG(__ssat(CalcU_I(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia3],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic3]),16), Metro . SavedParam . SavedParam .ParamFiltI1 / 8, &Metro.BufFiltI3);
	Metro . WorkingEvent . EventData .I4Flt = AP_REG(__ssat(CalcU_I(Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia4],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic4]),16), Metro . SavedParam . SavedParam .ParamFiltI2 / 8, &Metro.BufFiltI4);

	if (k == (8 - 1)) 
	{
		Metro . WorkingEvent . EventData .Ic12_rms = SummI12 / 8;
		Metro . WorkingEvent . EventData .Ic34_rms = SummI34 / 8;
		SummI12 = SummI34 = 0;
	}

	
	if (++Count == (2000 * 8 / 50 ))
	{
		Metro .Ia12_fixcorrect = SummIa12 / (2000 * 8 / 50 );
		Metro .Ic12_fixcorrect = SummIc12 / (2000 * 8 / 50 );
		Metro .Ia34_fixcorrect = SummIa34 / (2000 * 8 / 50 );
		Metro .Ic34_fixcorrect = SummIc34 / (2000 * 8 / 50 );
		Count = SummIa12 = SummIa34 = SummIc12 = SummIc34 = 0;
		
		FixCorrect();
	}	
	
	
	
}	


static __inline void CalcSensPQ(void) {							 
short TempP;
short TempQ;
static int SummQ12 = 0;
static int SummQ34 = 0;
static int QCount = 0;

	
	TempQ = __ssat(CalcQ3Ph(Metro . WorkingEvent . EventData .Uab, Metro . WorkingEvent . EventData .Ubc, Metro . WorkingEvent . EventData .Uca, Metro . WorkingEvent . EventData .Ia1Ia2, Metro . WorkingEvent . EventData .Ib1Ib2, Metro . WorkingEvent . EventData .Ic1Ic2), 16);
	SummQ12 += TempQ;
	TempQ = __ssat(CalcQ3Ph(Metro . WorkingEvent . EventData .Uab, Metro . WorkingEvent . EventData .Ubc, Metro . WorkingEvent . EventData .Uca, Metro . WorkingEvent . EventData .Ia3Ia4, Metro . WorkingEvent . EventData .Ib3Ib4, Metro . WorkingEvent . EventData .Ic3Ic4), 16);
	SummQ34 += TempQ;
	
	if (++QCount == (2000 * 8 / 50 ))
	{
		Metro . WorkingEvent . EventData .Q12Flt_rms = SummQ12 / (2000 * 8 / 50 );
		Metro . WorkingEvent . EventData .Q34Flt_rms = SummQ34 / (2000 * 8 / 50 );		
		QCount = SummQ12 = SummQ34 = 0;
	}

	 
	TempP = __ssat(CalcP(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic1]),16);
	Metro . WorkingEvent . EventData .P1Flt	  = AP_REG(TempP, Metro . SavedParam . SavedParam .ParamFiltP1, &Metro.BufFiltP1);	
	
	TempQ = __ssat(CalcQ(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic1]),16);
	Metro . WorkingEvent . EventData .Q1Flt	  = AP_REG(TempQ, Metro . SavedParam . SavedParam .ParamFiltQ1, &Metro.BufFiltQ1);

	 
	TempP = __ssat(CalcP(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia2],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic2]),16);
	Metro . WorkingEvent . EventData .P2Flt	  = AP_REG(TempP, Metro . SavedParam . SavedParam .ParamFiltP2, &Metro.BufFiltP2);	
	
	TempQ = __ssat(CalcQ(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia2],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic2]),16);
	Metro . WorkingEvent . EventData .Q2Flt	  = AP_REG(TempQ, Metro . SavedParam . SavedParam .ParamFiltQ2, &Metro.BufFiltQ2);

	 
	TempP 					= __ssat(CalcP(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia3],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic3]),16);
	Metro . WorkingEvent . EventData .P3Flt	  = AP_REG(TempP, Metro . SavedParam . SavedParam .ParamFiltP2, &Metro.BufFiltP3);	
	
	TempQ					  = __ssat(CalcQ(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia3],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic3]),16);
	Metro . WorkingEvent . EventData .Q3Flt	  = AP_REG(TempQ, Metro . SavedParam . SavedParam .ParamFiltQ2, &Metro.BufFiltQ3);

	 
	TempP 					= __ssat(CalcP(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia4],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic4]),16);
	Metro . WorkingEvent . EventData .P4Flt	  = AP_REG(TempP, Metro . SavedParam . SavedParam .ParamFiltP2, &Metro.BufFiltP4);	
	
	TempQ					  = __ssat(CalcQ(Metro . WorkingEvent . EventData .Uab,Metro . WorkingEvent . EventData .Ubc,Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia4],Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic4]),16);
	Metro . WorkingEvent . EventData .Q4Flt	  = AP_REG(TempQ, Metro . SavedParam . SavedParam .ParamFiltQ2, &Metro.BufFiltQ4);
	
}

static __inline  int CalcRMS(short *Data) {				 
static long long Summ    = 0;
static 			 int Counter = 80;
static 			 int Result  = 0;
int Temp; 	

	Summ   += ((long long)*Data) * ((long long)*Data);
	if (--Counter) return Result;

	Temp    = Summ >> 6;
	Result  = __ssat(__sqrtf(Temp * 0.8f),16);
	Counter = 80;
	Summ    = 0;
	return Result;
}
static __inline	 int CalcInitAMP(int Udc) {					 
int	Amp;
	
	Udc = (Udc * 0x0000B505) >> 16;	 
	Amp = ((int)Metro.ARR * (int)Metro . WorkingEvent . EventData .SUFlt) / Udc;
	if (Amp > Metro.ARR) Amp = Metro.ARR;
	if (Amp < (Metro.ARR >> 4)) Amp = Metro.ARR >> 4;
	return Amp;
}


static __inline  int Alarms(int OldErrorCode) {		 
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

{	 




















}
	
{	  
	
	AbsIa = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1];
	AbsIb = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib1] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib1] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib1];
	AbsIc = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic1] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic1] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic1];
	
	if (AbsIa < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIa1Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIa1Counter = (unsigned short)__uqsub16(Metro.MTZIa1Counter,1);
	if (AbsIb < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIb1Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIb1Counter = (unsigned short)__uqsub16(Metro.MTZIb1Counter,1);
	if (AbsIc < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIc1Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIc1Counter = (unsigned short)__uqsub16(Metro.MTZIc1Counter,1);
	
	if ((Metro.MTZIa1Counter == 0) || (Metro.MTZIb1Counter == 0) || (Metro.MTZIc1Counter == 0)) {
		if (Metro . StdCmnd . StdCmnd .Status == 5) ErrorCode |= (1ul << 0); else ErrorCode |= (1ul << 13);
		Metro.MTZIa1Counter = Metro.MTZIb1Counter = Metro.MTZIc1Counter = Metro . SavedParam . SavedParam .RefMtzT;
	}
}
{	 
	AbsIa = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia2] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia2] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia2];
	AbsIb = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib2] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib2] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib2];
	AbsIc = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic2] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic2] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic2];
	
	if (AbsIa < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIa2Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIa2Counter = (unsigned short)__uqsub16(Metro.MTZIa2Counter,1);
	if (AbsIb < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIb2Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIb2Counter = (unsigned short)__uqsub16(Metro.MTZIb2Counter,1);
	if (AbsIc < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIc2Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIc2Counter = (unsigned short)__uqsub16(Metro.MTZIc2Counter,1);
	
	if ((Metro.MTZIa2Counter == 0) || (Metro.MTZIb2Counter == 0) || (Metro.MTZIc2Counter == 0)) {
		if (Metro . StdCmnd . StdCmnd .Status == 5) ErrorCode |= (1ul << 1); else ErrorCode |= (1ul << 14);
		Metro.MTZIa2Counter = Metro.MTZIb2Counter = Metro.MTZIc2Counter = Metro . SavedParam . SavedParam .RefMtzT;
	}		
}
{	 
	AbsIa = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia3] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia3] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia3];
	AbsIb = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib3] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib3] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib3];
	AbsIc = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic3] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic3] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic3];
	
	if (AbsIa < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIa3Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIa3Counter = (unsigned short)__uqsub16(Metro.MTZIa3Counter,1);
	if (AbsIb < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIb3Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIb3Counter = (unsigned short)__uqsub16(Metro.MTZIb3Counter,1);
	if (AbsIc < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIc3Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIc3Counter = (unsigned short)__uqsub16(Metro.MTZIc3Counter,1);
	
	if ((Metro.MTZIa3Counter == 0) || (Metro.MTZIb3Counter == 0) || (Metro.MTZIc3Counter == 0)) {
		ErrorCode |= (1ul << 10);
		Metro.MTZIa3Counter = Metro.MTZIb3Counter = Metro.MTZIc3Counter = Metro . SavedParam . SavedParam .RefMtzT;
	}		
}
{	 
	AbsIa = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia4] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia4] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia4];
	AbsIb = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib4] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib4] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ib4];
	AbsIc = (Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic4] > 0) ? Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic4] : 0 - Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ic4];
	
	if (AbsIa < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIa4Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIa4Counter = (unsigned short)__uqsub16(Metro.MTZIa4Counter,1);
	if (AbsIb < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIb4Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIb4Counter = (unsigned short)__uqsub16(Metro.MTZIb4Counter,1);
	if (AbsIc < Metro . SavedParam . SavedParam .RefMtzI) Metro.MTZIc4Counter = Metro . SavedParam . SavedParam .RefMtzT; else Metro.MTZIc4Counter = (unsigned short)__uqsub16(Metro.MTZIc4Counter,1);
	
	if ((Metro.MTZIa4Counter == 0) || (Metro.MTZIb4Counter == 0) || (Metro.MTZIc4Counter == 0)) {
		ErrorCode |= (1ul << 11);
		Metro.MTZIa4Counter = Metro.MTZIb4Counter = Metro.MTZIc4Counter = Metro . SavedParam . SavedParam .RefMtzT;
	}		
}



{	 




}

{	 




}	

{	 
	if ((Metro . StdCmnd . StdCmnd .Status == 2) || (Metro . StdCmnd . StdCmnd .Status == 5) || (Metro . StdCmnd . StdCmnd .Status == 6) || (Metro . StdCmnd . StdCmnd .Status == 7))	{
	{	 
		AbsUdc1	= ((Metro . StdCmnd . StdCmnd . ADCDataNorm[_Udc1]) < 0 ? (-Metro . StdCmnd . StdCmnd . ADCDataNorm[_Udc1]) : (Metro . StdCmnd . StdCmnd . ADCDataNorm[_Udc1]));
		AbsUdc2	= ((Metro . StdCmnd . StdCmnd . ADCDataNorm[_Udc2]) < 0 ? (-Metro . StdCmnd . StdCmnd . ADCDataNorm[_Udc2]) : (Metro . StdCmnd . StdCmnd . ADCDataNorm[_Udc2]));
	
		if (AbsUdc1 < Metro . SavedParam . SavedParam .RefUdcmaxU) Metro.Udc1MaxCounter = Metro . SavedParam . SavedParam .RefUdcmaxT; else Metro.Udc1MaxCounter = (unsigned short)__uqsub16(Metro.Udc1MaxCounter,1);
		if (AbsUdc2 < Metro . SavedParam . SavedParam .RefUdcmaxU) Metro.Udc2MaxCounter = Metro . SavedParam . SavedParam .RefUdcmaxT; else Metro.Udc2MaxCounter = (unsigned short)__uqsub16(Metro.Udc2MaxCounter,1);
	
		if ((Metro.Udc1MaxCounter == 0) || (Metro.Udc2MaxCounter == 0)) {ErrorCode |= (1ul << 2); Metro.Udc1MaxCounter = Metro.Udc2MaxCounter = Metro . SavedParam . SavedParam .RefUdcmaxT;}
	}		
	{	 
		if (AbsUdc1 > Metro . SavedParam . SavedParam .RefUdcminU) Metro.Udc1MinCounter = Metro . SavedParam . SavedParam .RefUdcminT; else Metro.Udc1MinCounter = (unsigned short)__uqsub16(Metro.Udc1MinCounter,1);
		if (AbsUdc2 > Metro . SavedParam . SavedParam .RefUdcminU) Metro.Udc2MinCounter = Metro . SavedParam . SavedParam .RefUdcminT; else Metro.Udc2MinCounter = (unsigned short)__uqsub16(Metro.Udc2MinCounter,1);
	
		if ((Metro.Udc1MinCounter == 0) || (Metro.Udc2MinCounter == 0)) {ErrorCode |= (1ul << 3); Metro.Udc1MinCounter = Metro.Udc2MinCounter = Metro . SavedParam . SavedParam .RefUdcminT;}
	}
	{	 


	}
	{	 


	}
	} else {	 
		Metro.Udc1MaxCounter = Metro.Udc2MaxCounter = Metro . SavedParam . SavedParam .RefUdcmaxT;
		Metro.Udc1MinCounter = Metro.Udc2MinCounter = Metro . SavedParam . SavedParam .RefUdcminT;
		Metro.SUMinCounter = Metro . SavedParam . SavedParam .RefSUminT;
		Metro.SUMaxCounter = Metro . SavedParam . SavedParam .RefSUmaxT;
	}
}
{	 
	if ((Metro . StdCmnd . StdCmnd .Status == 5) || (Metro . StdCmnd . StdCmnd .Status == 6) || (Metro . StdCmnd . StdCmnd .Status == 7))	{
		if (Metro.ErrorTIM1Flag) {ErrorCode |= (1ul << 4); Metro.ErrorTIM1Flag = 0;}
		if (Metro.ErrorTIM8Flag) {ErrorCode |= (1ul << 5); Metro.ErrorTIM8Flag = 0;}



	}
}	
{	 
	for (i = 0; i < 24; i++) 
	{
		if (Delay(Metro . WorkingEvent . EventData .T[i] > (Metro . SavedParam . SavedParam .RefTempr / 10), 2000, &Metro .TemprProtect[i])) {ErrorCode |= (1ul << 8);}
	}
	if (ErrorCode & (1ul << 8)) { for (i = 0; i < 24; i++) Metro .TemprProtect[i] = 0;}
}	
{	 

}	
{	 
	 
	if ((Metro .KM1ENA > 2000) && (Metro .KM1ON == 0)) 
	{
		Metro .KM1ENA = Metro .ACZaradENA = Metro .AC_KM_ENA = Metro .FlagNeedACZarad = 0;
		Metro .FlagErrorZarad |= 0x01;																														 
	}

	if ((Metro .KM1ON > Metro . SavedParam . SavedParam .RefWorkKM1) && ((Metro . WorkingEvent . EventData .Udc1Flt < Metro . SavedParam . SavedParam .RefUdcZarad) || (Metro . WorkingEvent . EventData .Udc2Flt < Metro . SavedParam . SavedParam .RefUdcZarad))) 
	{
		Metro .KM1ENA = Metro .ACZaradENA = Metro .AC_KM_ENA = Metro .FlagNeedACZarad = 0;
		Metro .FlagErrorZarad |= 0x02;																														 
	}	
	
	if ((Metro .ACZaradENA > 2000) && (Metro . WorkingEvent . EventData .SUFlt < Metro . SavedParam . SavedParam .RefSUZarad)) 
	{
		Metro .KM1ENA = Metro .ACZaradENA = Metro .AC_KM_ENA = Metro .FlagNeedACZarad = 0;
		Metro .FlagErrorZarad |= 0x04;																														 
	}
	
	ErrorCode |= (Metro .FlagErrorZarad << 16);																					
	Metro .FlagErrorZarad = 0;
}	

{	 
	if (Metro .K_Alarm) {ErrorCode |= (1ul << 31); }
}	

	 
	if (ErrorCode == 0) return 0;

	 
	if ((OldErrorCode ^ ErrorCode) & ErrorCode) 
	{ 
		Metro.OscilCmnd.OscilNeed = 1; 
		Metro . WorkingEvent . EventData .EventCode = 0x0853;
		Metro .KM1ENA = Metro .ACZaradENA = Metro .AC_KM_ENA = Metro .FlagNeedACZarad = 0;
	}

	return ErrorCode;
}


static __inline  int CheckReady(void) {						 
int TempCode = 0;

	if (Metro . WorkingEvent . EventData .AlarmWord1 != 0)	TempCode |= (1ul << 0);														 
	
	TempCode |= ((*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) << 1);												 
	TempCode |= ((*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) << 2);												 

	if (Metro . WorkingEvent . EventData .IGBTStat1[0] | Metro . WorkingEvent . EventData .IGBTStat2[0] | Metro . WorkingEvent . EventData .IGBTStat3[0] | Metro . WorkingEvent . EventData .IGBTStat4[0]) 	TempCode |= (1ul << 3);									 

	if ((Metro . WorkingEvent . EventData .Udc1Flt < Metro . SavedParam . SavedParam .RefUdcZarad) || (Metro . WorkingEvent . EventData .Udc2Flt < Metro . SavedParam . SavedParam .RefUdcZarad)) 		TempCode |= (1ul << 4);
	if (Metro . WorkingEvent . EventData .SUFlt < Metro . SavedParam . SavedParam .RefSUZarad)																											TempCode |= (1ul << 5);
	
	if ((Metro .KM1ENA) || (Metro .KM1ON) || (Metro .ACZaradENA) || (Metro .AC_KM_ENA) || (Metro .FlagNeedACZarad)) TempCode |= (1ul << 6);

	if (Metro .AC_KM_ON == 0)  TempCode |= (1ul << 7);
	
	return TempCode;
}

static __inline void Disable(int NewStatus) {			 
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->BDTR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x000F)*4) + ((uint32_t)0x42000000))) = 0; 
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->BDTR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x000F)*4) + ((uint32_t)0x42000000))) = 0;
	Metro.NeedDisable = 0;
	Metro . StdCmnd . StdCmnd .Status		= NewStatus;
}	

static __inline void Enable(int Mode) {										 
int Mode1, Mode8;
	Metro.NewMode  = Metro.Mode = Mode;
	
	Mode1 = (Metro.Mode & 0x0001);
	Mode8 = (Metro.Mode & 0x0002) >> 1;
	
	Metro . StdCmnd . StdCmnd .Status = 5;
	
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;													 

	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = Mode1;									 	
	
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;													 

	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = Mode8;									 	
	
}	

static __inline void Zarad(void) {								 
	 
	if (Metro .CountRazrad) return;
	
	 
	if ((Metro .K_Zarad == 1) && (Metro . WorkingEvent . EventData .SUFlt < Metro . SavedParam . SavedParam .RefSUZarad) && (Metro .KM1ON == 0) && (Metro .KM1ENA == 0) && (Metro . WorkingEvent . EventData .AlarmWord1 == 0) && (Metro .FlagNeedACZarad == 0) && (Metro .AC_KM_ON == 0))	
	{				
		Metro .KM1ENA = 1;																															 
	}

	 
	if ((Metro .KM1ENA)   && (Metro . WorkingEvent . EventData .Udc1Flt > Metro . SavedParam . SavedParam .RefUdcZarad) && (Metro . WorkingEvent . EventData .Udc2Flt > Metro . SavedParam . SavedParam .RefUdcZarad) && (Metro .FlagNeedACZarad == 0)) 
	{
		Metro .KM1ENA = 0;																															 
		Metro .FlagNeedACZarad = 1;																										 
	}	

	 
	if ((Metro .FlagNeedACZarad == 1) && (Metro .KM1ON == 0) && (Metro .KM1ENA == 0) && (Metro . WorkingEvent . EventData .AlarmWord1 == 0))	
	{				
		Metro .ACZaradENA = 1;																													 
		Metro .FlagNeedACZarad = 2;																										 
	}

	 
	if ((Metro .FlagNeedACZarad == 2) && (Metro .ACZaradENA > 2000) && (Metro . WorkingEvent . EventData .SUFlt >= Metro . SavedParam . SavedParam .RefSUZarad) && (Metro . WorkingEvent . EventData .AlarmWord1 == 0))	
	{				
		Metro .AC_KM_ENA = 1;																													 
		Metro .FlagNeedACZarad = 3;																										 
	}
	
	if (Metro .AC_KM_ENA > 2000)	
	{
		Metro .AC_KM_ENA = Metro .ACZaradENA = Metro .FlagNeedACZarad = 0;
	}

} 


static __inline void ManRazrad(void) {						 
	if ((Metro .K_Razrad == 1) && (Metro .CountRazrad == 0))	{
		Metro .CountRazrad = 2000;
		
		 
		Metro .KM1ENA = Metro .ACZaradENA = Metro .AC_KM_ENA = Metro .FlagNeedACZarad = 0;
	}
}  


static __inline void CalcRegs(void) {							 
	 
	 

  if (Metro .FixUgolMode == 0)
	{

	  Metro.AMP1 = PI_REG(Metro . SavedParam . SavedParam .RefQ, Metro . WorkingEvent . EventData .Q12Flt_rms, &Metro.BufRegQ1, &Metro . SavedParam . SavedParam .RegQ) << 1; 
		
		if ((Metro.BufRegQ1 >> (16 - 1)) < (Metro.ARR >> 3)) 	Metro.BufRegQ1 = (Metro.ARR << (13 - 1));	
		if ((Metro.BufRegQ1 >> (16 - 1)) > (Metro.ARR)) 			Metro.BufRegQ1 = (Metro.ARR << (16 - 1));	

		if (Metro.AMP1 < (Metro.ARR >> 3)) Metro.AMP1 = (Metro.ARR >> 3);
		if (Metro.AMP1 >  Metro.ARR) 			 Metro.AMP1 =  Metro.ARR;		


	  Metro.AMP2 = PI_REG(Metro . SavedParam . SavedParam .RefQ, Metro . WorkingEvent . EventData .Q34Flt_rms, &Metro.BufRegQ2, &Metro . SavedParam . SavedParam .RegQ) << 1; 
		
		if ((Metro.BufRegQ2 >> (16 - 1)) < (Metro.ARR >> 3)) 	Metro.BufRegQ2 = (Metro.ARR << (13 - 1));	
		if ((Metro.BufRegQ2 >> (16 - 1)) > (Metro.ARR)) 			Metro.BufRegQ2 = (Metro.ARR << (16 - 1));	

		if (Metro.AMP2 < (Metro.ARR >> 3)) Metro.AMP2 = (Metro.ARR >> 3);
		if (Metro.AMP2 >  Metro.ARR) 			 Metro.AMP2 =  Metro.ARR;
	}
	 
	if (Metro.FixUgolMode) 
	{

		Metro .IncPhase1 = Metro .FiltIncPhase1;
		Metro .IncPhase2 = Metro .FiltIncPhase2;

		if ((((Metro . WorkRefUdc1 >> 16) - Metro . WorkingEvent . EventData . Udc1Flt) < 0 ? (-(Metro . WorkRefUdc1 >> 16) - Metro . WorkingEvent . EventData . Udc1Flt) : ((Metro . WorkRefUdc1 >> 16) - Metro . WorkingEvent . EventData . Udc1Flt)) > Metro . SavedParam . SavedParam .RefDeltaUdc) {Metro .FixUgolMode = 0;}
		
	}	
	else 
	{ 


		Metro.IncPhase1 = PI_REG(Metro.WorkRefUdc1 >> 16, Metro . WorkingEvent . EventData .Udc1Flt_rms, &Metro.BufRegUdc1, &Metro . SavedParam . SavedParam .RegUdc);
		Metro.IncPhase2 = PI_REG(Metro.WorkRefUdc2 >> 16, Metro . WorkingEvent . EventData .Udc2Flt_rms, &Metro.BufRegUdc2, &Metro . SavedParam . SavedParam .RegUdc);
	
		 
		Metro.IncPhase1  = __ssat(Metro.IncPhase1, 14);
		Metro.BufRegUdc1 = __ssat(Metro.BufRegUdc1, 30);
		
		Metro.IncPhase2  = __ssat(Metro.IncPhase2, 14);
		Metro.BufRegUdc2 = __ssat(Metro.BufRegUdc2, 30);		
		
		 
		Metro .FiltIncPhase1 = AP_REG(Metro .IncPhase1, 65536 / 2000, &Metro .BufFiltIncPhase1);
		Metro .FiltIncPhase2 = AP_REG(Metro .IncPhase2, 65536 / 2000, &Metro .BufFiltIncPhase2);
		
		Metro .FiltIncPhaseCalc = AP_REG(Metro .IncPhaseCalc, 65536 / 2000, &Metro .BufFiltIncPhaseCalc);
		
	}	
		
} 


static __inline void ChangeMode2(void) {					 







 
	
int NewMode;
int Mode;
int x;	
	
	x 			= Metro . SavedParam . SavedParam .BridgeUgolCorrect;
	NewMode = Metro.NewMode & 0x0007;
	Mode		= Metro.Mode & 0x0007;

	if (Mode == 0x05) {Metro.KM4ENA = 0; Metro.Mode = Mode = 0x01; }

	if (NewMode == Mode) return;
	
	if ((Mode == 0x01) && ((NewMode & 0x06) == 0x06)) {									 
		if (Metro.KM4ON > 2000) {																					 
			Metro.KM4ENA |= 1;
			Metro.Mode = 0x07;
			 
			Metro.IncPhase1 = ((Metro.IncPhase1 - x) >> 1);
			Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
			
			(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;													 
			(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 1;											 				
		}	else { Metro.KM4ENA |= 1;}																			 
		return;
	} 
	else if ((Mode == 0x07) && (NewMode == 0x06)) {											 			

		Metro.Mode   =  0x06;
		 
		Metro.IncPhase1 = (Metro.IncPhase1 << 1) + x;
		Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
	
		(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;														 
		(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 1;												 		
	
		return;
	} 
	else if (Mode == 0x06) {																						 
		Metro.Mode   =  0x07;
		 
		Metro.IncPhase1 = ((Metro.IncPhase1 - x) >> 1);
		Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
	
		(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;														 
		(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 1;												 		
	
		return;
	}	
	else if ((Mode == 0x07) && (NewMode != 0x06))	{											 
		
		Metro.Mode   =  0x05;
		 
		Metro.IncPhase1 = (Metro.IncPhase1 << 1) + x;
		Metro.BufRegUdc1 = (Metro.IncPhase1 << 16);
	
		(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;														 
		(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 1;												 		
		return;
	} else if ((Mode == 0x01) && ((NewMode & 0x06) != 0x06)) {
	}
}

static __inline void AutoSecondBridge(int ClearCounters) {		 
static int EnaCounter = 0;
static int DisCounter = 0;
	 
	if (ClearCounters) {EnaCounter = DisCounter = 0; return;}
	
	 
	if (Metro . SavedParam . SavedParam .EnaAuto2ndBridge == 0) { Metro.NewMode = Metro . SavedParam . SavedParam .DefMode; EnaCounter = DisCounter = 0; return;}
	
	 

	if (Delay(((Metro . WorkingEvent . EventData . P1Flt+Metro . WorkingEvent . EventData . P2Flt) < 0 ? (-Metro . WorkingEvent . EventData . P1Flt+Metro . WorkingEvent . EventData . P2Flt) : (Metro . WorkingEvent . EventData . P1Flt+Metro . WorkingEvent . EventData . P2Flt)) > Metro . SavedParam . SavedParam .RefPEna2ndBridge, Metro . SavedParam . SavedParam .RefTEna2ndBridge, &EnaCounter)) {Metro.NewMode = 0x07; DisCounter = 0;}
	if (Delay(((Metro . WorkingEvent . EventData . P1Flt+Metro . WorkingEvent . EventData . P2Flt) < 0 ? (-Metro . WorkingEvent . EventData . P1Flt+Metro . WorkingEvent . EventData . P2Flt) : (Metro . WorkingEvent . EventData . P1Flt+Metro . WorkingEvent . EventData . P2Flt)) < Metro . SavedParam . SavedParam .RefPDis2ndBridge, Metro . SavedParam . SavedParam .RefTDis2ndBridge, &DisCounter)) {Metro.NewMode = 0x01; EnaCounter = 0;}

}


static __inline void SetInitAmpAngle(void) {			 
	 
	
	Metro.AMP1			= CalcInitAMP((int)Metro . WorkingEvent . EventData .Udc1Flt);
	Metro.BufRegQ1  = Metro.AMP1 << (16 - 1);				 

	Metro.AMP2			= CalcInitAMP((int)Metro . WorkingEvent . EventData .Udc2Flt);
	Metro.BufRegQ2  = Metro.AMP2 << (16 - 1);				 
	
	 
	Metro.WorkRefUdc1= Metro . WorkingEvent . EventData .Udc1Flt << 16;	
	Metro.WorkRefUdc2= Metro . WorkingEvent . EventData .Udc2Flt << 16;	
	
	 
	Metro.IncPhase2	= Metro . SavedParam . SavedParam .RefFi1;
	
	if (Metro . SavedParam . SavedParam . ENATIMOffset == 2) {Metro.IncPhase1	= Metro . SavedParam . SavedParam .RefFi1 - ((0x00320000ul / 2000) >> 1);}
	else if (Metro . SavedParam . SavedParam . ENATIMOffset == 4) {Metro.IncPhase1	= Metro . SavedParam . SavedParam .RefFi1 - ((0x00320000ul / 2000) >> 2);}	
	else {Metro .IncPhase1	= Metro . SavedParam . SavedParam .RefFi1;}
	
	Metro.BufRegUdc1 = Metro.IncPhase1 << 16;
	Metro.BufRegUdc2 = Metro.IncPhase2 << 16;
	
}

static __inline void SoftChangeUdc(void) {				 
	if (Metro . SavedParam . SavedParam .RefUdc > (Metro.WorkRefUdc1 >> 16)) {Metro.WorkRefUdc1 += Metro . SavedParam . SavedParam .SoftStartUdc;} 
		else if (Metro . SavedParam . SavedParam .RefUdc < (Metro.WorkRefUdc1 >> 16)) {Metro.WorkRefUdc1 -= Metro . SavedParam . SavedParam .SoftStartUdc;}

	if (Metro . SavedParam . SavedParam .RefUdc > (Metro.WorkRefUdc2 >> 16)) {Metro.WorkRefUdc2 += Metro . SavedParam . SavedParam .SoftStartUdc;} 
		else if (Metro . SavedParam . SavedParam .RefUdc < (Metro.WorkRefUdc2 >> 16)) {Metro.WorkRefUdc2 -= Metro . SavedParam . SavedParam .SoftStartUdc;}
}

static __inline void NotReady(void) {							 
	
	 
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = Metro.ErrorTIM1Flag = 0;
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = Metro.ErrorTIM8Flag = 0;	
	
  ManRazrad();
	Zarad();

	 
	Metro.NeedEnable = 0;	
	
	 
	if ((Metro.NeedDisable) || (Metro.K_Stop == 1)) {
		Metro . WorkingEvent . EventData .AlarmWord1 = 0; Metro.NeedDisable = 0; 
		Metro . WorkingEvent . EventData .IGBTStat1[0] = Metro . WorkingEvent . EventData .IGBTStat2[0] = Metro . WorkingEvent . EventData .IGBTStat3[0] = Metro . WorkingEvent . EventData .IGBTStat4[0] = 0;
	}
	 

	Metro . WorkingEvent . EventData .ReadyWord1 = CheckReady();																 
	if (Metro . WorkingEvent . EventData .ReadyWord1 == 0) {Metro . StdCmnd . StdCmnd .Status = 2;}								 
}

static __inline void OffReady(void) {							 
	Metro . WorkingEvent . EventData .ReadyWord1 = CheckReady();																 
	if (Metro . WorkingEvent . EventData .ReadyWord1 != 0) {Metro . StdCmnd . StdCmnd .Status = 1;	return;}			 
	
	SetInitAmpAngle();
	
	if (((Metro.NeedEnable)||(Metro.K_Start == 1)) && ((Metro.K_Stop | Metro.NeedDisable) == 0))	{
		Enable(0x07);																											 

		Metro.NeedEnable = 0;																					 
		Metro.NeedDisable = 0;																				 

		Metro .OscilCmnd.OscilNeed = 1; 
		
		Metro . WorkingEvent . EventData .EventCode = 0x0153;
		return;
	}	

	Metro.NeedEnable = 0;																						 
	Metro.NeedDisable = 0;																					 
	
	ManRazrad();																										 
}	


static __inline void Working(void) {							 
	 
	if  (Metro . WorkingEvent . EventData .AlarmWord1)	{ Disable(1); } else										 	
		if ((Metro.NeedDisable)||(Metro.K_Stop)) { Metro . WorkingEvent . EventData .EventCode = 0x0253; Metro .OscilCmnd.OscilNeed = 1; Disable(1); return; }

	 
	SoftChangeUdc();
		
	 
	CalcRegs();
	
}

static __inline void StandBy(void) {
unsigned short RefT;
				 short RefI;
	
	 
	if  (Metro . WorkingEvent . EventData .AlarmWord1)	{Metro.CANCmndTx |= 0x0001; Disable(1); } else										 	
		if ((Metro.NeedDisable)||(Metro.K_Stop)) { Metro . WorkingEvent . EventData .EventCode = 0x0253; Disable(1); return; }

	SetInitAmpAngle();
	
	RefT = Metro . SavedParam . SavedParam .RefStandByIvdT;
	RefI = Metro . SavedParam . SavedParam .RefStandByIvdI;
	
	if ((Metro.K_Start == 1) || (Metro.EscalatorInUse) || (Delay(Metro . WorkingEvent . EventData .I1Flt > RefI, RefT, &Metro.CounterI1Flt)) || (Delay(Metro . WorkingEvent . EventData .I2Flt > RefI, RefT, &Metro.CounterI2Flt)) ) {
		Metro.CounterEscalatorNotUse = 0;
		Metro.EnaDiodeModeCounter = 0;
		Enable(0x01);
		AutoSecondBridge(1);
	}
}  

static __inline void DiodeMode(void) {
	
	 
	if  (Metro . WorkingEvent . EventData .AlarmWord1)	{Metro.CANCmndTx |= 0x0001; Disable(1); } else										 	
		if ((Metro.NeedDisable)||(Metro.K_Stop)) { Metro . WorkingEvent . EventData .EventCode = 0x0253; Disable(1); return; }

	SetInitAmpAngle();

	if ( (((Metro . WorkingEvent . EventData . Udc1Flt) < 0 ? (-Metro . WorkingEvent . EventData . Udc1Flt) : (Metro . WorkingEvent . EventData . Udc1Flt)) >= Metro . SavedParam . SavedParam .RefUdc) || 
			 (Delay(((Metro . WorkingEvent . EventData . Udc1Flt) < 0 ? (-Metro . WorkingEvent . EventData . Udc1Flt) : (Metro . WorkingEvent . EventData . Udc1Flt)) > Metro . SavedParam . SavedParam .RefUdcDisDiodeMode, 400, &Metro.DisDiodeModeCounterUdc)) || 
			 (Delay((-Metro . WorkingEvent . EventData .P1Flt-Metro . WorkingEvent . EventData .P2Flt) < Metro . SavedParam . SavedParam .RefPDisDiodeMode, Metro . SavedParam . SavedParam .RefTDisDiodeMode, &Metro.DisDiodeModeCounterP)) ){
		Metro.KM4ENA = 0;
		Metro.CounterEscalatorNotUse = 0;
		Metro.EnaDiodeModeCounter = 0;
		Enable(0x07);
		AutoSecondBridge(1);		
		return;
	}		
}  

static __inline  int CalcLeds(void)	{							 
short TempLeds = 0x3F;	
	if (Metro . WorkingEvent . EventData .AlarmWord1) TempLeds &= ~Led_Alarm;
	if ((Metro . StdCmnd . StdCmnd .Status == 5) || (Metro . StdCmnd . StdCmnd .Status == 6) || (Metro . StdCmnd . StdCmnd .Status == 7))	TempLeds &= ~Led_Ena;
	
	if (Metro .FixUgolMode) TempLeds &= ~Led_TorqN;
	
	return TempLeds;
}
static __inline void CalcStatus(void)	{						 
	if (Metro . WorkingEvent . EventData .AlarmWord1) Metro . WorkingEvent . EventData .StatusWord1 |= 0x08ul; else Metro . WorkingEvent . EventData .StatusWord1 &= ~0x08ul;
	if (Metro . StdCmnd . StdCmnd .Status == 5) Metro . WorkingEvent . EventData .StatusWord1 |= 0x02ul; else Metro . WorkingEvent . EventData .StatusWord1 &= ~0x02ul;
	if (Metro . StdCmnd . StdCmnd .Status == 2) Metro . WorkingEvent . EventData .StatusWord1 |= 0x01ul; else Metro . WorkingEvent . EventData .StatusWord1 &= ~0x01ul;
}	

static __inline	void CalcGamma(int Phase, int AMP, int ARR, TIM_TypeDef	*TIM) {
int G1,G2;
	






 
	if (Phase < 0x2AAB)					{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * Phase / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * Phase / 0x8000);		

		TIM->CCR1	= ARR;
		TIM->CCR2	=	ARR - G2;													 
		TIM->CCR3	= ARR - (G1 + G2);		
															
	} else if (Phase < 0x5555)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x2AAB) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x2AAB) / 0x8000);		
		
		TIM->CCR1	= ARR;														
		TIM->CCR2	= ARR - (G1 + G2);		
		TIM->CCR3	=	ARR - G1;													 

	}	else if (Phase < 0x8000)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x5555) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x5555) / 0x8000);		
		
		TIM->CCR1	=	ARR - G2;													 
		TIM->CCR2	= ARR - (G1 + G2);		
		TIM->CCR3	= ARR;
		
	}	else if (Phase < 0xAAAB)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x8000) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x8000) / 0x8000);		
		
		TIM->CCR1	= ARR - (G1 + G2);		
		TIM->CCR2	=	ARR - G1;													 
		TIM->CCR3	= ARR;
		
	} else if (Phase < 0xD555)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0xAAAB) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0xAAAB) / 0x8000);		
		
		TIM->CCR1	= ARR - (G1 + G2);		
		TIM->CCR2	= ARR;
		TIM->CCR3	=	ARR - G2;													 
		
	} else														{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0xD555) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0xD555) / 0x8000);		
		
		TIM->CCR1	=	ARR - G1;													 
		TIM->CCR2	= ARR;
		TIM->CCR3	= ARR - (G1 + G2);		
	} 
} 

static __inline	void CalcGamma2(int Phase, int AMP, int ARR, TIM_TypeDef *TIM) {
int G1,G2,G3;
	
	






 
	if (Phase < 0x2AAC)					{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * Phase / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * Phase / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 

		TIM->CCR1	= ARR - G3;
		TIM->CCR2	=	ARR - (G2 + G3);													 
		TIM->CCR3	= ARR - (G1 + G2 + G3);		
															
	} else if (Phase < 0x5555)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x2AAC) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x2AAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 

		TIM->CCR1	= ARR - G3;														
		TIM->CCR2	= ARR - (G1 + G2 + G3);		
		TIM->CCR3	=	ARR - (G1 + G3);													 

	}	else if (Phase < 0x8000)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x5555) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x5555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		TIM->CCR1	=	ARR - (G2 + G3);													 
		TIM->CCR2	= ARR - (G1 + G2 + G3);		
		TIM->CCR3	= ARR - G3;
		
	}	else if (Phase < 0xAAAC)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x8000) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x8000) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		TIM->CCR1	= ARR - (G1 + G2 + G3);		
		TIM->CCR2	=	ARR - (G1 + G3);													 
		TIM->CCR3	= ARR - G3;
		
	} else if (Phase < 0xD555)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0xAAAC) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0xAAAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		TIM->CCR1	= ARR - (G1 + G2 + G3);		
		TIM->CCR2	= ARR - G3;
		TIM->CCR3	=	ARR - (G2 + G3);													 
		
	} else														{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0xD555) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0xD555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		TIM->CCR1	=	ARR - (G1 + G3);													 
		TIM->CCR2	= ARR - G3; 
		TIM->CCR3	= ARR - (G1 + G2 + G3);		
	} 
} 

static __inline int CheckMinImpuls(int CCR, int ARR, int MinImpuls){

		if (CCR < (2 * MinImpuls)) {return 2 * MinImpuls;} else

				if (CCR > (ARR - 2 * MinImpuls)) {return (ARR - (2 * MinImpuls));} else
					return CCR;
}

static __inline	void CalcGamma3(int Phase, int AMP, int ARR, TIM_TypeDef *TIM, short Gamma1, short Gamma3) {
int G1,G2,G3;
int CCR1,CCR2,CCR3;
	
	






 
	if (Phase < 0x2AAC)					{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * Phase / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * Phase / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 

		CCR1	= ARR - G3;
		CCR2	=	ARR - (G2 + G3);													 
		CCR3	= ARR - (G1 + G2 + G3);		
															
	} else if (Phase < 0x5555)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x2AAC) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x2AAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 

		CCR1	= ARR - G3;														
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	=	ARR - (G1 + G3);													 

	}	else if (Phase < 0x8000)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x5555) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x5555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	=	ARR - (G2 + G3);													 
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	= ARR - G3;
		
	}	else if (Phase < 0xAAAC)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0x8000) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0x8000) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	=	ARR - (G1 + G3);													 
		CCR3	= ARR - G3;
		
	} else if (Phase < 0xD555)	{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0xAAAC) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0xAAAC) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	= ARR - G3;
		CCR3	=	ARR - (G2 + G3);													 
		
	} else														{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - 3.1415926535897932384626433832795f * (Phase - 0xD555) / 0x8000);
		G2 = AMP * sinf(3.1415926535897932384626433832795f * (Phase - 0xD555) / 0x8000);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	=	ARR - (G1 + G3);													 
		CCR2	= ARR - G3; 
		CCR3	= ARR - (G1 + G2 + G3);		
	} 
	
	CCR1 += Gamma1;	if (CCR1 < 0) {CCR1 = 0;} else if (CCR1 > ARR) {CCR1 = ARR;}

	CCR3 += Gamma3; if (CCR3 < 0) {CCR3 = 0;} else if (CCR3 > ARR) {CCR3 = ARR;}

	
	TIM->CCR1 = CheckMinImpuls(CCR1, ARR, 250); 
	TIM->CCR2 = CheckMinImpuls(CCR2, ARR, 250);
	TIM->CCR3 = CheckMinImpuls(CCR3, ARR, 250);
	
} 

static __inline	void CalcGamma4(float Phase, int AMP, int ARR, TIM_TypeDef *TIM) {
int G1,G2,G3;
int CCR1,CCR2,CCR3;
	
	






 
	if (Phase < (3.1415926535897932384626433832795f/3))						{	 
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 

		CCR1	= ARR - G3;
		CCR2	=	ARR - (G2 + G3);													 
		CCR3	= ARR - (G1 + G2 + G3);		
															
	} else if (Phase < (2*3.1415926535897932384626433832795f/3))	{	 
		Phase -= 3.1415926535897932384626433832795f/3;
		
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 

		CCR1	= ARR - G3;														
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	=	ARR - (G1 + G3);													 

	}	else if (Phase < 3.1415926535897932384626433832795f)	{	 
		Phase -= 2*3.1415926535897932384626433832795f/3;
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - Phase);
		G2 = AMP * sinf(Phase);			
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	=	ARR - (G2 + G3);													 
		CCR2	= ARR - (G1 + G2 + G3);		
		CCR3	= ARR - G3;
		
	}	else if (Phase < 4*3.1415926535897932384626433832795f/3)	{	 
		Phase -= 3.1415926535897932384626433832795f;
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	=	ARR - (G1 + G3);													 
		CCR3	= ARR - G3;
		
	} else if (Phase < 5*3.1415926535897932384626433832795f/3)	{	 
		Phase -= 4*3.1415926535897932384626433832795f/3;
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	= ARR - (G1 + G2 + G3);		
		CCR2	= ARR - G3;
		CCR3	=	ARR - (G2 + G3);													 
		
	} else														{	 
		Phase -= 5*3.1415926535897932384626433832795f/3;
		G1 = AMP * sinf(3.1415926535897932384626433832795f/3 - Phase);
		G2 = AMP * sinf(Phase);		
		G3 = (ARR - (G1 + G2)) >> 1;																								 
		
		CCR1	=	ARR - (G1 + G3);													 
		CCR2	= ARR - G3; 
		CCR3	= ARR - (G1 + G2 + G3);		
	} 
	




	
	TIM->CCR1 = CheckMinImpuls(CCR1, ARR, 250); 
	TIM->CCR2 = CheckMinImpuls(CCR2, ARR, 250);
	TIM->CCR3 = CheckMinImpuls(CCR3, ARR, 250);

} 

static __inline  int CalcUgol() {									 
int x,y;		
	 
	x = 2 * Metro . WorkingEvent . EventData .Uab + Metro . WorkingEvent . EventData .Ubc;
	y = 1 * Metro . WorkingEvent . EventData .Ubc;
	return (int)(atan2f(y*__sqrtf(3),x) / 3.1415926535897932384626433832795f * 32768.0f);
	
}	

static __inline  int CalcUgol3() {								 
int x,y;
int u1,u2,u3;	
	 
	x = 2 * Metro . WorkingEvent . EventData .Uab + Metro . WorkingEvent . EventData .Ubc;
	y = 1 * Metro . WorkingEvent . EventData .Ubc;
	u1 = atan2f(y*__sqrtf(3),x) / 3.1415926535897932384626433832795f * 32768.0f;
	
	x =  -(2 * Metro . WorkingEvent . EventData .Uca + Metro . WorkingEvent . EventData .Ubc);
	y =  1 * Metro . WorkingEvent . EventData .Ubc;
	u2 = atan2f(y*__sqrtf(3),x) / 3.1415926535897932384626433832795f * 32768.0f;	
	
	x =  Metro . WorkingEvent . EventData .Uab - Metro . WorkingEvent . EventData .Uca;
	y = -Metro . WorkingEvent . EventData .Uab - Metro . WorkingEvent . EventData .Uca;
	u3 = atan2f(y*__sqrtf(3),x) / 3.1415926535897932384626433832795f * 32768.0f;		
	
	return ((u1 + u2 + u3) / 3);
	
}	

static __inline int SoftwarePLL(int Ua, int Ub, int Uc, int Theta) {
int Va;
int Vb;
	
int Vq;	

	









 

  Va = ((Ua - (Ub >> 1) - (Uc >> 1)) * 0xD106ull) >> 16 ;
	Vb = ((Ub - Uc) *0xB505ull ) >> 16;
	
	



 

	Theta += Metro .IncPhaseCalc;
  Theta	&= 0xFFFF;
	
	Vq = -sinf(3.1415926535897932384626433832795f * Theta / 0x8000) * Va + cosf(3.1415926535897932384626433832795f * Theta / 0x8000) * Vb;

	Metro .IncPhaseCalc = PI_REG(__ssat(Vq,16), 0, &Metro .BufFiltdPhase, &Metro . SavedParam . SavedParam .RegPLL);

	return Theta;
}



static __inline void CalcPWM(void) {							 
static TIM_TypeDef TIM8x;














	
	 
  Metro.Ugol_n0	= Metro .WorkUgol = CalcUgol();
	
	 
	if (Metro . SavedParam . SavedParam .EnaIntGen == 1)
	{
		Metro.dPhaseFlt	 		= AP_REG(Metro.Ugol_n0 - (Metro.PhaseCalc >> 16), Metro . SavedParam . SavedParam .T1dPhase, &Metro.BufFiltdPhase);
		Metro.IncPhaseCalc += (Metro.dPhaseFlt * Metro . SavedParam . SavedParam .K1dPhase);
		Metro.PhaseCalc		 += (Metro.IncPhaseCalc + Metro.dPhaseFlt * Metro . SavedParam . SavedParam .K2dPhase);
		
		if (Metro.IncPhaseCalc > (0x03363333 << 1)) Metro.IncPhaseCalc = (0x03363333 << 1);
		if (Metro.IncPhaseCalc < (0x03300000 << 1)) Metro.IncPhaseCalc = (0x03300000 << 1);
		
		Metro .WorkUgol  = (Metro.PhaseCalc >> 16);	
	}
	else if (Metro . SavedParam . SavedParam .EnaIntGen == 2)
	{
		Metro .PhaseCalc = (SoftwarePLL(Metro . WorkingEvent . EventData .Uab, Metro . WorkingEvent . EventData .Ubc, Metro . WorkingEvent . EventData .Uca, Metro .PhaseCalc >> 16) << 16);
		Metro .WorkUgol  = (Metro.PhaseCalc >> 16) - 0x1555ul;
	}
	
	Metro .Phase1  = Metro .WorkUgol - Metro.IncPhase1;
	Metro .Phase1 &= 0xFFFF;
	
	Metro .Phase2  = Metro .WorkUgol - Metro.IncPhase2;
	Metro .Phase2 &= 0xFFFF;	
	
	 
	if (Metro . SavedParam . SavedParam . ENATIMOffset > 0) 
	{
		CalcGamma3(Metro .Phase1 , Metro .AMP1, Metro .ARR, &TIM8x, Metro .GammaT8_1_fixcorrect, Metro .GammaT8_3_fixcorrect);
		Metro .TIM8_CCR1 = TIM8x.CCR1;
		Metro .TIM8_CCR2 = TIM8x.CCR2;
		Metro .TIM8_CCR3 = TIM8x.CCR3;
	} 
	else
	{	
		CalcGamma3(Metro .Phase1 , Metro .AMP1, Metro .ARR, ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400)), Metro .GammaT8_1_fixcorrect, Metro .GammaT8_3_fixcorrect);
	}
	
	 
	CalcGamma3(Metro .Phase2, Metro .AMP2, Metro .ARR, ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000)), Metro .GammaT1_1_fixcorrect, Metro .GammaT1_3_fixcorrect);

	
	Metro .TIM1_CCR1 = ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->CCR1;
	Metro .TIM1_CCR2 = ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->CCR2;
	Metro .TIM1_CCR3 = ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->CCR3;

	Metro .OscilAMP1 = Metro .AMP1 >> 1;
	Metro .OscilAMP2 = Metro .AMP2 >> 1;
	
	if (Metro . SavedParam . SavedParam . ENATIMOffset > 0) 
	{
		if ((((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->CR1 & ((uint16_t)0x0010)) == 0) 
		{
			((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->CCR1 = Metro .TIM8_CCR1;
			((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->CCR2 = Metro .TIM8_CCR2;
			((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->CCR3 = Metro .TIM8_CCR3;
		}
	}
}

static __inline void APV(void) {
	 
	if (Metro.CounterAlarmAutoPause) Metro.CounterAlarmAutoPause--;

	 
	if (Metro.EnaAPV == 0) return;
	
	 
	if (Metro.CounterAlarmAutoClear) Metro.CounterAlarmAutoClear--;
	
	if (Metro.CounterAlarmAutoClear) return;
	
	 
	Metro.CounterAlarmAutoPause	= Metro . SavedParam . SavedParam .RefAlarmAutoPause;

	 
	if (Metro . WorkingEvent . EventData .AlarmWord1) {Metro . WorkingEvent . EventData .AlarmWord1 = 0; return;}

	 
	if (Metro.EnaAPV == 1) {Metro.EnaAPV = 0; return;}
	
	 
	if (Metro . WorkingEvent . EventData .ReadyWord1 == 0) {
		if ((Metro.EnaAPV > 2)	&& (Metro.CANStatus < 5)) {Metro.NeedEnable |= 1;}
		Metro.EnaAPV = Metro.AutoZarad = 0;
		return;
	}

	 
	if (Metro . WorkingEvent . EventData .ReadyWord1 & ~0x18) {Metro.EnaAPV = Metro.AutoZarad = 0;} else {Metro.AutoZarad = 1;}
	
} 

static __inline void ResChannel(void) {
static int AutoDisableCounter = 0;
	
	if (Delay(((Metro . SavedParam . SavedParam .MainCh == 0) && (Metro . StdCmnd . StdCmnd .Status >= 5) && (Metro . StdCmnd . StdCmnd .CANLink1 < 5) && (Metro.CANStatus >= 5)), 25 * 4, &AutoDisableCounter)) Metro.NeedDisable |= 1;

}

static __inline void IGBTStatus(int DigIn, int *Status) {


			 int i;
	
  if (DigIn & 0x4000) {Metro .IGBTStatCounterR = __qadd(Metro .IGBTStatCounterR,1);} else {	
	  for (i = 0; i < 6; i++) {
		  if ((Metro .IGBTStatCounterR > (((50*i)+40)*2000/1000)) && (Metro .IGBTStatCounterR < (((50*i)+60)*2000/1000))) {*Status |= (1ul<<(16+i)); break;}
		}
		Metro .IGBTStatCounterR = 0;
	}	

  if (DigIn & 0x8000) {Metro .IGBTStatCounterL = __qadd(Metro .IGBTStatCounterL,1);} else {	
	  for (i = 0; i < 6; i++) {
		  if ((Metro .IGBTStatCounterL > (((50*i)+40)*2000/1000)) && (Metro .IGBTStatCounterL < (((50*i)+60)*2000/1000))) {*Status |= (1ul<<(22+i)); break;}
		}
		Metro .IGBTStatCounterL = 0;
	}	
} 

static __inline void CopyADCBuffer(void) {
int i;
short *s;
short *d;
short *e;	

	 
	s = &Metro .ExtADCArray[0];
	d = e = &Metro .ExtADCArray[16*8];
	while (s != e) {*d ++ = *s++;}
	
	s = &Metro . StdCmnd . StdCmnd .IntADCData[0];
	d = e = &Metro . StdCmnd . StdCmnd .IntADCData[4*8];
	while (s != e) {*d ++ = *s++;}
	
}

void DMA2_Stream4_IRQHandler() {
int i;
	
	if (Metro . SavedParam . SavedParam . ENATIMOffset > 0) 
	{	
		((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->CCR1 = Metro .TIM8_CCR1;
		((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->CCR2 = Metro .TIM8_CCR2;
		((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->CCR3 = Metro .TIM8_CCR3;
	}
	
	 
	((DMA_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x6400))->HIFCR	= (0x3Dul << 0);																								

	{(*(volatile unsigned int *)((((unsigned int)(&((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800))->ODR) - ((uint32_t)0x40000000))*32 + 8*4) + ((uint32_t)0x42000000))) ^= 1;};

	 
	CopyADCBuffer();
	
	 
	Metro . StdCmnd . StdCmnd .CycleCounter++;
	
	 
	ReadRTC(0,&Metro . WorkingEvent . EventData .RTC_Date,&Metro . WorkingEvent . EventData .RTC_Time);	
	
	 
	 
	for (i = 0; i < 8; i++)							  
	{
		NormIntADC(4, i);
		NormExtADC(16, i);

		CalcSensUdc(i);														 
		CalcSensU(i);															 
		CalcSensI(i);															 

		 
		CalcSensPQ();
		
		 
		Oscil();
		
	}
	
	Metro.RMSData = CalcRMS(Metro.CalibrData);
	 
	DigInOut();
	CalcDigIn();
	
	 
	Metro . WorkingEvent . EventData .AlarmWord1 |= Alarms(Metro . WorkingEvent . EventData .AlarmWord1);
	 
	switch (Metro . StdCmnd . StdCmnd .Status)	{
		case  1:	NotReady(); break;
		case  2:	OffReady(); break;
		case  5:	Working();	break;


		default:	Metro . StdCmnd . StdCmnd .Status = 1;	break;
	} 

	 
	Leds = CalcLeds();
	
	CalcStatus();
	
	 
	CalcPWM();

	 
	CalcDigOut();
	
	 
  SaveParamsProc();


	
	{(*(volatile unsigned int *)((((unsigned int)(&((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800))->ODR) - ((uint32_t)0x40000000))*32 + 8*4) + ((uint32_t)0x42000000))) ^= 1;}; 

}


 

void InitParams(int ParamsLoaded)	{
int i;
	Metro.Mode = 1;
	Metro.TestAMP	= 100;
	
	Metro . StdCmnd . StdCmnd .DigIn1Or 	 = Metro . StdCmnd . StdCmnd .DigIn2Or 	= Metro . StdCmnd . StdCmnd .DigIn3Or   = Metro . StdCmnd . StdCmnd .DigIn4Or   = 0x0000;
	Metro . StdCmnd . StdCmnd .DigOut1Or  = Metro . StdCmnd . StdCmnd .DigOut2Or  = Metro . StdCmnd . StdCmnd .DigOut3Or  = Metro . StdCmnd . StdCmnd .DigOut4Or  = 0x0000;
	
	Metro . StdCmnd . StdCmnd .DigIn1And  = Metro . StdCmnd . StdCmnd .DigIn2And	= Metro . StdCmnd . StdCmnd .DigIn3And  = Metro . StdCmnd . StdCmnd .DigIn4And  = 0xFFFF;
	Metro . StdCmnd . StdCmnd .DigOut1And = Metro . StdCmnd . StdCmnd .DigOut2And = Metro . StdCmnd . StdCmnd .DigOut3And = Metro . StdCmnd . StdCmnd .DigOut4And = 0xFFFF;

	Metro.CalibrData = &Metro . StdCmnd . StdCmnd .ADCDataNorm[_Ia1];
	

	
	if (ParamsLoaded) {
		for (i = 0; i < 8; i++) {
			 
			Metro . SavedParam . SavedParam .ADCOffs[i+16] = 0x4000;
			Metro . SavedParam . SavedParam .ADCK[i+16]    = 0xFFFF;
			 
			((unsigned int *)Metro . SavedParam . SavedParam .ADCOffs)[i] = 0;
			((unsigned int *)Metro . SavedParam . SavedParam .ADCK)[i]    = 0xFFFFFFFF;
		}
		
		Metro . SavedParam . SavedParam .ADCK[_Uab]  = Metro . SavedParam . SavedParam .ADCK[_Ubc]  = Metro . SavedParam . SavedParam .ADCK[_Uca]  = 13333ul * 220 / 52.3;  
		Metro . SavedParam . SavedParam .ADCK[_Udc1] = Metro . SavedParam . SavedParam .ADCK[_Udc2] = 40000ul * 220 / 200;

		Metro . SavedParam . SavedParam .ADCK[_Ia1]  = Metro . SavedParam . SavedParam .ADCK[_Ib1]  = Metro . SavedParam . SavedParam .ADCK[_Ic1] = 10 * 4000 / 5.1;			 
		Metro . SavedParam . SavedParam .ADCK[_Ia2]  = Metro . SavedParam . SavedParam .ADCK[_Ib2]  = Metro . SavedParam . SavedParam .ADCK[_Ic2] = 10 * 4000 / 5.1;			 
		Metro . SavedParam . SavedParam .ADCK[_Ia3]  = Metro . SavedParam . SavedParam .ADCK[_Ib3]  = Metro . SavedParam . SavedParam .ADCK[_Ic3] = 10 * 4000 / 5.1;			 
		Metro . SavedParam . SavedParam .ADCK[_Ia4]  = Metro . SavedParam . SavedParam .ADCK[_Ib4]  = Metro . SavedParam . SavedParam .ADCK[_Ic4] = 10 * 4000 / 5.1;			 
		
		Metro . SavedParam . SavedParam .RefMtzI = 8000;
		Metro . SavedParam . SavedParam .RefMtzT = 4;

		Metro . SavedParam . SavedParam .RefUdcmaxU = 5000;
		Metro . SavedParam . SavedParam .RefUdcmaxT = 4;

		Metro . SavedParam . SavedParam .RefUdcminU = 1000;
		Metro . SavedParam . SavedParam .RefUdcminT = 4;
		
		Metro . SavedParam . SavedParam .RefUdcRazrad = 7000;		

		Metro . SavedParam . SavedParam .RefSUminU 	= 3000;
		Metro . SavedParam . SavedParam .RefSUminT 	= 4;

		Metro . SavedParam . SavedParam .RefSUmaxU 	= 5000;
		Metro . SavedParam . SavedParam .RefSUmaxT 	= 4;
		
		Metro . SavedParam . SavedParam .RefMtzIVD = 1000;
		Metro . SavedParam . SavedParam .RefMtzTVD = 40000;		
		
		Metro . SavedParam . SavedParam .RefTempr		= 800;
		
		Metro . SavedParam . SavedParam .ParamFiltSU  = ((0x3E80000 / 2000) / 40);
		Metro . SavedParam . SavedParam .ParamFiltI1  = ((0x3E80000 / 2000) / 40);
		Metro . SavedParam . SavedParam .ParamFiltI2  = ((0x3E80000 / 2000) / 40);
		Metro . SavedParam . SavedParam .ParamFiltP1  = ((0x3E80000 / 2000) / 5);
		Metro . SavedParam . SavedParam .ParamFiltP2  = ((0x3E80000 / 2000) / 5);
		Metro . SavedParam . SavedParam .ParamFiltQ1  = ((0x3E80000 / 2000) / 5);
		Metro . SavedParam . SavedParam .ParamFiltQ2  = ((0x3E80000 / 2000) / 5);
		Metro . SavedParam . SavedParam .ParamFiltUdc = ((0x3E80000 / 2000) / 5);
		
		Metro . SavedParam . SavedParam .RefUdcZarad	= 5000;			
		Metro . SavedParam . SavedParam .RefSUZarad		= 3500;			
		Metro . SavedParam . SavedParam .KM3Active		= 4000;			
		Metro . SavedParam . SavedParam .KM3Pause			= 6*4000;		
		Metro . SavedParam . SavedParam .RefDeltaUdc	= 100;			
		Metro . SavedParam . SavedParam .RefUdcZero		= 50;				
		Metro . SavedParam . SavedParam .RefWorkKM1		= 60 * 2000;  
		Metro . SavedParam . SavedParam .RefCountRazrad	=	100*4;	
		
		Metro . SavedParam . SavedParam .RefUdc	= 750;
		Metro . SavedParam . SavedParam .RefQ		= 0;
		Metro . SavedParam . SavedParam .RefFi1	= 0xF666;								
		
		Metro . SavedParam . SavedParam .SoftStartUdc = 0x1000;		
		
		Metro . SavedParam . SavedParam .RegUdc.Kp = 0x0200;
		Metro . SavedParam . SavedParam .RegUdc.Ti = 0x0129;
		Metro . SavedParam . SavedParam .RegQ.Kp   = 0x0500;
		Metro . SavedParam . SavedParam .RegQ.Ti   = 0x0010;
		
		
		for (i=0; i<8; i++) {Metro . SavedParam . SavedParam .UartParams[i] = 0x01010400;}	 
		
		Metro . SavedParam . SavedParam .Xn[0] = 300;							Metro . SavedParam . SavedParam .Tn[0] = 1100;
		Metro . SavedParam . SavedParam .Xn[1] = 500;							Metro . SavedParam . SavedParam .Tn[1] = 1080;
		Metro . SavedParam . SavedParam .Xn[2] = 1300;						Metro . SavedParam . SavedParam .Tn[2] = 1030;
		Metro . SavedParam . SavedParam .Xn[3] = 2700;						Metro . SavedParam . SavedParam .Tn[3] = 980;
		Metro . SavedParam . SavedParam .Xn[4] = 10300;						Metro . SavedParam . SavedParam .Tn[4] = 780;
		Metro . SavedParam . SavedParam .Xn[5] = 11700;						Metro . SavedParam . SavedParam .Tn[5] = 720;
		Metro . SavedParam . SavedParam .Xn[6] = 19500;						Metro . SavedParam . SavedParam .Tn[6] = 600;
		Metro . SavedParam . SavedParam .Xn[7] = 22400;						Metro . SavedParam . SavedParam .Tn[7] = 500;
		Metro . SavedParam . SavedParam .Xn[8] = 28100;						Metro . SavedParam . SavedParam .Tn[8] = 400;
		Metro . SavedParam . SavedParam .Xn[9] = 33000;						Metro . SavedParam . SavedParam .Tn[9] = 300;
		Metro . SavedParam . SavedParam .Xn[10] = 35900;					Metro . SavedParam . SavedParam .Tn[10] = 250;
		Metro . SavedParam . SavedParam .Xn[11] = 40400;					Metro . SavedParam . SavedParam .Tn[11] = 130;
		Metro . SavedParam . SavedParam .Xn[12] = 43000;					Metro . SavedParam . SavedParam .Tn[12] = 80;
		Metro . SavedParam . SavedParam .Xn[13] = 45800;					Metro . SavedParam . SavedParam .Tn[13] = 0;
		
		Metro . SavedParam . SavedParam .RefWorkRazrad  =  5 * 4000;
		Metro . SavedParam . SavedParam .RefPauseRazrad	= 60 * 4000;
		
		Metro . SavedParam . SavedParam .RefStandByEnaT = 120 * 4000;
		Metro . SavedParam . SavedParam .RefStandByIvdI = 20 * 10;
		Metro . SavedParam . SavedParam .RefStandByIvdT = 800;
		
		Metro . SavedParam . SavedParam .RefAlarmAutoClear = 5 * 4000;
		Metro . SavedParam . SavedParam .RefAlarmAutoPause = 15 * 4000;
		
		Metro . SavedParam . SavedParam .DefMode = 0x01;
		Metro . SavedParam . SavedParam .EnaAuto2ndBridge = 0;
		Metro . SavedParam . SavedParam .RefTEna2ndBridge =  2 * 4000;
		Metro . SavedParam . SavedParam .RefTDis2ndBridge	= 10 * 4000;
		
		Metro . SavedParam . SavedParam .RefPEna2ndBridge = 200 * 14.095465572f + 0.5f;
		Metro . SavedParam . SavedParam .RefPDis2ndBridge = 100 * 14.095465572f + 0.5f;
		
		Metro . SavedParam . SavedParam .BridgeUgolCorrect = 0x1555;
		Metro . SavedParam . SavedParam .EnaRegParamsCorrect = 0;
		
		Metro . SavedParam . SavedParam .MaskAlarmKMsOffReady = 0x003F6E8C;
		Metro . SavedParam . SavedParam .MaskAlarmKMsOffWork  = 0x003F6C00;
		
		Metro . SavedParam . SavedParam .RefPEnaDiodeMode = 50 * 14.095465572f + 0.5f;		 
		Metro . SavedParam . SavedParam .RefPDisDiodeMode = 10 * 14.095465572f + 0.5f;		 
		Metro . SavedParam . SavedParam .RefTEnaDiodeMode = 400;													 
		Metro . SavedParam . SavedParam .RefTDisDiodeMode = 400;													 
		Metro . SavedParam . SavedParam .RefUdcDisDiodeMode = 6000;												 
		Metro . SavedParam . SavedParam .EnaDiodeMode = 0;																 

		Metro . SavedParam . SavedParam .RefIHighFreq = 1000;
		Metro . SavedParam . SavedParam .RefTHighFreq = 4;
	}
	
	Metro.MTZIa1Counter = Metro.MTZIb1Counter = Metro.MTZIc1Counter = Metro . SavedParam . SavedParam .RefMtzT;
	Metro.MTZIa2Counter = Metro.MTZIb2Counter = Metro.MTZIc2Counter = Metro . SavedParam . SavedParam .RefMtzT;
	Metro.Udc1MaxCounter = Metro.Udc2MaxCounter = Metro . SavedParam . SavedParam .RefUdcmaxT;
	Metro.Udc1MinCounter = Metro.Udc2MinCounter = Metro . SavedParam . SavedParam .RefUdcminT;
	Metro.SUMinCounter = Metro . SavedParam . SavedParam .RefSUminT;
	Metro.SUMaxCounter = Metro . SavedParam . SavedParam .RefSUmaxT;

	Metro.MTZI1CounterVD = Metro.MTZI2CounterVD = Metro . SavedParam . SavedParam .RefMtzTVD;
	
}



void TIM1_Init(int freq) {
TIM_TypeDef	*TIM = ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000));	

	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00000001);
	
	TIM->PSC 		= 0;
	 
	 
	 
	TIM->ARR 		= (SystemCoreClock / 2) / freq;																												

	 
	TIM->CCR1		= TIM->ARR + 1;
	TIM->CCR2		= TIM->ARR + 1;
	TIM->CCR3		= TIM->ARR + 1;
	TIM->CCR4 	= TIM->ARR + 1;

   
	 
	 
	TIM->CCMR1	= ((uint16_t)0x0070) | ((uint16_t)0x0008) | ((uint16_t)0x7000) | ((uint16_t)0x0800);
	TIM->CCMR2	= ((uint16_t)0x0070) | ((uint16_t)0x0008) | ((uint16_t)0x7000) | ((uint16_t)0x0800);
	 
	 
	 
	 
	TIM->RCR		= 1;

	 
	 
	TIM->CR2		= ((uint16_t)0x4000) | 
								((uint16_t)0x1000) |
								((uint16_t)0x2000)|
								((uint16_t)0x0400) |
								((uint16_t)0x0800)|
								((uint16_t)0x0100) |
								((uint16_t)0x0200)|
								((uint16_t)0x0010);			

	 
	TIM->BDTR		= (0xE0 | 0x14) | ((uint16_t)0x1000) | ((uint16_t)0x2000);

	 
	TIM->CCER		=	0x3FFF;

	 
	TIM->EGR		= ((uint8_t)0x01);

	 

	TIM->DIER 	= ((uint16_t)0x0080);
											

	TIM->CR1		= (((uint16_t)0x0001) | ((uint16_t)0x0080) | ((uint16_t)0x0060));	

	NVIC_SetPriority(TIM1_UP_TIM10_IRQn, TIM1_UP_TIM10_Prty);
	NVIC_EnableIRQ(TIM1_UP_TIM10_IRQn);

	NVIC_SetPriority(TIM1_BRK_TIM9_IRQn, TIM1_BRK_TIM9_Prty);
	NVIC_EnableIRQ(TIM1_BRK_TIM9_IRQn);

	 
	(*(volatile unsigned int *)((((unsigned int)(&((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800))->ODR) - ((uint32_t)0x40000000))*32 + 6*4) + ((uint32_t)0x42000000))) = 0;
}	

void TIM8_Init(int freq) {
TIM_TypeDef	*TIM = ((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400));	

	 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB2ENR |= ((uint32_t)0x00000002);
	
	TIM->PSC 		= 0;
	 
	 
	 
	TIM->ARR 		= (SystemCoreClock / 2) / freq;																												

	 
	TIM->CCR1		= TIM->ARR + 1;
	TIM->CCR2		= TIM->ARR + 1;
	TIM->CCR3		= TIM->ARR + 1;
	TIM->CCR4 	= TIM->ARR + 1;

   
	 
	 
	TIM->CCMR1	= ((uint16_t)0x0070) | ((uint16_t)0x0008) | ((uint16_t)0x7000) | ((uint16_t)0x0800);
	TIM->CCMR2	= ((uint16_t)0x0070) | ((uint16_t)0x0008) | ((uint16_t)0x7000) | ((uint16_t)0x0800);
	 
	 
	 
	 
	TIM->RCR		= 1;
	
	 
	 
	TIM->CR2		= ((uint16_t)0x4000) | 
								((uint16_t)0x1000) |
								((uint16_t)0x2000)|
								((uint16_t)0x0400) |
								((uint16_t)0x0800)|
								((uint16_t)0x0100) |
								((uint16_t)0x0200)|
								((uint16_t)0x0020);

	 
	TIM->BDTR		= (0xE0 | 0x14) | ((uint16_t)0x1000) | ((uint16_t)0x2000);

	 
	TIM->CCER		=	0x3FFF;

	 
	TIM->EGR		= ((uint8_t)0x01);
	
	 

	TIM->DIER 	= ((uint16_t)0x0080);

	 
	TIM->SMCR		= ((uint16_t)0x0005);



	
	if (Metro . SavedParam . SavedParam . ENATIMOffset == 2) {TIM->CNT 		= TIM->ARR -  1;} 
		else if (Metro . SavedParam . SavedParam . ENATIMOffset == 4) {TIM->CNT 		= TIM->ARR >> 1;}
	
	TIM->CR1		= (((uint16_t)0x0001) | ((uint16_t)0x0080) | ((uint16_t)0x0060));	

	NVIC_SetPriority(TIM8_UP_TIM13_IRQn, TIM8_UP_TIM13_Prty);
	NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
	
  NVIC_SetPriority(TIM8_BRK_TIM12_IRQn, TIM8_BRK_TIM12_Prty);
  NVIC_EnableIRQ(TIM8_BRK_TIM12_IRQn);

	 	
	(*(volatile unsigned int *)((((unsigned int)(&((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800))->ODR) - ((uint32_t)0x40000000))*32 + 7*4) + ((uint32_t)0x42000000))) = 0;
	
	 
	Metro.AMP1 = Metro.ARR = TIM->ARR;
	Metro.Phase1 = 0;
	Metro.IncPhase1 = 0;

}


void TIM8_UP_TIM13_IRQHandler() {
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = ((Metro.Mode & 0x0002) >> 1);
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->BDTR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x000F)*4) + ((uint32_t)0x42000000))) = ((Metro.Mode & 0x0002) >> 1);
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;
}

void TIM1_UP_TIM10_IRQHandler() {
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;	
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = ((Metro.Mode & 0x0001) >> 0);
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->BDTR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x000F)*4) + ((uint32_t)0x42000000))) = ((Metro.Mode & 0x0001) >> 0);
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0000)*4) + ((uint32_t)0x42000000))) = 0;
}


void TIM8_BRK_TIM12_IRQHandler() {
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->BDTR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x000F)*4) + ((uint32_t)0x42000000))) = 0;
 	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = 0;
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = 0;
	Metro.ErrorTIM8Flag = 1;
}	

void TIM1_BRK_TIM9_IRQHandler() {
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0400))->BDTR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x000F)*4) + ((uint32_t)0x42000000))) = 0;
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->DIER) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = 0;
	(*(volatile unsigned int *)((((unsigned int)(&((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x0000))->SR) - ((uint32_t)0x40000000))*32 + ((uint16_t)0x0007)*4) + ((uint32_t)0x42000000))) = 0;
	Metro.ErrorTIM1Flag = 1;
}

void TIM2_TIM5_Init(void) {
	TIM_TypeDef	*TIM = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000));	
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->APB1ENR |=	(((uint32_t)0x00000001) | ((uint32_t)0x00000008));
	 
	TIM->CNT = 0;
	TIM->PSC = 0;
	TIM->ARR = 0xFFFFFFFF;
	
	TIM->CCMR1 = ((uint16_t)0x0001) | ((uint16_t)0x0100) | ((uint16_t)0x00F0) | ((uint16_t)0xF000);
	TIM->CCMR2 = ((uint16_t)0x0001) | ((uint16_t)0x0100) | ((uint16_t)0x00F0) | ((uint16_t)0xF000);
	
	TIM->CCER  = ((uint16_t)0x0001) | ((uint16_t)0x0010) | ((uint16_t)0x0100);
	TIM->DIER  = ((uint16_t)0x0002) | ((uint16_t)0x0004) | ((uint16_t)0x0008);

	TIM->CR1  |= ((uint16_t)0x0001);
	
	NVIC_SetPriority(TIM2_IRQn, TIM2_Prty);
	NVIC_EnableIRQ(TIM2_IRQn);

	 
	TIM = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00));

	TIM->CNT = 0;
	TIM->PSC = 0;
	TIM->ARR = 0xFFFFFFFF;
	
	TIM->CCMR1 = ((uint16_t)0x0001) | ((uint16_t)0x0100) | ((uint16_t)0x00F0) | ((uint16_t)0xF000);
	TIM->CCMR2 = ((uint16_t)0x0001) | ((uint16_t)0x0100) | ((uint16_t)0x00F0) | ((uint16_t)0xF000);
	
	TIM->CCER  = ((uint16_t)0x0001) | ((uint16_t)0x0010) | ((uint16_t)0x0100);
	TIM->DIER  = ((uint16_t)0x0002) | ((uint16_t)0x0004) | ((uint16_t)0x0008);

	TIM->CR1  |= ((uint16_t)0x0001);
	
	NVIC_SetPriority(TIM5_IRQn, TIM5_Prty);
	NVIC_EnableIRQ(TIM5_IRQn);
}

void TIM2_IRQHandler(void) {
static unsigned int Ch1, Ch2, Ch3;
	
	if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->SR & ((uint16_t)0x0002)) {			 
		((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->SR &= ~((uint16_t)0x0002);				 
		if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER & ((uint16_t)0x0002)) {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER &= ~((uint16_t)0x0002);
			Metro.T[0] = (unsigned int)((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCR1 - Ch1;
		}	else {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER |= ((uint16_t)0x0002);
			Ch1 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCR1;
		} 
	} 
	
	if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->SR & ((uint16_t)0x0004)) {			 
		((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->SR &= ~((uint16_t)0x0004);				 
		if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER & ((uint16_t)0x0020)) {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER &= ~((uint16_t)0x0020);
			Metro.T[1] = (unsigned int)((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCR2 - Ch2;
		}	else {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER |= ((uint16_t)0x0020);
			Ch2 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCR2;
		} 
	}
	
	if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->SR & ((uint16_t)0x0008)) {			 
		((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->SR &= ~((uint16_t)0x0008);				 
		if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER & ((uint16_t)0x0200)) {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER &= ~((uint16_t)0x0200);
			Metro.T[2] = (unsigned int)((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCR3 - Ch3;
		}	else {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCER |= ((uint16_t)0x0200);
			Ch3 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->CCR3;
		} 
	}
} 

void TIM5_IRQHandler(void) {
static unsigned int Ch1, Ch2, Ch3;
	
	if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->SR & ((uint16_t)0x0002)) {			 
		((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->SR &= ~((uint16_t)0x0002);				 
		if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER & ((uint16_t)0x0002)) {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER &= ~((uint16_t)0x0002);
			Metro.T[3] = (unsigned int)((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCR1 - Ch1;
		}	else {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER |= ((uint16_t)0x0002);
			Ch1 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCR1;
		} 
	} 
	
	if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->SR & ((uint16_t)0x0004)) {			 
		((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->SR &= ~((uint16_t)0x0004);				 
		if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER & ((uint16_t)0x0020)) {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER &= ~((uint16_t)0x0020);
			Metro.T[4] = (unsigned int)((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCR2 - Ch2;
		}	else {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER |= ((uint16_t)0x0020);
			Ch2 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCR2;
		} 
	}
	
	if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->SR & ((uint16_t)0x0008)) {			 
		((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->SR &= ~((uint16_t)0x0008);				 
		if (((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER & ((uint16_t)0x0200)) {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER &= ~((uint16_t)0x0200);
			Metro.T[5] = (unsigned int)((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCR3 - Ch3;
		}	else {
			((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCER |= ((uint16_t)0x0200);
			Ch3 = ((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0C00))->CCR3;
		} 
	}
} 




