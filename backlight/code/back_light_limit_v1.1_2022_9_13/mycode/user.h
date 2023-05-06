#ifndef _USER_H
#define _USER_H

#include "STC8F.H"
#include "time.h"

extern const char screen_pwm_duty_array[];
extern s16 cmp_pwm_result;
extern s16 screen_pwm_duty_limit;

void CLK_Init(void);
void GPIO_Init(void);
void COPMPARE_Init(void);
void cmp_pwm_duty_adjust(void);
void screen_pwm_duty_adjust(void);
void pwm_in_duty_detect(void);



#endif
