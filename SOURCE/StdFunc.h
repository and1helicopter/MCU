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
	Err 		= __QSUB16(x,os);
	if (Params->Ti == 0) {*Buffer = 0; return (__SSAT((Err * Params->Kp) >> 8, 16));}
	*Buffer = __QADD(*Buffer, Err * Params->Ti);
	return 		__QADD(*Buffer, __SSAT(Err * Params->Kp, 24) << 8) >> 16;
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
