#ifndef _HEB_LEARNING_H_
#define _HEB_LEARNING_H_

#include "common.h"

typedef struct {
  float P_Cacul_Param;//error(k)-error_1;    %P
  float I_Cacul_Param;//error(k);            %I
  float D_Cacul_Param;//error(k)-2*error_1+error_2; %D
}Control_Param;

typedef struct{//定义使用本算法的结构体单元。
  //本Heb 学习算法使用的是增量式PID.
  Control_Param X;

  float xite_P;
  float xite_I;
  float xite_D;

  //Initilizing kp,ki an kd
  float wkp_min;
  float wki_min;
  float wkd_min;
  
  float wkp_1;
  float wki_1;
  float wkd_1;

  float wkp_Now;
  float wki_Now;
  float wkd_Now;

  float error_1;
  float error_2;

  float u_1;
}Node_Struct;
extern Node_Struct Speed_Struct;
extern Node_Struct Left_Mortor;
extern Node_Struct Right_Mortor;
float Heb_learning_Function(Node_Struct* Nude_X,float Set_Target,float InValue_Now,int USE_TYPE,float Act_Time);

#endif


