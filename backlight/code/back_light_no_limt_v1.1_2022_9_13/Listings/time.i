
#line 1 "mycode\time.c" /0
  
#line 1 "mycode\time.h" /0
 
 
 
  
#line 1 "D:\keil\C51\Inc\STC\STC8F.H" /0
 
 
 
 
 
 
 
 
 sfr ACC         =   0xe0;
 sfr B           =   0xf0;
 sfr PSW         =   0xd0;
 sbit CY         =   PSW^7;
 sbit AC         =   PSW^6;
 sbit F0         =   PSW^5;
 sbit RS1        =   PSW^4;
 sbit RS0        =   PSW^3;
 sbit OV         =   PSW^2;
 sbit F1         =   PSW^1;
 sbit P          =   PSW^0;
 sfr SP          =   0x81;
 sfr DPL         =   0x82;
 sfr DPH         =   0x83;
 sfr TA          =   0xae;
 sfr DPS         =   0xe3;
 sfr DPL1        =   0xe4;
 sfr DPH1        =   0xe5;
 
 
 
 sfr P0          =   0x80;
 sfr P1          =   0x90;
 sfr P2          =   0xa0;
 sfr P3          =   0xb0;
 sfr P4          =   0xc0;
 sfr P5          =   0xc8;
 sfr P6          =   0xe8;
 sfr P7          =   0xf8;
 sfr P0M0        =   0x94;
 sfr P0M1        =   0x93;
 sfr P1M0        =   0x92;
 sfr P1M1        =   0x91;
 sfr P2M0        =   0x96;
 sfr P2M1        =   0x95;
 sfr P3M0        =   0xb2;
 sfr P3M1        =   0xb1;
 sfr P4M0        =   0xb4;
 sfr P4M1        =   0xb3;
 sfr P5M0        =   0xca;
 sfr P5M1        =   0xc9;
 sfr P6M0        =   0xcc;
 sfr P6M1        =   0xcb;
 sfr P7M0        =   0xe2;
 sfr P7M1        =   0xe1;
 
 sbit P00        =   P0^0;
 sbit P01        =   P0^1;
 sbit P02        =   P0^2;
 sbit P03        =   P0^3;
 sbit P04        =   P0^4;
 sbit P05        =   P0^5;
 sbit P06        =   P0^6;
 sbit P07        =   P0^7;
 sbit P10        =   P1^0;
 sbit P11        =   P1^1;
 sbit P12        =   P1^2;
 sbit P13        =   P1^3;
 sbit P14        =   P1^4;
 sbit P15        =   P1^5;
 sbit P16        =   P1^6;
 sbit P17        =   P1^7;
 sbit P20        =   P2^0;
 sbit P21        =   P2^1;
 sbit P22        =   P2^2;
 sbit P23        =   P2^3;
 sbit P24        =   P2^4;
 sbit P25        =   P2^5;
 sbit P26        =   P2^6;
 sbit P27        =   P2^7;
 sbit P30        =   P3^0;
 sbit P31        =   P3^1;
 sbit P32        =   P3^2;
 sbit P33        =   P3^3;
 sbit P34        =   P3^4;
 sbit P35        =   P3^5;
 sbit P36        =   P3^6;
 sbit P37        =   P3^7;
 sbit P40        =   P4^0;
 sbit P41        =   P4^1;
 sbit P42        =   P4^2;
 sbit P43        =   P4^3;
 sbit P44        =   P4^4;
 sbit P45        =   P4^5;
 sbit P46        =   P4^6;
 sbit P47        =   P4^7;
 sbit P50        =   P5^0;
 sbit P51        =   P5^1;
 sbit P52        =   P5^2;
 sbit P53        =   P5^3;
 sbit P54        =   P5^4;
 sbit P55        =   P5^5;
 sbit P56        =   P5^6;
 sbit P57        =   P5^7;
 sbit P60        =   P6^0;
 sbit P61        =   P6^1;
 sbit P62        =   P6^2;
 sbit P63        =   P6^3;
 sbit P64        =   P6^4;
 sbit P65        =   P6^5;
 sbit P66        =   P6^6;
 sbit P67        =   P6^7;
 sbit P70        =   P7^0;
 sbit P71        =   P7^1;
 sbit P72        =   P7^2;
 sbit P73        =   P7^3;
 sbit P74        =   P7^4;
 sbit P75        =   P7^5;
 sbit P76        =   P7^6;
 sbit P77        =   P7^7;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr PCON        =   0x87;
 sfr AUXR        =   0x8e;
 sfr AUXR2       =   0x97;
 sfr BUS_SPEED   =   0xa1;
 sfr P_SW1       =   0xa2;
 sfr P_SW2       =   0xba;
 sfr VOCTRL      =   0xbb;
 sfr RSTCFG      =   0xff;
 
 
 
 
 
 
 
 
 
 
 
 sfr IE          =   0xa8;
 sbit EA         =   IE^7;
 sbit ELVD       =   IE^6;
 sbit EADC       =   IE^5;
 sbit ES         =   IE^4;
 sbit ET1        =   IE^3;
 sbit EX1        =   IE^2;
 sbit ET0        =   IE^1;
 sbit EX0        =   IE^0;
 sfr IE2         =   0xaf;
 sfr IP          =   0xb8;
 sbit PPCA       =   IP^7;
 sbit PLVD       =   IP^6;
 sbit PADC       =   IP^5;
 sbit PS         =   IP^4;
 sbit PT1        =   IP^3;
 sbit PX1        =   IP^2;
 sbit PT0        =   IP^1;
 sbit PX0        =   IP^0;
 sfr IP2         =   0xb5;
 sfr IPH         =   0xb7;
 sfr IP2H        =   0xb6;
 sfr INTCLKO     =   0x8f;
 sfr AUXINTIF    =   0xef;
 
 
 sfr TCON        =   0x88;
 sbit TF1        =   TCON^7;
 sbit TR1        =   TCON^6;
 sbit TF0        =   TCON^5;
 sbit TR0        =   TCON^4;
 sbit IE1        =   TCON^3;
 sbit IT1        =   TCON^2;
 sbit IE0        =   TCON^1;
 sbit IT0        =   TCON^0;
 sfr TMOD        =   0x89;
 sfr TL0         =   0x8a;
 sfr TL1         =   0x8b;
 sfr TH0         =   0x8c;
 sfr TH1         =   0x8d;
 sfr T4T3M       =   0xd1;
 sfr T4H         =   0xd2;
 sfr T4L         =   0xd3;
 sfr T3H         =   0xd4;
 sfr T3L         =   0xd5;
 sfr T2H         =   0xd6;
 sfr T2L         =   0xd7;
 sfr TH4         =   0xd2;
 sfr TL4         =   0xd3;
 sfr TH3         =   0xd4;
 sfr TL3         =   0xd5;
 sfr TH2         =   0xd6;
 sfr TL2         =   0xd7;
 sfr WKTCL       =   0xaa;
 sfr WKTCH       =   0xab;
 sfr WDT_CONTR   =   0xc1;
 
 
 sfr SCON        =   0x98;
 sbit SM0        =   SCON^7;
 sbit SM1        =   SCON^6;
 sbit SM2        =   SCON^5;
 sbit REN        =   SCON^4;
 sbit TB8        =   SCON^3;
 sbit RB8        =   SCON^2;
 sbit TI         =   SCON^1;
 sbit RI         =   SCON^0;
 sfr SBUF        =   0x99;
 sfr S2CON       =   0x9a;
 sfr S2BUF       =   0x9b;
 sfr S3CON       =   0xac;
 sfr S3BUF       =   0xad;
 sfr S4CON       =   0x84;
 sfr S4BUF       =   0x85;
 sfr SADDR       =   0xa9;
 sfr SADEN       =   0xb9;
 
 
 sfr ADC_CONTR   =   0xbc;
 sfr ADC_RES     =   0xbd;
 sfr ADC_RESL    =   0xbe;
 sfr ADCCFG      =   0xde;
 
 
 sfr SPSTAT      =   0xcd;
 sfr SPCTL       =   0xce;
 sfr SPDAT       =   0xcf;
 
 
 sfr IAP_DATA    =   0xc2;
 sfr IAP_ADDRH   =   0xc3;
 sfr IAP_ADDRL   =   0xc4;
 sfr IAP_CMD     =   0xc5;
 sfr IAP_TRIG    =   0xc6;
 sfr IAP_CONTR   =   0xc7;
 sfr ISP_DATA    =   0xc2;
 sfr ISP_ADDRH   =   0xc3;
 sfr ISP_ADDRL   =   0xc4;
 sfr ISP_CMD     =   0xc5;
 sfr ISP_TRIG    =   0xc6;
 sfr ISP_CONTR   =   0xc7;
 
 
 sfr CMPCR1      =   0xe6;
 sfr CMPCR2      =   0xe7;
 
 
 sfr CCON        =   0xd8;
 sbit CF         =   CCON^7;
 sbit CR         =   CCON^6;
 sbit CCF3       =   CCON^3;
 sbit CCF2       =   CCON^2;
 sbit CCF1       =   CCON^1;
 sbit CCF0       =   CCON^0;
 sfr CMOD        =   0xd9;
 sfr CL          =   0xe9;
 sfr CH          =   0xf9;
 sfr CCAPM0      =   0xda;
 sfr CCAPM1      =   0xdb;
 sfr CCAPM2      =   0xdc;
 sfr CCAPM3      =   0xdd;
 sfr CCAP0L      =   0xea;
 sfr CCAP1L      =   0xeb;
 sfr CCAP2L      =   0xec;
 sfr CCAP3L      =   0xed;
 sfr CCAP0H      =   0xfa;
 sfr CCAP1H      =   0xfb;
 sfr CCAP2H      =   0xfc;
 sfr CCAP3H      =   0xfd;
 sfr PCA_PWM0    =   0xf2;
 sfr PCA_PWM1    =   0xf3;
 sfr PCA_PWM2    =   0xf4;
 sfr PCA_PWM3    =   0xf5;
 
 
 sfr PWMCFG      =   0xf1;
 sfr PWMIF       =   0xf6;
 sfr PWMFDCR     =   0xf7;
 sfr PWMCR       =   0xfe;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned char u8;
 typedef char s8;
 typedef unsigned int u16;
 typedef int s16;
 typedef unsigned long u32;
 typedef long s32;
 
 
 
 
 
 
 
#line 4 "mycode\time.h" /0
 
 
 
 
 
 
 
 
 
 void TIM0_Init(void);
 void TIM1_Init(void);
 
 
 
 extern bit f_cmp_10ms;
 extern bit f_screen_10ms;
 extern bit f_10us;
 
 extern u8 screen_pwm_duty;
 extern u8 cmp_pwm_duty;
 
 
#line 1 "mycode\time.c" /0
 
  
#line 1 "mycode\user.h" /0
 
 
 
  
#line 1 "D:\keil\C51\Inc\STC\STC8F.H" /0
 
#line 2 "D:\keil\C51\Inc\STC\STC8F.H" /1
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
  
  
  
  
  
  
  
  
 
 
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 402 "D:\keil\C51\Inc\STC\STC8F.H" /0
 
#line 4 "mycode\user.h" /0
 
  
#line 1 "mycode\time.h" /0
 
#line 2 "mycode\time.h" /1
  
 
  
 
 
 
 
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 5 "mycode\user.h" /0
#line 5 "mycode\user.h" /0
 
 
 
 
 
 
 
 
 
 
 
 extern const char screen_pwm_duty_array[];
 extern s8 cmp_pwm_result;
 extern u8 screen_pwm_duty_limit;
 
 void CLK_Init(void);
 void GPIO_Init(void);
 void COPMPARE_Init(void);
 void cmp_pwm_duty_adjust(void);
 void screen_pwm_duty_adjust(void);
 void pwm_in_duty_detect(void);
 
 
 
 
#line 2 "mycode\time.c" /0
 
 
 
 
 
 
 bit f_cmp_10ms = 0;
 bit f_screen_10ms = 0;
 bit f_10us = 0;
 
 u8 screen_pwm_duty = 50;
 u8 cmp_pwm_duty = 50;
 
 


 
 void screen_pwm_out(void)
 {
 static u8 screen_pwm_cnt = 0;
 
 screen_pwm_cnt++;
 if(screen_pwm_cnt < screen_pwm_duty)
 {
  P11 = 1;
 }
 else if(screen_pwm_cnt < 100)
 {
  P11 = 0;
 }
 else
 {
 screen_pwm_cnt = 0;
 if(screen_pwm_duty)
 {
  P11 = 1;
 }
 }
 }
 


 
 void cmp_pwm_out(void)
 {
 static u8 cmp_pwm_cnt = 0;
 
 cmp_pwm_cnt++;
 if(cmp_pwm_cnt < cmp_pwm_duty)
 {
  P35 = 1;
 
 }
 else if(cmp_pwm_cnt < 100)
 {
  P35 = 0;
 
 }
 else
 {
 cmp_pwm_cnt = 0;
 if(cmp_pwm_duty)
 {
  P35 = 1;
 }
 }
 }
 
 void TM0_Isr() interrupt 1
 {
 cmp_pwm_out();
 screen_pwm_out();
 f_10us = 1;
 }
 
 void TM1_Isr() interrupt 3
 {	
 f_cmp_10ms = 1;	
 f_screen_10ms = 1;
 }
 
 



 
 void TIM0_Init(void)
 {
  (TMOD |= (1<<1)); 
  (TMOD &= (~(1<<0)));	
 TL0 = 0XEC;
 TH0 = 0XEC; 
 TR0 = 1;	
 ET0 = 1;
 EA = 1;
 }
 



 
 void TIM1_Init(void)
 {
 
 
 TL1 = 0xE0; 
 TH1 = 0xB1;
 TR1 = 1;
 ET1 = 1;
 EA = 1;	
 }
 
 
 
 
