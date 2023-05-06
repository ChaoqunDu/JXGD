#ifndef _TIME_H
#define _TIME_H

#include "STC8F.H"

#define SCREEN_PWM_CYCLE 80
#define CMP_PWM_CYCLE    80

#define screen_pwm_pin P11
#define cmp_pwm_pin P35


void TIM0_Init(void);
void TIM1_Init(void);



extern bit f_cmp_10ms;
extern bit f_screen_10ms;
extern bit f_10us;
extern bit f_pwm_in_10ms;

extern s16 screen_pwm_duty;
extern s16 cmp_pwm_duty;

#endif
