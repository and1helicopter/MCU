extern int InitRTC(unsigned int Timeout);

extern int32_t  ReadRTC(int32_t RtcWait, uint32_t *RtcDate, uint32_t *RtcTime);
extern void SetRTC(uint32_t Date, uint32_t Time);
extern void PackRTC(uint32_t S_M_H, uint32_t D_M_Y);

extern int RTC_OK;

#define WaitClock					1
#define NotWaitClock			0





