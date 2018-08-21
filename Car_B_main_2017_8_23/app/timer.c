  
#include "common.h"
#include "timer.h"
#include "camera_test.h"
#include "infrared.h"
#include "Freecars.h"
#include "math.h"
#include "Heb_learning.h"
#include "botton.h"

extern uint8 code_switch;  

PID_TypeDef Turn_PID,Turn_close_PID,Speed_PID;

short qd_result;
int16 speed;
uint8 car_stop_flag=0; //调参数时停车标志
int16 highspeed=400,lowspeed=250,turnspeed=200;
int16 SetSpeed=0;
uint8 SetCenterX=85;//用于偏航
uint8 Acenter=85;  //实际中心
uint8 lph1=85,lph2=85,lph3=85,lph4=85,lph5=85,lph6=85,lph7=85,rph1=85,rph2=85,rph3=85,rph4=85,rph5=85,rph6=85,rph7=85;
uint8 L_R_judge[50][2];

//第一位表示当车靠近信标后左偏航(1)还是右偏航(0)
//第二位表示信标熄灭并且看不到下一个信标时左转(1)还是右转(0)  直行是2

float atime=100;  //PID控制
uint8 xbnum;
int16 s5[10]={0};  //高速判定数组
int8 i=0;  //用于采集10次舵机打角 
int16 ss,dc_judge=30;   //高速判定数组均值  倒车控制
uint8 sflag,rol=1,passflag;  //rol为1,右偏航,为0,左偏航
uint16 acce=70,stop=300; //高速阈值 停车标志
uint32 turn_little[2],turn_large[2];//0左 1右 避障打角
uint8 lr_lock;//首次看到灯的位置决定偏航方向
uint8 zero_lock1,zero_lock2;//锁定，持续设定速度为低速，用于减速
uint8 ph_lock1,ph_lock2;
uint8 bz_flag;//避障标志
uint8 del; //避障偏航解锁延时去抖
uint8 bz_end=12;  //y坐标
uint8 brake_start=50; //y坐标
int16 bz_speed=200;

/*----------------PID初始化-----------------*/
void PID_Init(void)
{  
  Turn_PID.P=15;    //15      //转向的PID
  Turn_PID.I=0;
  Turn_PID.D=20;       //5 
  Turn_PID.iLimit=0;
  
  Turn_close_PID.P=10;           //10       //转向的PID
  Turn_close_PID.I=0;
  Turn_close_PID.D=10;       //10 
  Turn_close_PID.iLimit=0;
  
  Speed_PID.P=90;//50  90             //速度PID
  Speed_PID.I=10;//10
  Speed_PID.D=1;//1 2
  Speed_PID.Desired=0;                  
  Speed_PID.Error=0;
  Speed_PID.PreError=0;
  Speed_PID.PrePreError=0;
  Speed_PID.Integer=0;                 //积分项             
  Speed_PID.iLimit=0;                  //积分限值
  Speed_PID.Deriv=0;                   //微分项
  Speed_PID.Output=0;
  Speed_PID.iLimit=3000;
}

void pit_init(void)
{
  static PIT_InitTypeDef pit0_init_struct; //10ms定时中断
  pit0_init_struct.PIT_Pitx = PIT0;
  pit0_init_struct.PIT_PeriodMs =10;     //
  pit0_init_struct.PIT_Isr = pit0_isr;   //设置中断函数
  LPLD_PIT_Init(pit0_init_struct);  
  disable_irq(PIT0_IRQn);
}


void pit0_isr(void)  
{
  Calculate_Middle_Point();//信标中点计算
  /*------------------转向部分---------------------------------*/
  if(lr_lock==0 && !NOpoint && bz_flag==0)  //无图后第一次看到信标或者避障后偏航方向设定
  {
    lr_lock=1;//锁定偏航方向
    if(real_pointx>Acenter)
      rol=0;  //左偏航
    else
      rol=1; //右偏航
  }
  Middle_Point_Configure();  //偏航中点设定
  Turn_PID_Cal();//转向PID计算,得到Turn_PID.Output
  /*
  //避障打角设定
  turn_little[0]=(uint32)Turn_PID.Output-300;  
  turn_little[1]=(uint32)Turn_PID.Output+300;
  turn_large[0]=(uint32)Turn_PID.Output-500;
  turn_large[1]=(uint32)Turn_PID.Output+500;
  //限幅
  turn_little[0]=(turn_little[0]<SerLeftMin)?SerLeftMin:turn_little[0];
  turn_little[1]=(turn_little[1]>SerRightMax)?SerRightMax:turn_little[1];
  turn_large[0]=(turn_large[0]<SerLeftMin)?SerLeftMin:turn_large[0];
  turn_large[1]=(turn_large[1]>SerRightMax)?SerRightMax:turn_large[1];
  */
  turn_little[0]=SerMid-300;  
  turn_little[1]=SerMid+300;
  turn_large[0]=SerMid-500;
  turn_large[1]=SerMid+500; 
  
  //转向输出
  if(dc_judge<0 && dc_judge>-40 && code_switch==16) //倒车方向控制（竞赛），优先级最高
    LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin);
  
  else if(!NOpoint)  //有图转向输出
  {
    stop=300; //3s停车变量复位
    if(real_pointy < bz_end )  //避障范围避障转向输出
    {
      //远避障小打角
      if( PTE27_I == 1)//左障碍   E27-----A15A
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_little[1] ); 
      else if(PTE28_I==1)//右障碍   E28-----A14A
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_little[0] );
      //近避障大打角
      else if(PTD8_I == 1 )//左障碍
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_large[1] );
      else if(PTD9_I == 1 )//右障碍
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_large[0] );
      else
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,(uint32)Turn_PID.Output );//转向控制
    } 
    else  
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,(uint32)Turn_PID.Output );//有图无障碍向灯偏航行驶 
  }
  
  else if(NOpoint && move_flag)//看不到图并且已经发车时转向输出
  {
    zero_lock1=0; //无图解除低速锁定
    zero_lock2=0; //无图解除低速锁定
    lr_lock=0;   //偏航设定解锁
    ph_lock1=0;
    ph_lock2=0;
    if(code_switch==16)  //竞赛
    {
      if(stop--==0)  //已发车并一定时间无图 停车
        car_stop_flag=1;  //此标志设定速度为0，且优先级最高
    }
    /*
    //无图避障
    //远障碍
    if(PTE27_I == 1 )
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerRightMax );//左障碍
    else if(PTE28_I==1)
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin );//右障碍
    //近障碍
    else if(PTD8_I==1)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM1,  FTM_Ch0,SerRightMax );//左障碍
      LPLD_LPTMR_DelayMs( 100 );
    }
    else if(PTD9_I==1)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM1,  FTM_Ch0,SerLeftMin );//右障碍
      
      LPLD_LPTMR_DelayMs(100 );  //保持转向100ms
    }
    else   */
      if(rol==1)
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin);//左转
      else
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerRightMax);//右转
  }
  /*---------------------------------------------------*/
  
  /*-------------------速度部分------------------------------*/
  s5[i++]=(real_pointx-SetCenterX)*(real_pointx-SetCenterX);
  if(i>=10) i=0;  //采集10次舵机打角
  ss=(s5[0]+s5[1]+s5[2]+s5[3]+s5[4]+s5[5]+s5[6]+s5[7]+s5[8]+s5[9])/10;  //反应车身平稳性
  
  qd_result = -LPLD_FTM_GetCounter(FTM2);//10毫秒的脉冲数
  LPLD_FTM_ClearCounter(FTM2);                //清空计数器
  speed = qd_result*100*100/ CAR_PLUSE_ONE_METER;//速度计算cm/s
  
  SetSpeed_Configuration();//根据不同情况进行速度设定
  //pid计算
  Speed_PID_Cal(SetSpeed,speed);  
  //Speed_PID.Output=Heb_learning_Function(&Speed_Struct,SetSpeed,speed,4,atime );
  //A_Speed_PID_Cal(SetSpeed,speed);  //增量PID
  
  if(move_flag)//发车，电机输出
  {
    if (Speed_PID.Output>=0)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,(uint32)Speed_PID.Output);
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
    }
    else //电机反转
    { 
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,(uint32)(-Speed_PID.Output));
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
    }
  }
  else  //正在发车，电机输出0
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
  } 
  
  
}


void SetSpeed_Configuration()//速度配置
{ 
  /*------------速度控制主要部分---------------*/
  if(NOpoint) //看不到图像，设定低速，不进行高速锁定
  {
    SetSpeed=turnspeed;  
    sflag=0;  //解锁标志
  }
  else   
  {
    if(sflag==0)//有图像，未高速锁定
    {
      if(ss<acce)  //车身平稳性判定
      {
        SetSpeed=highspeed;
        sflag=1;//锁定标志
      }
      else 
        SetSpeed=lowspeed;
    }
    
    if(sflag==1)  //有图像，高速锁定
      SetSpeed=highspeed;
  }
  /*-------------------------------------*/
  
  //后续设定可以覆盖前面设定，越往后，优先级越高
   
  if(real_pointy>=brake_start && !NOpoint)  //靠近灯减速,此段放在后面，可覆盖前面速度设定
  {
    if((speed>420)|| zero_lock1==1)  
    {
      zero_lock1=1;  //置1，持续设定0速，直到无图置0
      SetSpeed=150;
    }
    else if((speed>380) || zero_lock2==1)
    {
      zero_lock2=1;  //置1，持续设定0速，直到无图置0
      SetSpeed=200;
    }
    else
      SetSpeed=lowspeed; 
  }
  /* 
  if(real_pointy>=50 && !NOpoint)  //靠近灯减速,此段放在后面，可覆盖前面速度设定
  {
    if(speed>lowspeed+50)  
      SetSpeed=-lowspeed;
    else
      SetSpeed=lowspeed; 
  }
   */
  //避障速度控制
  if(real_pointy <= bz_end && NOpoint==0)//有图避障范围
  {
    if(PTE27_I==1||PTE28_I==1||PTD9_I==1||PTD9_I==1)
    {
      BUZZER_ON;
      SetSpeed=bz_speed;//避障低速
      sflag=0;//解锁高速锁定
      if(del++>=5)  //延时去抖
      {
        bz_flag=1;//立避障标志
        lr_lock=0;//解锁偏航设定
      }
    }
    else
    {
      del=0;
      bz_flag=0;  //清避障标志
      BUZZER_OFF;
    }
  }
  else
  {
    del=0;
    bz_flag=0;  //清避障标志
    BUZZER_OFF;
  }
  
  if(code_switch==16 && move_flag)// 竞赛，倒车  
  {
    if(speed<10)//倒车速度控制，因放在速度设定之后，如果满足条件，覆盖之前速度设定
    {
      dc_judge--;
      if(dc_judge<0 && dc_judge>-40 )  //300ms车轮持续不转则设定反转，反转时间为300ms
        SetSpeed=-lowspeed;
      else 
        SetSpeed=lowspeed;
    }
    else
      dc_judge=30;  //检测时间为300ms
  }
  
  //if(car_stop_flag==1) //在线调参数时,或者3s看不到图时的停车标志，放在最后
    //SetSpeed=0;
    
}

/*-------------------靠右靠左中点校正---------------*/
void Middle_Point_Configure( void )  
{
  
  if(real_pointy>10) //到阈值(靠近信标),偏航
  {
    if((speed>400 && ph_lock2!=1)|| ph_lock1==1)
    {
      ph_lock1=1;         //偏航锁定
      if(real_pointy<15)//rol判断左右
        if (rol==1) SetCenterX=rph1-2; // 82 
        else SetCenterX=lph1+2;      //92
        
      else if(real_pointy>=15&&real_pointy<20)
        if (rol==1) SetCenterX=rph2-2;// 79 
        else SetCenterX=lph2+2;     //95
        
      else if(real_pointy>=20&&real_pointy<30)
        if (rol==1) SetCenterX=rph3-2;// 75
        else SetCenterX=lph3+2;   //100
        
      else if(real_pointy>=30&&real_pointy<40)
        if (rol==1)  SetCenterX=rph4-2;// 70 
        else SetCenterX=lph4+2;  //103
        
      else if(real_pointy>=40&&real_pointy<50)
        if (rol==1) SetCenterX=rph5-2;// 65
        else SetCenterX=lph5+2;    //105
        
      else if(real_pointy>=50&&real_pointy<70)
        if (rol==1) SetCenterX=rph6-2;// 60 
        else SetCenterX=lph6+2;      //110
        
      else if(real_pointy>=70  )
        if (rol==1) SetCenterX=rph7-2;// 55 
        else SetCenterX=lph7+2;    //115
    }
    else if((speed<=400 &&  ph_lock1!=1) || ph_lock2==1)
    {
      ph_lock2=1;         //偏航锁定
      if(real_pointy<15)//rol判断左右
        if (rol==1) SetCenterX=rph1; // 82 
        else SetCenterX=lph1;      //92
        
      else if(real_pointy>=15&&real_pointy<20)
        if (rol==1) SetCenterX=rph2;// 79 
        else SetCenterX=lph2;     //95
        
      else if(real_pointy>=20&&real_pointy<30)
        if (rol==1) SetCenterX=rph3;// 75
        else SetCenterX=lph3;   //100
        
      else if(real_pointy>=30&&real_pointy<40)
        if (rol==1)  SetCenterX=rph4;// 70 
        else SetCenterX=lph4;  //103
        
      else if(real_pointy>=40&&real_pointy<50)
        if (rol==1) SetCenterX=rph5;// 65
        else SetCenterX=lph5;    //105
        
      else if(real_pointy>=50&&real_pointy<70)
        if (rol==1) SetCenterX=rph6;// 60 
        else SetCenterX=lph6;      //110
        
      else if(real_pointy>=70  )
        if (rol==1) SetCenterX=rph7;// 55 
        else SetCenterX=lph7;    //115
    }
    else
    {
      if(real_pointy<15)//rol判断左右
        if (rol==1) SetCenterX=rph1; // 82 
        else SetCenterX=lph1;      //92
        
      else if(real_pointy>=15&&real_pointy<20)
        if (rol==1) SetCenterX=rph2;// 79 
        else SetCenterX=lph2;     //95
        
      else if(real_pointy>=20&&real_pointy<30)
        if (rol==1) SetCenterX=rph3;// 75
        else SetCenterX=lph3;   //100
        
      else if(real_pointy>=30&&real_pointy<40)
        if (rol==1)  SetCenterX=rph4;// 70 
        else SetCenterX=lph4;  //103
        
      else if(real_pointy>=40&&real_pointy<50)
        if (rol==1) SetCenterX=rph5;// 65
        else SetCenterX=lph5;    //105
        
      else if(real_pointy>=50&&real_pointy<70)
        if (rol==1) SetCenterX=rph6;// 60 
        else SetCenterX=lph6;      //110
        
      else if(real_pointy>=70  )
        if (rol==1) SetCenterX=rph7;// 55 
        else SetCenterX=lph7;    //115
    }
  }
  else   
  {
    SetCenterX=Acenter; //对中
  }
}


void Speed_PID_Cal(float Target,float Measure)
{
  
  Speed_PID.Error=Target-Measure;   //误差=期望值-测量值,可能为负数
  if(Speed_PID.Error>=Target-20)          //???
    Speed_PID.Integer=Speed_PID.Integer/2;
  
  if(Speed_PID.Integer<0)
    Speed_PID.Integer=0;
  else if(Speed_PID.I*Speed_PID.Integer>=Speed_PID.iLimit)
    Speed_PID.Integer=Speed_PID.iLimit/Speed_PID.I;
  Speed_PID.Integer+=Speed_PID.Error;//积分
  Speed_PID.Deriv=Speed_PID.Error-Speed_PID.PreError;//微分     
  Speed_PID.Output=Speed_PID.P*Speed_PID.Error+Speed_PID.I*Speed_PID.Integer+Speed_PID.D*Speed_PID.Deriv;
  Speed_PID.PreError=Speed_PID.Error; 
  //限幅
  if (Speed_PID.Output >= 9990 )
    Speed_PID.Output=9990;
  if (Speed_PID.Output <= -9990 )
    Speed_PID.Output=-9990; 
  
  
  
}

void A_Speed_PID_Cal(float Target,float Measure)
{
  Speed_PID.Error=Target-Measure;
  Speed_PID.Output=Speed_PID.Output+Speed_PID.P*(Speed_PID.Error-Speed_PID.PreError)+Speed_PID.I*Speed_PID.Error+Speed_PID.D*(Speed_PID.Error-2*Speed_PID.PreError+Speed_PID.PrePreError);
  if (Speed_PID.Output >= 9990 )
     Speed_PID.Output=9990;
   if (Speed_PID.Output <= -9990 )
     Speed_PID.Output=-9990; 
  Speed_PID.PrePreError=Speed_PID.PreError;
  Speed_PID.PreError=Speed_PID.Error;
  
}
void Turn_PID_Cal(void)
{ 
  Turn_PID.Error=real_pointx-SetCenterX;  //测量值减设定值 
  Turn_PID.Deriv=Turn_PID.Error-Turn_PID.PreError; 
  if(Turn_PID.Error>=15||Turn_PID.Error<=-15)
    Turn_PID.Output=Turn_close_PID.P*(Turn_PID.Error)+Turn_PID.Deriv*Turn_close_PID.D+SerMid;//Turn_PID
  else
    Turn_PID.Output=Turn_PID.P*(Turn_PID.Error)+Turn_PID.Deriv*Turn_PID.D+SerMid;//Turn_close_PID
  if (Turn_PID.Output>SerRightMax)//转角限幅
    Turn_PID.Output=SerRightMax;
  else if (Turn_PID.Output<SerLeftMin)
    Turn_PID.Output=SerLeftMin;
  
  Turn_PID.PreError=Turn_PID.Error;
}
void QD_init(void)
{
  static GPIO_InitTypeDef encoder_init_struct;
  encoder_init_struct.GPIO_PTx = PTB;
  encoder_init_struct.GPIO_Pins = GPIO_Pin18|GPIO_Pin19;
  encoder_init_struct.GPIO_Dir = DIR_INPUT;        //输入
  encoder_init_struct.GPIO_PinControl = INPUT_PULL_UP;
  LPLD_GPIO_Init(encoder_init_struct);
  
  static FTM_InitTypeDef ftm_init_struct;
  ftm_init_struct.FTM_Ftmx = FTM2;              //只有FTM1和FTM2有正交解码功能
  ftm_init_struct.FTM_Mode = FTM_MODE_QD;       //正交解码功能
  ftm_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB相输入模式
  //初始化FTM
  LPLD_FTM_Init(ftm_init_struct);
  //使能AB相输入通道
  //PTB18引脚接A相输入、PTB19引脚接B相输入
  LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);  
  
}

void Servo_Init( void )
{
  static FTM_InitTypeDef ftm_init_struct;
  ftm_init_struct.FTM_Ftmx = FTM1;	//使能FTM1通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 300;	//PWM频率300Hz
  LPLD_FTM_Init(ftm_init_struct);
  LPLD_FTM_PWM_Enable(FTM1, //使用FTM1
                      FTM_Ch0, //使能Ch0通道
                      SerMid, //初始化角度0度    ,3600,2850,4350
                      PTA8, 
                      ALIGN_LEFT);   //脉宽左对齐                        
}
/*------------------初始化电机引脚------------------*/
void DianG_Init(void)
{
  static  FTM_InitTypeDef FTM_Init;
  FTM_Init.FTM_Ftmx=FTM0;
  FTM_Init.FTM_Mode=FTM_MODE_PWM;
  FTM_Init.FTM_PwmFreq=20000;
 
  FTM_Init.FTM_PwmDeadtimeVal=8;//电机频率20K 周期50us  取百分之5的死区 5*0.3/50=5%
  FTM_Init.FTM_PwmDeadtimeCfg=DEADTIME_CH45;
  FTM_Init.FTM_PwmDeadtimeDiv=DEADTIME_DIV16;//总线50M/16=3M  周期0.3us
  
  LPLD_FTM_Init(FTM_Init);          //使能PWM
  LPLD_FTM_PWM_Enable(FTM0,FTM_Ch4,0,PTD4,ALIGN_LEFT);       
  LPLD_FTM_PWM_Enable(FTM0,FTM_Ch5,0,PTD5,ALIGN_LEFT);
  
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);//未启动，输出0
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
  
}