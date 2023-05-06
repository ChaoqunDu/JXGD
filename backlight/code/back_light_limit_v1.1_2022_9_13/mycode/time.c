#include "time.h"


bit f_cmp_10ms = 0;
bit f_screen_10ms = 0;
bit f_10us = 0;
bit f_pwm_in_10ms = 0;


s16 screen_pwm_duty = 80;
s16 cmp_pwm_duty = 80;


/******************************
屏幕背光PWM输出
*******************************/
void screen_pwm_out(void)
{
	static s16 screen_pwm_cnt = 0;
	
	screen_pwm_cnt++;
	
	if(screen_pwm_duty == 0)
	{
		screen_pwm_pin = 0;
	}
	else if(screen_pwm_duty == SCREEN_PWM_CYCLE)
	{
		screen_pwm_pin = 1;
	}
	else
	{
		if(screen_pwm_cnt < screen_pwm_duty)
		{
			screen_pwm_pin = 1;
		}
		else if(screen_pwm_cnt < SCREEN_PWM_CYCLE)
		{
			screen_pwm_pin = 0;
		}
		else
		{
			screen_pwm_cnt = 0;	
			screen_pwm_pin = 1;
		}
	}
}

/******************************
比较器PWM输出
*******************************/
void cmp_pwm_out(void)
{
	static s16 cmp_pwm_cnt = 0;
	
	cmp_pwm_cnt++;
	if(cmp_pwm_duty == 0)
	{
		cmp_pwm_pin = 0;
	}
	else if(cmp_pwm_duty == CMP_PWM_CYCLE)
	{
		cmp_pwm_pin = 1;
	}
	else
	{
		if(cmp_pwm_cnt < cmp_pwm_duty)
		{
			cmp_pwm_pin = 1;		
		}
		else if(cmp_pwm_cnt < CMP_PWM_CYCLE)
		{
			cmp_pwm_pin = 0;			
		}
		else
		{
			cmp_pwm_cnt = 0;
			cmp_pwm_pin = 1;
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
	f_pwm_in_10ms = 1;
}


/******************************
tim0设置为模式2，8位自动重装模式
用于测试输入PWM
*******************************/
void TIM0_Init(void)
{
	set_bit(TMOD,1);//10设置为8位自动重装
	reset_bit(TMOD,0);	
	TL0 = 0XEC;
	TH0 = 0XEC;//配置为10us定时	
	TR0 = 1;	
	ET0 = 1;
	EA = 1;
}

/*******************************
tim1设置为模式0,16位自动装载
用于产生PWM
********************************/
void TIM1_Init(void)
{
	//reset_bit(TMOD,5);
	//reset_bit(TMOD,4);	
	TL1 = 0xE0;//配置为1ms定时
	TH1 = 0xB1;
	TR1 = 1;
	ET1 = 1;
	EA = 1;	
}

