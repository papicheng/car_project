
#ifndef TIMER_H
#define TIMER_H

#include "common.h"

#define CAR_PLUSE_ONE_METER 29360

#define SerLeftMin 3700
#define SerMid 4600
#define SerRightMax 5500


//pid结构体类型
typedef struct
{
    float P;
    float I;
    float D;
    float Desired;                  
    float Error;
    float PreError;
    float PrePreError;
    float Integer;                 //积分项             
    float iLimit;                  //积分限值
    float Deriv;                   //微分项
    float Output;
 }PID_TypeDef;

void pit_init(void);
void pit0_isr(void);
void QD_init(void);
void Servo_Init(void);
void PID_Init(void);
void DianG_Init(void);
void SetSpeed_Configuration();
void Speed_PID_Cal(float Target,float Measure);
void Middle_Point_Configure(void);
void Advancey_Configure(void);
void Turn_PID_Cal(void);
void A_Speed_PID_Cal(float Target,float Measure);

extern uint8 xbnum;
extern int16 highspeed,lowspeed,turnspeed;
extern int16 speed;
extern int16 SetSpeed;
extern PID_TypeDef Speed_PID;
extern PID_TypeDef Turn_PID;
extern uint8 L_R_judge[50][2];
extern uint8 SetCenterX;
extern uint8 passflag;
extern uint8 Acenter,SetCenterX;
extern float atime;
extern int16 ss;
extern uint16 acce;
extern uint8 count_num;
extern uint8 lph1,lph2,lph3,lph4,lph5,lph6,lph7,rph1,rph2,rph3,rph4,rph5,rph6,rph7;
extern uint8 rol;
extern uint8 car_stop_flag;

#endif