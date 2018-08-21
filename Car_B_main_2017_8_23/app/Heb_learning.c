
#include "Heb_learning.h"
#include "math.h"
#include "timer.h"

////本Heb 学习算法使用的是增量式PID.
//  Control_Param X;
//
//  float xite_P;
//  float xite_I;
//  float xite_D;
//
//  //Initilizing kp,ki an kd
//  float wkp_1;
//  float wki_1;
//  float wkd_1;
//
//  float wkp_Now;
//  float wki_Now;
//  float wkd_Now;
//
//  float error_1;
//  float error_2;
//
//  float u_1;
//  
Node_Struct Left_Mortor={
  {0,0,0},

  3.5,
  2,
  0.3,
  
  //MIN kp,ki an kd
  1,
  1,
  1,
  
  //Initilizing kp,ki an kd
  1.55,
  1,
  1,

  0,
  0,
  0,

  0,
  0,

  0,
};
Node_Struct Right_Mortor={
  //本Heb 学习算法使用的是增量式PID.
  {0,0,0},

  3.5,
  2,
  0.3,

  //MIN kp,ki an kd
  1,
  1,
  1,
  
  //Initilizing kp,ki an kd
  1.55,
  1,
  1,

  0,
  0,
  0,

  0,
  0,
  0,
};

Node_Struct Speed_Struct={
  //本Heb 学习算法使用的是增量式PID.
  {0,0,0},

  3.5,
  2,
  0.3,

  //MIN kp,ki an kd
  1,
  1,
  1,
  
  //Initilizing kp,ki an kd
  1.55,
  1,
  10,

  0,
  0,
  0,

  0,
  0,
  0,
};

/*
**********Heb 单神经元学习算法***************8
****parameter：
Set_Target:设定的目标值
InValue_Now:当前目标的状态。
USE_TYPE:使用学习算法类型。
Act_Time:算法的响应时间。非常重要，需要仔细调节
//返回控制量
*/
float Heb_learning_Function(Node_Struct* Nude_X,float Set_Target,float InValue_Now,int USE_TYPE,float Act_Time)
{
  int M=3;//默认使用第3算法
  float K=Act_Time;
  float error_Now=0,u_Now=0;
  float w11=0,w22=0,w33=0,wadd=1;
  
  error_Now=Set_Target-InValue_Now;
  
  //%Adjusting Weight Value by Heb learning algrithm
  if(USE_TYPE!=M && USE_TYPE<=4 && USE_TYPE>=1)//判断是否更改使用的算法类型
  {
    M=USE_TYPE;
  }
  if(M==1)//   %No Supervised Heb learning algorithm
  {
    Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*Nude_X->u_1*Nude_X->X.P_Cacul_Param;  //%P
    Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*Nude_X->u_1*Nude_X->X.I_Cacul_Param; // %I
    Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*Nude_X->u_1*Nude_X->X.D_Cacul_Param; // %D
  }
  else if(M==2)// %Supervised Dolta learing algorithm
  {
    Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*error_Now*Nude_X->u_1;  //%P
    Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*error_Now*Nude_X->u_1;  //%I
    Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*error_Now*Nude_X->u_1;  //%D
  }
  else if(M==3)// %Supervised Heb learning algorithm
  {
    Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*error_Now*Nude_X->u_1*Nude_X->X.P_Cacul_Param;  //%P
    Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*error_Now*Nude_X->u_1*Nude_X->X.I_Cacul_Param;  //%I
    Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*error_Now*Nude_X->u_1*Nude_X->X.D_Cacul_Param;  //%D
  }
  else if(M==4)//Improved Heb learning algorithm
  {
    Nude_X->wkp_Now=Nude_X->wkp_1+Nude_X->xite_P*error_Now*Nude_X->u_1*(2*error_Now-Nude_X->error_1);  //%P
    Nude_X->wki_Now=Nude_X->wki_1+Nude_X->xite_I*error_Now*Nude_X->u_1*(2*error_Now-Nude_X->error_1);  //%I
    Nude_X->wkd_Now=Nude_X->wkd_1+Nude_X->xite_D*error_Now*Nude_X->u_1*(2*error_Now-Nude_X->error_1);  //%D
  }
  
  Nude_X->wkp_Now=((Nude_X->wkp_Now<Nude_X->wkp_min)?Nude_X->wkp_min:Nude_X->wkp_Now);
  Nude_X->wki_Now=((Nude_X->wki_Now<Nude_X->wki_min)?Nude_X->wki_min:Nude_X->wki_Now);
  Nude_X->wkd_Now=((Nude_X->wkd_Now<Nude_X->wkd_min)?Nude_X->wkd_min:Nude_X->wkd_Now);
  
  Nude_X->X.P_Cacul_Param=error_Now-Nude_X->error_1;    //%P
  Nude_X->X.I_Cacul_Param=error_Now;            //%I
  Nude_X->X.D_Cacul_Param=error_Now-2*Nude_X->error_1+Nude_X->error_2; //%D

  wadd=fabs(Nude_X->wkp_Now)+fabs(Nude_X->wki_Now)+fabs(Nude_X->wkd_Now);
  w11=Nude_X->wkp_Now/wadd;
  w22=Nude_X->wki_Now/wadd;
  w33=Nude_X->wkd_Now/wadd;
  
  
  u_Now=Nude_X->u_1+K*(w11*Nude_X->X.P_Cacul_Param+w22*Nude_X->X.I_Cacul_Param+w33*Nude_X->X.D_Cacul_Param);   //%Control law
  
  if (u_Now>9000)
  {
    u_Now=9000;
  }
  else if (u_Now<-9000)
  {
    u_Now=-9000;
  }
  
  Nude_X->error_2=Nude_X->error_1;
  Nude_X->error_1=error_Now;
  
  Nude_X->u_1=u_Now;
  
  Nude_X->wkp_1=Nude_X->wkp_Now;
  Nude_X->wki_1=Nude_X->wki_Now;
  Nude_X->wkd_1=Nude_X->wkd_Now;
  
  return u_Now;
}


