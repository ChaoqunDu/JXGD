#include "time.h"


bit f_cmp_10ms = 0;
bit f_screen_10ms = 0;
bit f_10us = 0;
bit f_pwm_in_10ms = 0;


s16 screen_pwm_duty = 80;
s16 cmp_pwm_duty = 80;


/******************************
��Ļ����PWM���
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
�Ƚ���PWM���
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
tim0����Ϊģʽ2��8λ�Զ���װģʽ
���ڲ�������PWM
*******************************/
void TIM0_Init(void)
{
	set_bit(TMOD,1);//10����Ϊ8λ�Զ���װ
	reset_bit(TMOD,0);	
	TL0 = 0XEC;
	TH0 = 0XEC;//����Ϊ10us��ʱ	
	TR0 = 1;	
	ET0 = 1;
	EA = 1;
}

/*******************************
tim1����Ϊģʽ0,16λ�Զ�װ��
���ڲ���PWM
********************************/
void TIM1_Init(void)
{
	//reset_bit(TMOD,5);
	//reset_bit(TMOD,4);	
	TL1 = 0xE0;//����Ϊ1ms��ʱ
	TH1 = 0xB1;
	TR1 = 1;
	ET1 = 1;
	EA = 1;	
}

