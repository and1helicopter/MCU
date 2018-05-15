#define PultEnable
#define PultSPI 			SPI3

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
#define ClearPultKeyb() WorkPultKeyb = 0;
