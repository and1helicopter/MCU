#line 1 "SOURCE\\Menu.c"
#line 1 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "F:\\Program\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 2 "SOURCE\\Menu.c"
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





 
#line 3 "SOURCE\\Menu.c"

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

 





 


 


 


 




 

 

  







 

















 









 

  

 

 
#line 5 "SOURCE\\Menu.c"
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







#line 6 "SOURCE\\Menu.c"

#line 1 "SOURCE\\menu.h"
char *STmainmenu  = "√À¿¬ÕŒ≈ Ã≈Õﬁ    ÃÓÌËÚÓ        |∆ÛÌ‡Î ÒÓ·˚ÚËÈ | ÓÌÙË„Û‡ˆËˇ   |–Â„ÛÎˇÚÓ˚     |œÂ‰ÛÔÂÊ‰ÂÌËˇ |«‡˘ËÚ˚         |—Â‚ËÒ         |œÓÚÓÍÓÎ Ó·ÏÂÌ‡|";
char *STregs	    = ">–≈√”Àﬂ“Œ–€      –Â„ÛÎˇÚÓ Udc | –Â„ÛÎˇÚÓ Q   | –Â„ÛÎˇÚÓ PLL |";
char *STalarms	  = ">«¿Ÿ»“€          Ã“« ÔÂÓ·‡ÁÓ‚| ¬˚ÒÓÍÓÂ Udc   | ÕËÁÍÓÂ Udc    | –‡Áˇ‰ Udc    | ÕËÁÍÓÂ UÒËÌı.| ¬˚ÒÓÍÓÂ UÒËÌı| “ÂÏÔÂ‡ÚÛ‡   | «‡˘ËÚ‡ ‰ËÓ‰Ó‚ | «‡˘ËÚ‡ ÂÁËÒÚ.| ¬˚ÒÓÍÓ˜‡ÒÚ.ÚÓÍ|";
char *STconfig	  = "> ŒÕ‘»√”–¿÷»ﬂ    ”ÒÚ‡‚ÍË       | «‡ˇ‰ / ‡Áˇ‰| –ÂÊËÏ Â„ÛÎË.| ¬ÒÚÓÂÌ.„ÂÌÂ.| ‘ËÎ¸Ú. ËÁÏÂ.| ¬ÂÌÚËÎˇÚÓ˚   | —Ôˇ˘ËÈ ÂÊËÏ  | ”Ô‡‚Î.ÏÓÒÚ‡ÏË| ŒÒÌÓ‚Ì/ÂÁÂ‚Ì| ƒËÓ‰Ì˚È ÂÊËÏ | –ÂÊËÏ ÿ»Ã     | –‡ÁÌËˆ‡ Udc1&2| œÓÒÚ.ÒÓÒÚ‡‚Î. |";
char *STrefs	 	  = ">”—“¿¬ »         ”ÒÚ‡‚Í‡ Udc   | ”ÒÚ‡‚Í‡ Q     | ”ÒÚ‡‚Í‡ ¶     |";
char *STzarad	 	  = ">«¿–ﬂƒ / –¿«–ﬂƒ  ÃËÌËÏ‡Î¸Ì. Udc| ÃËÌËÏ‡Î¸Ì. Us | ƒÎËÚÂÎ¸Ì.  Ã1 |";

char *STstandby	  = ">—œﬂŸ»… –≈∆»Ã    ¬ÍÎ˛˜ÂÌËÂ     | ŒÚÍÎ˛˜ÂÌËÂ    |";
char *STbridge		=	">”œ–¿¬À.ÃŒ—“¿Ã»  ¬ÍÎ/ŒÚÍÎ ÏÓÒÚ‡| ”ÒÚ‡‚Í‡ ‚ÍÎ.  | ”ÒÚ‡‚Í‡ ÓÚÍÎ. | –Û˜ÌÓÈ ‚˚·Ó  |  ÓÂÍˆËˇ Û„Î‡|  Ó. Ô‡-Ó‚ |";
char *STAutoBridge= ">>¬ À/Œ“ À ÃŒ—“¿  ¬Û˜ÌÛ˛         ¿‚ÚÓÏ‡ÚË˜ÂÒÍË ";
char *STManBridge = ">>–”◊ÕŒ… ¬€¡Œ–    ÃÓÒÚ 1          ÃÓÒÚ 1 & 2    ";
char *STmainch    = ">>Œ—ÕŒ¬Õ/–≈«≈–¬Õ  –ÂÁÂ‚Ì˚È       ŒÒÌÓ‚ÌÓÈ      ";
char *STparamcorr = ">> Œ––. œ¿–-–Œ¬   ¡ÂÁ ÍÓÂÍˆËË   — ÍÓÂÍˆËÂÈ  ";

char *STDiodeMode		 = ">ƒ»ŒƒÕ€… –≈∆»Ã   ¬ÍÎ./ŒÚÍÎ.    | ”ÒÚ‡‚Í‡ ‚ÍÎ.  | ”ÒÚ‡‚Í‡ ÓÚÍÎ. |";
char *STEnaDiodeMode = ">>¬ À./Œ“ À.      ÕÂ ‡ÁÂ¯ÂÌÓ    –‡ÁÂ¯ÂÌÓ     ";

char *STintgen	 	= ">¬—“–Œ≈Õ.√≈Õ≈–.  ¬ÍÎ./¬˚ÍÎ.    | ‘ËÎ¸Ú‡ˆËˇ    |  Ó˝ÙÙËˆËÂÌÚ  1|  Ó˝ÙÙËˆËÂÌÚ  2|";
char *STintgenena = ">>¬—“–Œ≈Õ.√≈Õ≈–.  ŒÚÍÎ˛˜ÂÌ        ¬ÍÎ˛˜ÂÌ         PLL           ";

char *STfiltrs    = ">>‘»À‹“–.»«Ã≈–.   ‘ËÎ¸Ú‡ˆËˇ DC|  ‘ËÎ¸Ú‡ˆËˇ I1|  ‘ËÎ¸Ú‡ˆËˇ P1|  ‘ËÎ¸Ú‡ˆËˇ Q1|  ‘ËÎ¸Ú‡ˆËˇ I2|  ‘ËÎ¸Ú‡ˆËˇ P2|  ‘ËÎ¸Ú‡ˆËˇ Q2|  ‘ËÎ¸Ú‡ˆËˇ Us|";

char *STvent	  	= ">>¬≈Õ“»Àﬂ“Œ–€     ¬ÍÎ.‚ÂÌÚËÎˇÚ.|  ŒÚÍÎ.‚ÂÌÚËÎˇÚ|";

char *STservice   = ">—≈–¬»—          ”ÒÚ.ƒ‡Ú‡/¬ÂÏˇ| —Óı.Ô‡‡ÏÂÚ˚| ƒ‡Ú˜ËÍË       |";
char *STsensors    =">>ƒ¿“◊» »          ‡ÎË·Ó‚Í‡   |  —ÏÂ˘.ÌÛÎˇ Udc|  —ÏÂ˘.ÌÛÎˇ Us |  —ÏÂ˘.ÌÛÎˇ I1 |  —ÏÂ˘.ÌÛÎˇ I2 |  —ÏÂ˘.ÌÛÎˇ I3 |  —ÏÂ˘.ÌÛÎˇ I4 |";

char *STfixugol	  = ">>–≈∆»Ã –≈√”À»–.  –Â„ÛÎˇÚÓ Udc   ‘ËÍÒ.Û„ÓÎ     ";
char *STTIMOffset = ">>–≈∆»Ã ÿ»Ã       —ËıÓÌÌ‡ˇ       1/2 ÔÂËÓ‰‡     1/4 ÔÂËÓ‰‡   ";
char *STFixCorrect = ">>œŒ—“.—Œ—“¿¬À.   ŒÚÍÎ˛˜ÂÌ        ¬ÍÎ˛˜ÂÌ       ";


char *STuarts     =">œ–Œ“Œ ŒÀ Œ¡Ã≈Õ¿ œÓÚ X6       | œÓÚ X7       | œÓÚ ’13      |";
char *STuartparams=">>œ¿–-–€ œŒ–“¿    —ÍÓÓÒÚ¸     |  ◊ÂÚÌÓÒÚ¸     |  —ÚÓÔ-·ËÚ˚    |  ¿‰ÂÒ Modbus |  ¿‰ÂÒ 2      |";
char *STuartSpeed =">>>— Œ–Œ—“‹        9600 ·Ó‰        19200 ·Ó‰       38400 ·Ó‰       57600 ·Ó‰       115200 ·Ó‰      230400 ·Ó‰    ";
char *STuartParity=">>>◊≈“ÕŒ—“‹        Odd             Even            ¡ÂÁ ˜ÂÚÌÓÒÚË ";
char *STuartStop  =">>>—“Œœ-¡»“€       1 ÒÚÓÔ-·ËÚ      2 ÒÚÓÔ-·ËÚ‡  ";

#line 8 "SOURCE\\Menu.c"

void AlarmList(int ErrorCode, int *ViewStr) {
int i;
int CountViewStr = 0;
int RealViewStr  = 0;
int MaxViewStr   = 0;

  if (*ViewStr < 0) {*ViewStr = 0;}

  for (i = 0; i < 32; ) {
		if (ErrorCode & (1ul << i++)) { 
			CountViewStr++; 
			MaxViewStr = i;
			if (CountViewStr == *ViewStr) {RealViewStr = i;}
		}
	}  

  if (*ViewStr > CountViewStr) {*ViewStr = CountViewStr; RealViewStr = MaxViewStr;}

  switch (RealViewStr) {
		case  0:	{lcdout(16,16,"«¿Ÿ»“€         }");} break;
		case 14:
		case  1:	{lcdout(16,16,">Ã“« 1          ");} break;
		case 15:
		case  2:	{lcdout(16,16,">Ã“« 2          ");} break;
		
		case  3:	{lcdout(16,16,">Udc Ï‡ÍÒ.      ");} break;
		case  4:	{lcdout(16,16,">Udc ÏËÌ.       ");} break;
		case  5:	{lcdout(16,16,">TIM1 BKIN      ");} break;
		case  6:	{lcdout(16,16,">TIM8 BKIN      ");} break;
		case  7:  {lcdout(16,16,">Œ¯Ë·Í‡ ÒËÌıÓÌ.");} break;
		case  8:  {lcdout(16,16,">ÕËÁÍÓÂ UÒËÌı. ");} break;
		case  9:  {lcdout(16,16,">¬˚ÒÓÍ‡ˇ ÚÂÏ-‡ ");} break;
		case 10:  {lcdout(16,16,">¬˚ÒÓÍÓÂ UÒËÌı.");} break;
		case 11:  {lcdout(16,16,">Ã“« 3          ");} break;
		case 12:  {lcdout(16,16,">Ã“« 4          ");} break;
		case 13:  {lcdout(16,16,">«‡˘ËÚ‡ ÂÁËÒÚÓ");} break;
		case 16:  {lcdout(16,16,">¬˚ÒÓÍÓ˜‡ÒÚ.ÚÓÍ ");} break;

		case 17:	{lcdout(16,16,">ŒÚÍ‡Á KM1      ");} break;
		case 18:	{lcdout(16,16,">ÕÂÛÒÔÂ¯.Á‡ˇ‰D—");} break;
		case 19:	{lcdout(16,16,">ÕÂÛÒÔÂ¯.Á‡ˇ‰¿—");} break;
		
		case 32:	{lcdout(16,16,">¿‚‡ËÈÌ˚È —“Œœ ");} break;	
	
		default:	{lcdout(16,16,"ÕÂËÁ‚ÂÒÚÌ.Á‡˘ËÚ‡");} break;
	} 
}

void ViewAlarmList(int ErrorCode) {
int PultKeyb = 0;
int ViewStr = 0;

WorkPultKeyb = 0;;
while (1) {
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);			 
	ClearScreen();
	
	switch (PultKeyb & (0x7F & ~K_Shift)) {
		case K_Up:		ViewStr--; break;
		case K_Down:	ViewStr++; break;
		case K_Left:	return;
	}  
	
	lcdout(0,16,"—œ»—Œ  «¿Ÿ»“   ");
	AlarmList(ErrorCode, &ViewStr);
	
	while (PultRefresh());
	}  
}	 


extern OscilCmnd_type    *ptrOscilCmnd;
extern OscilConfig_type  *ptrSavedOscilConfig;

void Monitor(struct EventLog_type *DispPrms) {
static int ViewStr = 1;	
int i = 0;
int Inc = 0;
int Pause = 0;
int Repeat = 0;	
int PultKeyb = 0;
int WorkViewStr = 0;

static int AlarmStrNum = 0 ;
  
int Memoryindex = 0; 
	
WorkPultKeyb = 0;;
while (1) {
	 
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);

	switch (PultKeyb & (0x7F & ~K_Shift)) {
    case K_Plus:  {Memoryindex++; Pause = 0;}break;
    case K_Minus: {Memoryindex--; Pause = 0;}break;
		case K_Up:		Inc = -1; break;
		case K_Down:	Inc = +1; break;
		case K_Ena:		{Metro.NeedEnable  |= 1;} break;
		case K_Dis:		{Metro.NeedDisable |= 1; if ((PultKeyb & K_Shift)  ) {Metro.CANCmndTx |= 0x0001;}} break;
		case K_Left:	return;
		case K_Enter:	{if (ViewStr == AlarmStrNum) ViewAlarmList(DispPrms->AlarmWord1); else Metro.OscilCmnd.OscilNeed = 1;} break;
	}  

  
  
	if (Pause == 0) {
		Pause = 4;
		ClearScreen();					 

		ViewStr += Inc;

		Inc = 0;
		
		if (ViewStr < 1) ViewStr = 1;

		do {
			WorkViewStr = ViewStr;
			
		
			if (!(--WorkViewStr)) {lcdoutDT3(DispPrms->RTC_Date, DispPrms->RTC_Time, DispPrms->RTC_SSC); break;}



			if (!(--WorkViewStr)) {lcdout(0,16," ‡Ì‡Î˚           ");   lcdout(16,16,ptrSavedOscilConfig->OscilChNumName[Memoryindex]); break;}
			if (!(--WorkViewStr)) 
      {
        lcdout(0,16,"ŒÒˆËÎÎ           ");   
        lcdouttextl(8,Metro .OscilCmnd.OscilLenght,0,""); 
        lcdouttextl(16,Metro .OscilCmnd.OscilHistoryCount, 0,"");
        lcdouttextl(24,Metro .OscilCmnd.OscilRemainingCount, 0,"");         
      break;}

      
      
			if (!(--WorkViewStr)) {lcdout(0,16,"—Ú‡ÚÛÒ IGBT 1    ");   lcdouttextl(16, DispPrms->IGBTStat1[0],0,""); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"—Ú‡ÚÛÒ IGBT 2    ");   lcdouttextl(16, DispPrms->IGBTStat2[0],0,""); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"—Ú‡ÚÛÒ IGBT 3    ");   lcdoutBIN(16, DispPrms->IGBTStat3[0]); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"—Ú‡ÚÛÒ IGBT 4    ");   lcdoutBIN(16, DispPrms->IGBTStat4[0]); break;}
			if (!(--WorkViewStr)) {lcdout(0,16,"ƒËÒÍÂÚ. ‚ıÓ‰˚ 1");   lcdoutBIN(16, DispPrms->DigInput1); break;}





			if (!(--WorkViewStr)) {lcdout(0,16,"ƒËÒÍÂÚ.‚˚ıÓ‰˚ 1");   lcdoutBIN(16, DispPrms->DigOutPut1); break;}



			if (!(--WorkViewStr)) {lcdout(0,16,"—ÔËÒÓÍ Á‡˘ËÚ   |"); AlarmStrNum = ViewStr;	break;}

			









			
			if (!(--WorkViewStr)) {lcdout(0,22,"Õ‡ÔˇÊÂÌËÂ ÒËÌı.Us:   "); lcdouttextl(22, DispPrms->SUFlt * 0.1f, 1, " B"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"“ÓÍ 1           I1:   "); lcdouttextl(22, DispPrms->I1Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"“ÓÍ 2           I2:   "); lcdouttextl(22, DispPrms->I2Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"“ÓÍ 3           I3:   "); lcdouttextl(22, DispPrms->I3Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"“ÓÍ 4           I4:   "); lcdouttextl(22, DispPrms->I4Flt * 0.1f, 1, " A"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Õ‡ÔˇÊÂÌËÂ Udc 1Udc1: "); lcdouttextl(22, DispPrms->Udc1Flt * 0.1f, 1, " B"); break;}
			if (!(--WorkViewStr)) {lcdout(0,22,"Õ‡ÔˇÊÂÌËÂ Udc 2Udc2: "); lcdouttextl(22, DispPrms->Udc2Flt * 0.1f, 1, " B"); break;}
			if (!(--WorkViewStr)) {lcdout(0,20,"¿ÍÚË‚.ÏÓ˘ÌÓÒÚ¸ 1P1: "); 	lcdouttextl(20, DispPrms->P1Flt*(409.6f * 409.6f * __sqrtf(3) / 4096000.0f), 1, " ÍBÚ") ; break;}
			if (!(--WorkViewStr)) {lcdout(0,21,"–Â‡ÍÚ.ÏÓ˘ÌÓÒÚ¸12Q12: "); 	lcdouttextl(21, DispPrms->Q12Flt_rms*(409.6f * 409.6f * __sqrtf(3) / 4096000.0f), 1, " ÍB¿"); break;}
			if (!(--WorkViewStr)) {lcdout(0,20,"¿ÍÚË‚.ÏÓ˘ÌÓÒÚ¸ 2P2: "); 	lcdouttextl(20, DispPrms->P2Flt*(409.6f * 409.6f * __sqrtf(3) / 4096000.0f), 1, " ÍBÚ") ; break;}
			if (!(--WorkViewStr)) {lcdout(0,20,"–Â‡ÍÚ.ÏÓ˘ÌÓÒÚ¸34Q34: "); 	lcdouttextl(21, DispPrms->Q34Flt_rms*(409.6f * 409.6f * __sqrtf(3) / 4096000.0f), 1, " ÍB¿"); break;}
		




















	    
			if (!(--WorkViewStr))	{lcdout(0,16,"&Ia12_fixcorrect");		lcdouthex8(16,((int)(&Metro .Ia12_fixcorrect) - (int)(&Metro)) >> 1); break;} 
			if (!(--WorkViewStr))	{lcdout(0,16,"ExtADCArray   	");		lcdouthex8(16,((int)(&Metro .ExtADCArray[0]) - (int)(&Metro)) >> 1); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ia12_fixcorrect ");		lcdouttextl(16,Metro .Ia12_fixcorrect,0,""); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ic12_fixcorrect ");		lcdouttextl(16,Metro .Ic12_fixcorrect,0,""); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ia34_fixcorrect ");		lcdouttextl(16,Metro .Ia34_fixcorrect,0,""); break;}
			if (!(--WorkViewStr))	{lcdout(0,16,"Ic34_fixcorrect ");		lcdouttextl(16,Metro .Ic34_fixcorrect,0,""); break;}

			









			ViewStr -= WorkViewStr;
		} while (WorkViewStr);
	} else Pause--;
	
	while (PultRefresh());
	}  
}	 

void EventLog(void) {
int EventNum = 1;	
int PultKeyb = 0;

WorkPultKeyb = 0;;
Metro . StdCmnd . StdCmnd .LoadEvent = EventNum;
	
while (1) {
	 
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);

	switch (PultKeyb & (0x7F & ~K_Shift)) {
		case K_Up:		{EventNum--; 
									 if (EventNum < 1) EventNum = 1;
										else if (EventNum > 100ul) EventNum = 100ul; 
											else Metro . StdCmnd . StdCmnd .LoadEvent = EventNum;
									} break;
		case K_Down:	{EventNum++; 
									 if (EventNum < 1) EventNum = 1;
										else if (EventNum > 100ul) EventNum = 100ul; 
										else Metro . StdCmnd . StdCmnd .LoadEvent = EventNum;
									} break;
		case K_Left:	return;
		case K_Enter:	Monitor(&Metro . LoadedEvent . EventData); break;
	}  

	ClearScreen();
	lcdout(0,32,">∆”–Õ¿À —Œ¡€“»… N               |");
	lcdouttextl(17, EventNum, 0, "");
	switch (Metro . LoadedEvent . EventData .EventCode) {
		case 0x0053: lcdout(20,11,"RESET      "); break;
		case 0x0153: lcdout(20,11,"¬ Àﬁ◊≈Õ»≈  "); break;
		case 0x0253: lcdout(20,11,"¬€ Àﬁ◊≈Õ»≈ "); break;
		case 0x0853: lcdout(20,11,"«¿Ÿ»“¿     "); break;
		default:     lcdout(20,11,"Õ≈“ «¿œ»—» "); break;
	}
	


	
	while (PultRefresh());
	}  
}	 

void _SubMenuRegs(struct PI_params_type *Params, char * RegName) {
int res;
	FillData(0, (0x3E80000 / 2000) / Params->Ti, 0, 10000, 1, 22, 0, " [ÏÒ]", TiFlag);
	FillData(1, Params->Kp / 256.0f, -128, +127, 0.01f, 22, 2, "", 0);
	do {res = ChangeParam(2, RegName,"  TË:             KÔ:           ");
    switch (res) {
			case 1: {Params->Ti = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
			case 2: {Params->Kp = GetValue(1) * 256.0f + 0.5f;} break;
				 } 
   } while (res); 
}

void SubMenuRegs(void) {
int pos = 1;
	while (1) {
		pos = SubItem(3,pos,STregs,0);
		switch (pos) {
			case 0: return;
			case 1: {_SubMenuRegs(&Metro . SavedParam . SavedParam .RegUdc,">>–≈√”Àﬂ“Œ– Udc ");} break;
			case 2: {_SubMenuRegs(&Metro . SavedParam . SavedParam .RegQ,  ">>–≈√”Àﬂ“Œ– Q   ");} break;
			case 3: {_SubMenuRegs(&Metro . SavedParam . SavedParam .RegPLL,">>–≈√”Àﬂ“Œ– PLL ");} break;
		} 
	}
}

void SubMenuAlarms(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(10, pos, STalarms, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, Metro . SavedParam . SavedParam .RefMtzI/10  ,   5 ,1500, 1    ,21,0," [A]" ,0); 
								FillData(1, Metro . SavedParam . SavedParam .RefMtzT/4.0f,0.25f,  10, 0.25f,21,2," [ÏÒ]",0);
								do {res=ChangeParam(2,">>Ã“« œ–≈Œ¡–¿«Œ¬","  I:              t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefMtzI = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefMtzT = (GetValue(1) *  4.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;

			case 2: {	FillData(0, Metro . SavedParam . SavedParam .RefUdcmaxU/10  ,  25 , 1800, 1    ,23,0," [B]" ,0); 
								FillData(1, Metro . SavedParam . SavedParam .RefUdcmaxT/4.0f,0.25f,  10, 0.25f,21,2," [ÏÒ]",0);
								do {res=ChangeParam(2,">>¬€—Œ Œ≈ Udc   ","  Udc:            t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefUdcmaxU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefUdcmaxT = (GetValue(1) *  4.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;

			case 3: {	FillData(0, Metro . SavedParam . SavedParam .RefUdcminU/10  ,  25 , 1800, 1    ,23,0," [B]" ,0); 
								FillData(1, Metro . SavedParam . SavedParam .RefUdcminT/4.0f,0.25f,  10, 0.25f,21,2," [ÏÒ]",0);
								do {res=ChangeParam(2,">>Õ»« Œ≈ Udc    ","  Udc:            t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefUdcminU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefUdcminT = (GetValue(1) *  4.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 4: {	FillData(0, Metro . SavedParam . SavedParam .RefUdcRazrad/10  ,  25 , 1800, 1    ,23,0," [B]" ,0); 
								do {res=ChangeParam(1,">>–¿«–ﬂƒ Udc    ","  Udc:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefUdcRazrad = (GetValue(0) * 10.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 5: {	FillData(0, Metro . SavedParam . SavedParam .RefSUminU/10  ,    5, 800, 1    ,22,0," [B]" ,0); 
								FillData(1, Metro . SavedParam . SavedParam .RefSUminT/4.0f,0.25f,  10, 0.25f,21,2," [ÏÒ]",0);
								do {res=ChangeParam(2,">>Õ»« Œ≈ UÒËÌı.","  Us:             t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefSUminU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefSUminT = (GetValue(1) *  4.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 6: {	FillData(0, Metro . SavedParam . SavedParam .RefSUmaxU/10  ,    5, 800, 1    ,22,0," [B]" ,0); 
								FillData(1, Metro . SavedParam . SavedParam .RefSUmaxT/4.0f,0.25f,  10, 0.25f,21,2," [ÏÒ]",0);
								do {res=ChangeParam(2,">>¬€—Œ Œ≈ UÒËÌı","  Us:             t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefSUmaxU = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefSUmaxT = (GetValue(1) *  4.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;			
			case 7: {	FillData(0, Metro . SavedParam . SavedParam .RefTempr/10, 10, 120, 1, 21, 0, " [ ∞C]", 0); 
								do {res=ChangeParam(1,">>“≈Ãœ≈–¿“”–¿   ","  T:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefTempr = (GetValue(0) * 10.0f);} break;
									} 
								} while (res); 
							} break;
			case 8: {	FillData(0, Metro . SavedParam . SavedParam .RefMtzIVD/10     ,    5 , 1500,   1 ,21,0," [A]" ,0); 
								FillData(1, Metro . SavedParam . SavedParam .RefMtzTVD/4000.0f, 0.1f ,   15, 0.1f,21,1," [Ò]",0);
								do {res=ChangeParam(2,">>«¿Ÿ»“¿ ƒ»ŒƒŒ¬ ","  I:              t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefMtzIVD = (GetValue(0) * 10.0f   + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefMtzTVD = (GetValue(1) * 4000.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 9: {	FillData(0, Metro . SavedParam . SavedParam .RefWorkRazrad /4000.0f,  0.1f,  10, 0.1f, 22, 1," [c]", 0); 
								FillData(1, Metro . SavedParam . SavedParam .RefPauseRazrad/4000	 ,    1, 120,   1 , 22, 0," [Ò]", 0);
								do {res=ChangeParam(2,">>«¿Ÿ»“¿ –≈«»—“.","  t:             tÔ:           ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefWorkRazrad  = (GetValue(0) * 4000.0f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefPauseRazrad = (GetValue(1) * 4000);} break;
									} 
								} while (res); 
							} break;
			case 10:{	FillData(0, Metro . SavedParam . SavedParam .RefIHighFreq /10     ,    5 , 1500,   1 ,22,0," [A]" ,0); 
								FillData(1, Metro . SavedParam . SavedParam .RefTHighFreq /4.0f,0.25f,  10, 0.25f,21,2," [ÏÒ]",0);
								do {res=ChangeParam(2,">>¬€—Œ Œ◊¿—“.“Œ ","  dI:             t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefIHighFreq = (GetValue(0) * 10.0f   + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefTHighFreq = (GetValue(1) * 4.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
							
		} 
	}
}

void _SubMenuRefs(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(3, pos, STrefs, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, Metro . SavedParam . SavedParam .RefUdc/10, 0, 1700, 1, 24, 0," B", 0);
								FillData(1, Metro . SavedParam . SavedParam .SoftStartUdc * 0.006103515625f, 1, 100, 1, 24, 0, " ¬/Ò", 0); 
								do {res=ChangeParam(2,">>”—“¿¬ ¿ Udc   ","  Udc:            Udc':         ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefUdc = (GetValue(0) * 10.0f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .SoftStartUdc = (int)(GetValue(1) * 163.84f) & 0x0000FFFF;} break;
									} 
								} while (res); 
							} break;
			case 2: {	FillData(0, Metro . SavedParam . SavedParam .RefQ * (409.6f * 409.6f * __sqrtf(3) / 4096000.0f), -500, 500, 1, 21, 0, " [Í¬¿]", 0);  
								do {res=ChangeParam(1,">>”—“¿¬ ¿ Q     ","  Q:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefQ = (GetValue(0) * (1.0f / (409.6f * 409.6f * __sqrtf(3) / 4096000.0f)) + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 3: {	FillData(0, Metro . SavedParam . SavedParam .RefFi1 * 0.0054931640625f, -180, 179, 0.05f, 21, 2, "", 0);  
								do {res=ChangeParam(1,">>”—“¿¬ ¿ ¶      ","  ¶:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefFi1 = (int)(GetValue(0) * 182.044444444f + 0.5f) & 0xFFFF;} break;
									} 
								} while (res); 
							} break;			
							
							
		} 
	}
}

void _SubMenuZarad(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(3, pos, STzarad, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, Metro . SavedParam . SavedParam .RefUdcZarad/10, 0, 1200, 1, 23, 0," [B]", 0);
								do {res=ChangeParam(1,">>Ã»Õ»Ã¿À‹Õ. Udc","  Udc:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefUdcZarad = (GetValue(0) * 10.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 2: {	FillData(0, Metro . SavedParam . SavedParam .RefSUZarad/10, 0, 1000, 1, 23, 0," [B]", 0);
								do {res=ChangeParam(1,">>Ã»Õ»Ã¿À‹Õ. Us ","  Us:           ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefSUZarad = (GetValue(0) * 10.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 3: {	FillData(0, Metro . SavedParam . SavedParam .RefWorkKM1 / 2000, 1, 65.0, 1, 21, 0," [c]", 0);
								do {res=ChangeParam(1,">>ƒÀ»“≈À‹Õ.  Ã1 ","  t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefWorkKM1 = (GetValue(0) * 2000);} break;
									} 
								} while (res); 
							} break;
		} 
	}
} 


void _SubMenuIntGen(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(4, pos, STintgen, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	res = (Metro . SavedParam . SavedParam .EnaIntGen == 0) ? 1 : (Metro . SavedParam . SavedParam .EnaIntGen + 1);
								res = SubItem(3, res, STintgenena, res);
								if (res) {Metro . SavedParam . SavedParam .EnaIntGen = res - 1;}
							} break;
			case 2: {	FillData(0, 0x4000 / Metro . SavedParam . SavedParam .T1dPhase, 1, 1000, 1, 22, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>‘»À‹“–¿÷»ﬂ    ","  “Ù:           ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .T1dPhase = 0x4000 / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 3: {	FillData(0, Metro . SavedParam . SavedParam .K1dPhase, 0, 32767, 1, 22, 0, "", 0);
								do {res = ChangeParam(1,">> Œ›‘‘»÷»≈Õ“ K1","  K1:           ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .K1dPhase  = GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 4: {	FillData(0, Metro . SavedParam . SavedParam .K2dPhase, 0, 32767, 1, 22, 0, "", 0);
								do {res = ChangeParam(1,">> Œ›‘‘»÷»≈Õ“ K2","  K2:           ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .K2dPhase  = GetValue(0);} break;
									} 
								} while (res); 
							} break;
			
		} 
	}
} 

void _SubMenuFiltrs(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(8, pos, STfiltrs, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltUdc, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ DC","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltUdc = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 2: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltI1, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ I1","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltI1 = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 3: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltP1, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ P1","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltP1 = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 4: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltQ1, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ Q1","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltQ1 = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 5: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltI2, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ I2","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltI2 = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 6: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltP2, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ P2","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltP2 = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 7: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltQ2, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ Q2","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltQ2 = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;
			case 8: {	FillData(0, (0x3E80000 / 2000) / Metro . SavedParam . SavedParam .ParamFiltSU, 1, 100, 1, 23, 0, " [ÏÒ]", TiFlag);
								do {res = ChangeParam(1,">>>‘»À‹“–¿÷»ﬂ Us","   “Ù:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .ParamFiltSU = (0x3E80000 / 2000) / (unsigned short)GetValue(0);} break;
									} 
								} while (res); 
							} break;		
		} 
	}
} 

void _SubMenuVent(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(2, pos, STvent, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, Metro . SavedParam . SavedParam .RefTemprEnaVent / 10, 10, 100, 1, 22, 0, " [ ∞C]", 0); 
								do {res=ChangeParam(1,">>>¬ À.¬≈Õ“»Àﬂ“.","   “:           ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefTemprEnaVent = (GetValue(0) * 10.0f);} break;
									} 
								} while (res); 
							} break;	
			case 2: {	FillData(0, Metro . SavedParam . SavedParam .RefTemprDisVent / 10, 10, 100, 1, 22, 0, " [ ∞C]", 0); 
								do {res=ChangeParam(1,">>>Œ“ À.¬≈Õ“»Àﬂ“","   T:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefTemprDisVent = (GetValue(0) * 10.0f);} break;
									} 
								} while (res); 
							} break;			
		} 
	}
} 

void _SubMenuStandBy(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(2, pos, STstandby, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	FillData(0, Metro . SavedParam . SavedParam .RefStandByEnaT / 4000 , 10, 600, 1, 21, 0, " [Ò]", 0);  
								do {res=ChangeParam(1,">>¬ Àﬁ◊≈Õ»≈     ","  t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefStandByEnaT = (GetValue(0) * 4000);} break;
									} 
								} while (res); 
							} break;
			case 2: {	FillData(0, Metro . SavedParam . SavedParam .RefStandByIvdI / 10, 1, 100, 1, 24, 0," [A]", 0);
								FillData(1, Metro . SavedParam . SavedParam .RefStandByIvdT / 4000.0f, 0.1f, 1.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>Œ“ Àﬁ◊≈Õ»≈    ","  Ivd:            t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefStandByIvdI = (GetValue(0) * 10.0f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefStandByIvdT = (GetValue(1) * 4000.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
		} 
	}
}

void _SubMenuBridge(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(6, pos, STbridge, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	res = (Metro . SavedParam . SavedParam .EnaAuto2ndBridge == 0) ? 1 : 2;
								res = SubItem(2, res, STAutoBridge, res);
								if (res) {Metro . SavedParam . SavedParam .EnaAuto2ndBridge = res - 1;}
							} break;
			case 2: {	FillData(0, Metro . SavedParam . SavedParam .RefPEna2ndBridge * 0.070944801f, 0, 1000, 1, 21, 0, " [Í¬Ú]", 0);
								FillData(1, Metro . SavedParam . SavedParam .RefTEna2ndBridge / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>”—“¿¬ ¿ ¬ À.  ","  P:              t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefPEna2ndBridge = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefTEna2ndBridge = (GetValue(1) * 4000.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 3: {	FillData(0, Metro . SavedParam . SavedParam .RefPDis2ndBridge * 0.070944801f, 0, 1000, 1, 21, 0, " [Í¬Ú]", 0);
								FillData(1, Metro . SavedParam . SavedParam .RefTDis2ndBridge / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>”—“¿¬ ¿ Œ“ À. ","  P:              t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefPDis2ndBridge = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefTDis2ndBridge = (GetValue(1) * 4000.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 4: {	res = (Metro . SavedParam . SavedParam .DefMode == 0x07) ? 2 : 1;
								res = SubItem(2, res, STManBridge, res);
								if (res == 1) {Metro . SavedParam . SavedParam .DefMode = 1;}	else if (res == 2) {Metro . SavedParam . SavedParam .DefMode = 7;}
							} break;

  		case 5: {	FillData(0, Metro . SavedParam . SavedParam .BridgeUgolCorrect * 0.0054931640625f, -90, 90, 0.05f, 21, 2, "", 0);  
								do {res=ChangeParam(1,">> Œ––≈ ÷»ﬂ ”√À¿ ","  ¶:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .BridgeUgolCorrect  = (int)(GetValue(0) * 182.044444444f + 0.5f) & 0xFFFF;} break;
									} 
								} while (res); 
							} break;
			case 6: {	res = (Metro . SavedParam . SavedParam .EnaRegParamsCorrect == 0) ? 1 : 2;
								res = SubItem(2, res, STparamcorr, res);
								if (res) {Metro . SavedParam . SavedParam .EnaRegParamsCorrect = res - 1;}
							} break;			
							
		} 
	}
}
void _SubMenuDiodeMode(void){
int pos=1;
int res=0;
	while (1) {
		pos = SubItem(3, pos, STDiodeMode, 0);
		switch (pos) {
			case 0: {return;} break;
			case 1: {	res = (Metro . SavedParam . SavedParam .EnaDiodeMode == 0) ? 1 : 2;
								res = SubItem(2, res, STEnaDiodeMode, res);
								if (res) {Metro . SavedParam . SavedParam .EnaDiodeMode = res - 1;}
							} break;
			case 2: {	FillData(0, Metro . SavedParam . SavedParam .RefPEnaDiodeMode * 0.070944801f, 0, 1000, 1, 21, 0, " [Í¬Ú]", 0);
								FillData(1, Metro . SavedParam . SavedParam .RefTEnaDiodeMode / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0); 
								do {res=ChangeParam(2,">>”—“¿¬ ¿ ¬ À.  ","  P:              t:            ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefPEnaDiodeMode = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefTEnaDiodeMode = (GetValue(1) * 4000.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 3: {	FillData(0, Metro . SavedParam . SavedParam .RefPDisDiodeMode * 0.070944801f, 0, 1000, 1, 21, 0, " [Í¬Ú]", 0);
								FillData(1, Metro . SavedParam . SavedParam .RefTDisDiodeMode / 4000.0f, 0.1f, 60.0f, 0.1f, 21, 1," [c]", 0);
								FillData(2, Metro . SavedParam . SavedParam .RefUdcDisDiodeMode/10, 0, 700, 1, 23, 0," [B]", 0);
								do {res=ChangeParam(3,">>”—“¿¬ ¿ Œ“ À. ","  P:              t:              Udc:          ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefPDisDiodeMode = (GetValue(0) * 14.095465572f + 0.5f);} break;
										case 2: {Metro . SavedParam . SavedParam .RefTDisDiodeMode = (GetValue(1) * 4000.0f + 0.5f);} break;
										case 3: {Metro . SavedParam . SavedParam .RefUdcDisDiodeMode = (GetValue(2) * 10.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
		} 
	}
}
void SubMenuConfig(void) {
int pos = 1;
int res = 0;	
	while (1) {
		pos = SubItem(13, pos, STconfig, 0);
		switch (pos) {
			case 0: return;
			case 1: {_SubMenuRefs();} break;
			case 2: {_SubMenuZarad();} break;
			case 3: {	res = (Metro.FixUgolMode == 0) ? 1 : 2;
								res = SubItem(2, res, STfixugol, res);
								if (res) {Metro.FixUgolMode = res - 1; Metro .OscilCmnd.OscilNeed = 1;}
							} break;
			case 4:	{_SubMenuIntGen();} break;
			case 5: {_SubMenuFiltrs();} break;
			case 6: {_SubMenuVent();} break;
			case 7: {_SubMenuStandBy();} break;
			case 8: {_SubMenuBridge();} break;
			case 9: {	res = (Metro . SavedParam . SavedParam .MainCh == 0) ? 1 : 2;
								res = SubItem(2, res, STmainch, res);
								if (res) {Metro . SavedParam . SavedParam .MainCh = res - 1;}
							} break;
			case 10:{_SubMenuDiodeMode();} break;

			case 11:{	res = ((Metro . SavedParam . SavedParam .ENATIMOffset >> 1) + 1) & 0x03;
								res = SubItem(3, res, STTIMOffset, res);
								if (res) {Metro . SavedParam . SavedParam .ENATIMOffset = (res - 1) * 2;}
							} break;
			case 12:{ FillData(0, Metro . SavedParam . SavedParam .RefDeltaUdc/10, 0, 500, 1, 24, 0," [B]", 0);
								do {res=ChangeParam(1,">>–¿«Õ»÷¿ Udc1&2","  dUdc<         ");
									switch (res) {
										case 1: {Metro . SavedParam . SavedParam .RefDeltaUdc = (GetValue(0) * 10.0f + 0.5f);} break;
									} 
								} while (res); 
							} break;
			case 13:{ res = (Metro . SavedParam . SavedParam .EnaFixCorrect == 0) ? 1 : 2;
								res = SubItem(2, res, STFixCorrect, res);
								if (res) {Metro . SavedParam . SavedParam .EnaFixCorrect = res - 1;}
							} break;			


							
			
		} 
	}
}

static __inline void CalibSens(int Sens, int *Correct, char *Str, char *Str2) {
unsigned short Temp;
int Temp2;	 
	Metro.CalibrData = &Metro . StdCmnd . StdCmnd .ADCDataNorm[Sens];
	lcdout(0,22,Str); lcdouttextl(22, Metro.RMSData * 0.1f, 1, Str2);
	if (*Correct) {
	  Temp = Metro . SavedParam . SavedParam .ADCK[Sens]; 
	  if (*Correct > 0) {Temp = __uqadd16(Temp,  *Correct);}
	  if (*Correct < 0) {Temp = __uqsub16(Temp, -*Correct);}
		Metro . SavedParam . SavedParam .ADCK[Sens] = Temp;
	  *Correct = 0;
	}
} 

void SubMenuSensorsCalib(void) {
static int ViewStr = 1;	
int Inc = 0;
int Correct = 0;
int Pause = 0;
int Repeat = 0;	
int PultKeyb = 0;

WorkPultKeyb = 0;;
while (1) {
	 
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);

	Inc = 0;
	Correct = 0;
	switch (PultKeyb & (0x7F & ~K_Shift)) {
		case K_Plus:	Correct = +1; break;
		case K_Minus:	Correct = -1; break;
		case K_Up:		Inc = -1; break;
		case K_Down:	Inc = +1; break;
		case K_Left:	return;
	}  

	if (PultKeyb & K_Shift) Correct *= 10;
	
	if ((Pause == 0) || (Inc)) {
		Pause = 4;
		ClearScreen();					 
		do {
			Repeat = 0;
			ViewStr += Inc;
			switch (ViewStr) {
				case  0:	{Inc =  1;	Repeat = 1;} break;
				case  1:	CalibSens(_Ia1,  &Correct, "“ÓÍ 1 ‘‡Á‡ ¿    I1a:  ", " A"); break;
				case  2:	CalibSens(_Ib1,  &Correct, "“ÓÍ 1 ‘‡Á‡ B    I1b:  ", " A"); break;
				case  3:	CalibSens(_Ic1,  &Correct, "“ÓÍ 1 ‘‡Á‡ C    I1c:  ", " A"); break;
				case  4:	CalibSens(_Ia2,  &Correct, "“ÓÍ 2 ‘‡Á‡ ¿    I2a:  ", " A"); break;
				case  5:	CalibSens(_Ib2,  &Correct, "“ÓÍ 2 ‘‡Á‡ B    I2b:  ", " A"); break;
				case  6:	CalibSens(_Ic2,  &Correct, "“ÓÍ 2 ‘‡Á‡ C    I2c:  ", " A"); break;
				case  7:	CalibSens(_Udc1, &Correct, "Õ‡ÔˇÊÂÌËÂ Udc1 Udc1: ", " B"); break;
				case  8:	CalibSens(_Udc2, &Correct, "Õ‡ÔˇÊÂÌËÂ Udc2 Udc2: ", " B"); break;
				case  9:	CalibSens(_Uab,  &Correct, "Õ‡ÔˇÊÂÌËÂ Uab  Uab:  ", " B"); break;
				case 10:	CalibSens(_Ubc,  &Correct, "Õ‡ÔˇÊÂÌËÂ Ubc  Ubc:  ", " B"); break;
				case 11:	CalibSens(_Uca,  &Correct, "Õ‡ÔˇÊÂÌËÂ Uca  Uca:  ", " B"); break;
				default: 	{if (ViewStr > 11) {Inc = -1;}	Repeat = 1; } break;
			}
		} while (Repeat);
	} else Pause--;
	while (PultRefresh());
	}  
}	 

void SubMenuSensors(void) {
int pos = 1;
	while (1) {
		pos = SubItem(7,pos,STsensors,0);
		switch (pos) {
			case 0: return;
			case 1: SubMenuSensorsCalib(); break;
			case 2: if ((Metro . StdCmnd . StdCmnd .SetZeroCmd == 0) && SubMenuAsk("”—“¿ÕŒ¬.Õ”À» DC?")) {Metro . StdCmnd . StdCmnd .SetZeroCmd = (1ul<<_Udc1)|(1ul<<_Udc2);} break;
			case 3: if ((Metro . StdCmnd . StdCmnd .SetZeroCmd == 0) && SubMenuAsk("”—“¿ÕŒ¬.Õ”À» Us?")) {Metro . StdCmnd . StdCmnd .SetZeroCmd = (1ul<<_Uab)|(1ul<<_Ubc)|(1ul<<_Uca);} break;
			case 4: if ((Metro . StdCmnd . StdCmnd .SetZeroCmd == 0) && SubMenuAsk("”—“¿ÕŒ¬.Õ”À» I1?")) {Metro . StdCmnd . StdCmnd .SetZeroCmd = (1ul<<_Ia1)|(1ul<<_Ib1)|(1ul<<_Ic1);} break;
			case 5: if ((Metro . StdCmnd . StdCmnd .SetZeroCmd == 0) && SubMenuAsk("”—“¿ÕŒ¬.Õ”À» I2?")) {Metro . StdCmnd . StdCmnd .SetZeroCmd = (1ul<<_Ia2)|(1ul<<_Ib2)|(1ul<<_Ic2);} break;
			case 6: if ((Metro . StdCmnd . StdCmnd .SetZeroCmd == 0) && SubMenuAsk("”—“¿ÕŒ¬.Õ”À» I3?")) {Metro . StdCmnd . StdCmnd .SetZeroCmd = (1ul<<_Ia3)|(1ul<<_Ib3)|(1ul<<_Ic3);} break;
			case 7: if ((Metro . StdCmnd . StdCmnd .SetZeroCmd == 0) && SubMenuAsk("”—“¿ÕŒ¬.Õ”À» I4?")) {Metro . StdCmnd . StdCmnd .SetZeroCmd = (1ul<<_Ia4)|(1ul<<_Ib4)|(1ul<<_Ic4);} break;
		} 
	}
}

void SubMenuService(void) {
int pos = 1;
	while (1) {
		pos = SubItem(3,pos,STservice,0);
		switch (pos) {
			case 0: return;
		  case 1: {} break;
			case 2: {if (SubMenuAsk("—Œ’–. œ¿–¿Ã≈“–€?")) {Metro . StdCmnd . StdCmnd .SaveParam = 1;}} break;
			case 3: {SubMenuSensors();} break;
		} 
	}
}

void __SubMenuProtocol(int Port) {
int pos = 1;
int res = 0;
union UsartPrms_union OldPrms, NewPrms;

	if ((Port < 1) || (Port > 8)) return;
	
	OldPrms.AllParams = NewPrms.AllParams = GetSavedUartParams(Port);
	
	while (1) {
		pos = SubItem(4, pos, STuartparams, 0);
		switch (pos) {
			case 0: return;
			case 1: {	res = (NewPrms.Params.BaudRate & 0x07) + 1;
								res = SubItem(6, res, STuartSpeed, res);
								if (res) {
									NewPrms.Params.BaudRate = res - 1;
									if (NewPrms.Params.BaudRate != OldPrms.Params.BaudRate) {
										SetUartSpeed(Port, NewPrms.AllParams);
										OldPrms.Params.BaudRate = NewPrms.Params.BaudRate;
										PutSavedUartParams(Port, NewPrms.AllParams);
									}
								}
							} break;		  
			case 2: {	res = ((NewPrms.Params.Parity_Stop & 0x06) >> 1) + 1;
								res = SubItem(3, res, STuartParity, res);
								if (res) { 
									NewPrms.Params.Parity_Stop = (NewPrms.Params.Parity_Stop & ~0x06ul) | ((res - 1) << 1);
									if (OldPrms.Params.Parity_Stop != NewPrms.Params.Parity_Stop) {
										SetUartParity(Port, NewPrms.AllParams);
										OldPrms.Params.Parity_Stop = NewPrms.Params.Parity_Stop;
										PutSavedUartParams(Port, NewPrms.AllParams);
									}
								}	
							} break;
			case 3: {	res = (NewPrms.Params.Parity_Stop & 0x01) + 1;
								res = SubItem(2, res, STuartStop, res);
								if (res) {
									NewPrms.Params.Parity_Stop = (NewPrms.Params.Parity_Stop & ~0x01ul) | (res - 1);
									if (OldPrms.Params.Parity_Stop != NewPrms.Params.Parity_Stop) {
										SetUartStopBits(Port, NewPrms.AllParams);
										OldPrms.Params.Parity_Stop = NewPrms.Params.Parity_Stop;
										PutSavedUartParams(Port, NewPrms.AllParams);								
									}
								}
							} break;
			case 4: {	FillData(0, NewPrms.Params.Addr1, 1 ,127, 1, 26, 0, "",0); 
								do {res = ChangeParam(1,">>>¿ƒ–≈— MODBUS ","   ¿‰ÂÒ:       ");
									switch (res) {
										case 1: {
											OldPrms.Params.Addr1 = NewPrms.Params.Addr1 = GetValue(0);
											PutSavedUartParams(Port, NewPrms.AllParams);
										} break;
									} 
								} while (res); 
							} break;
		} 
	}
}
	
void SubMenuProtocol(void) {
int pos = 1;
	while (1) {
		pos = SubItem(3,pos,STuarts,0);
		switch (pos) {
			case 0: return;



		} 
	}
}


void MainMenu() {
int pos = 1;

	while (1) {
		pos = SubItem(8,pos,STmainmenu,0);
		switch (pos) {
			case 0: { return; } break;
			case 1: { Monitor(&Metro . WorkingEvent . EventData);	} 	break;
			case 2: { EventLog();				}   break;
			case 3: { SubMenuConfig();	}		break;
			case 4:	{	SubMenuRegs();		}		break;
			case 6:	{ SubMenuAlarms();	} 	break;
			case 7:	{ SubMenuService();	} 	break;
			case 8: { SubMenuProtocol();} 	break;
		} 
	}
}


void ReadyList(int *ViewStr) {
int i;
unsigned int ReadyCode;
int CountViewStr = 0;
int RealViewStr  = 0;
int MaxViewStr   = 0;

  if (*ViewStr < 0) {*ViewStr = 0;}
  ReadyCode = Metro . WorkingEvent . EventData .ReadyWord1;

  for (i = 0; i < 32; ) {
		if (ReadyCode & (1ul << i++)) { 
			CountViewStr++; 
			MaxViewStr = i;
			if (CountViewStr == *ViewStr) {RealViewStr = i;}
		}
	}  

  if (*ViewStr > CountViewStr) {*ViewStr = CountViewStr; RealViewStr = MaxViewStr;}

  switch (RealViewStr) {
	case 0:	{lcdout(16,16,"Õ≈ √Œ“Œ¬       }");} break;
	case 1:	{lcdout(16,16,">ÕÂ Í‚ËÚ.Á‡˘ËÚ‡ ");} break;
	case 2:	{lcdout(16,16,">TIM1 BKIN      ");} break;
	case 3:	{lcdout(16,16,">TIM8 BKIN      ");} break;
	case 4:	{lcdout(16,16,">—Ú‡ÚÛÒ IGBT    ");} break;
	case 5:	{lcdout(16,16,">ÕËÁÍÓÂ Udc     ");} break;
	case 6:	{lcdout(16,16,">ÕËÁÍÓÂ UcËÌı. ");} break;
	case 7:	{lcdout(16,16,">»‰ÂÚ Á‡ˇ‰     ");} break;
	case 8:	{lcdout(16,16,">¿— ÌÂ ‚ÍÎ˛˜ÂÌ  ");} break;
	
  default:{lcdout(16,16,">Œÿ»¡ ¿         ");} break;
				 		} 
}



	
void Display(void) {
int PultKeyb = 0;
int ViewStr = 0;
int amp = 0;	

WorkPultKeyb = 0;;
while (1) {
	do {PultKeyb = WaitPultReady();} while (PultKeyb == 0);			 
	ClearScreen();
	
	amp = Metro.AMP1;
	
	switch (PultKeyb & 0x7F) {
#line 998 "SOURCE\\Menu.c"
		case K_Plus:	{amp += 100; if (amp > Metro.ARR) {amp = Metro.ARR;} Metro.AMP1 = amp;} break;
		case K_Minus:	{amp -= 100; if (amp < 0) 				 {amp = 0;} 				Metro.AMP1 = amp;} break;


		case K_Up:		ViewStr--; break;
		case K_Down:	ViewStr++; break;
		case K_Left:	ViewStr = 0; break;
		case K_Ena:		{Metro.NeedEnable  |= 1;} break;
		case K_Dis:		{Metro.NeedDisable |= 1;} break;
		case K_Enter:	{MainMenu();} break;
	}  
	
	switch (Metro . StdCmnd . StdCmnd .Status)	{
		case  1:	if (Metro . WorkingEvent . EventData .AlarmWord1 == 0) {ReadyList(&ViewStr);} else {AlarmList(Metro . WorkingEvent . EventData .AlarmWord1, &ViewStr);} break;
		case 	2:	lcdout(16,16,"√Œ“Œ¬           "); break;
		case  5:  lcdout(16,16,"–¿¡Œ“¿          "); break;
		case  6:  lcdout(16,16,"—œﬂŸ»… –≈∆»Ã    "); break;
		case  7:  lcdout(16,16,"ƒ»ŒƒÕ€… –≈∆»Ã   "); break;
		default:	lcdout(16,16,"                "); break;
	}





	
	lcdouthex4(0, Metro.AMP1);


	 

	
	while (PultRefresh());
	}  
}	 	


