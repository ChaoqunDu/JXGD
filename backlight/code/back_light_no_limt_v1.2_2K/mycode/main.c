#include "user.h"

void main(void)
{
	CLK_Init();
	GPIO_Init();
	TIM0_Init();
	TIM1_Init();
	COPMPARE_Init();
	while(1)
	{
		cmp_pwm_duty_adjust();		
		screen_pwm_duty_adjust();				
	}
}
