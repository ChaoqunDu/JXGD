#include "user.h"
#include "stdio.h"


//screen_pwm的极限范围1-100
#define SCREEN_PWM_MIN 1
#define SCREEN_PWM_MAX 30

//cmp_pwm的极限范围0-100
#define CMP_PWM_MIN 0
#define CMP_PWM_MAX 200

s16 cmp_pwm_result = 15;
s16 screen_pwm_duty_limit = 40;

void CLK_Init(void)
{
	set_bit(P_SW2,7);//EAXFR 1:允许访问
	CLKSEL = 0x00;//内部24MHZ的IRC
	CLKDIV = 0;//MCLK/1
	while(!(IRC24MCR&0x01));     //
}

void GPIO_Init(void)
{
	//P10准双向口
//	reset_bit(P1M1,0);
//	reset_bit(P1M0,0);
	//P11强推挽
	reset_bit(P1M1,1);
	set_bit(P1M0,1);
	//P35强推挽
	reset_bit(P3M1,5);
	set_bit(P3M0,5);
}

//比较器初始化
void COPMPARE_Init(void)
{
	CMPCR1 = 0x84;
	CMPCR2 = 0X0F;	
}

bit busy = 0;
char wptr;
char rptr;
char buffer[16];
#define FOSC 24000000UL
#define BRT  (65536-FOSC/115200/4)

void UartIsr() interrupt 4
{
	if(TI)
	{
		TI = 0;
		busy = 0;
	}
	if(RI)
	{
		RI = 0;
		buffer[wptr++] = SBUF;
		wptr &= 0x0f;
	}
}

void UartInit()
{
	SCON = 0x50;
	T2L = BRT;
	T2H = BRT>>8;
	AUXR = 0x15;
	wptr = 0x00;
	rptr = 0x00;
	busy = 0;
	
	
}

void UartSend(char dat)
{
	while(busy);
	busy = 1;
	SBUF = dat;
}

void UartSendStr(char *p)
{
	while(*p)
	{
		UartSend(*p++);
	}
}



//比较器
void cmp_pwm_duty_adjust(void)
{
	u8 i = 0;
	static s16 pwm_duty_array[4] = {0};
	static u8 cmp_cnt = 0;
	static u16 cmp_cnt2 = 0;
	static s16 cmp_pwm_result_temp1 = 0;
	static s16 cmp_pwm_result_temp2 = 0;
	static u8 printf_time = 0;
	

	if(f_cmp_10ms)
	{
		f_cmp_10ms = 0;		

		printf_time++;
		if(printf_time >= 50)
		{
			printf_time = 0;
			
			UartSendStr("heart_500ms\r\n");
			printf("cmp_pwm_duty = %d\r\n",cmp_pwm_duty);
			printf("screen_pwm_duty = %d\r\n",screen_pwm_duty);
		}
		
		if(CMPCR1 & 0x01)
		{	
			if(cmp_pwm_duty < CMP_PWM_MAX)
			{
				cmp_pwm_duty += 1;
			}
		}
		else
		{
			if(cmp_pwm_duty > CMP_PWM_MIN)
			{
				cmp_pwm_duty -= 1;
			}
		}

		
		pwm_duty_array[cmp_cnt] = cmp_pwm_duty;
		cmp_cnt++;
		if(cmp_cnt >= 4)
		{
			cmp_cnt = 0;
			cmp_pwm_result_temp1 = 0;
			for(i = 0;i < 4;i++)
			{
				cmp_pwm_result_temp1 += pwm_duty_array[i];
			}
			cmp_pwm_result_temp1 /= 4;
		}					
		
		
		if((cmp_pwm_result_temp1 < cmp_pwm_result_temp2 - 1) || (cmp_pwm_result_temp1 > cmp_pwm_result_temp2 + 1))
		{
			cmp_cnt2++;
			if(cmp_cnt2 >= 500)
			{
				cmp_cnt2 = 0;
				
					
				if(cmp_pwm_result_temp1 <= 10)
				{
					cmp_pwm_result = 200 - (unsigned int)cmp_pwm_result_temp1 * 17;
					cmp_pwm_result_temp2 = cmp_pwm_result_temp1;
				}
				else
				{
					cmp_pwm_result = SCREEN_PWM_MAX - (unsigned int)cmp_pwm_result_temp1 * SCREEN_PWM_MAX/200;
					cmp_pwm_result_temp2 = cmp_pwm_result_temp1;
				}	
				

			}				
		}
		else	
		{
			cmp_cnt2 = 0;
		}			
	}
}

//屏幕亮度调节
void screen_pwm_duty_adjust(void)
{	
	static u8 screen_t1 = 0;
	if(f_screen_10ms)
	{
		f_screen_10ms = 0;
		screen_t1++;
		if(screen_t1 >= 3)
		{
			screen_t1 = 0;	
			//30ms
//			if(cmp_pwm_result > SCREEN_PWM_MAX)
//			{
//				cmp_pwm_result = SCREEN_PWM_MAX;
//			}
//			else if(cmp_pwm_result < SCREEN_PWM_MIN)
//			{
//				cmp_pwm_result = SCREEN_PWM_MIN;
//			}		
			
			if(screen_pwm_duty < cmp_pwm_result)
			{
				screen_pwm_duty++;
			}
			else if(screen_pwm_duty > cmp_pwm_result)
			{									
				screen_pwm_duty--;			
			}				
		}
	}
}



				


