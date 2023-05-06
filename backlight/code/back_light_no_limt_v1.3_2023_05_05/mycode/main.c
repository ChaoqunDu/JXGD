#include "user.h"

void main(void)
{
	CLK_Init();
	GPIO_Init();
	UartInit();
	ES = 1;
	TIM0_Init();
	TIM1_Init();
	COPMPARE_Init();

	
	UartSendStr("power_on\r\n");
	while(1)
	{
		cmp_pwm_duty_adjust();		
		//
		screen_pwm_duty_adjust();				
	}
}
