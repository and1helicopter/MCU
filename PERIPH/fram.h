#define FramSPI	SPI4
#define FramCS	PeriphBB(GPIOE->ODR,4)

extern void InitFram(void);
extern void SaveParamsProc(void);
extern int  LoadParamsProc(void);
//extern int FramRead(unsigned int *IntAddr, unsigned short ExtAddr, unsigned short Count);
//extern int FramWrite(unsigned int *IntAddr, unsigned int ExtAddr, unsigned short Count);
