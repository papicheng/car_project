  
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
uint8 car_stop_flag=0; //������ʱͣ����־
int16 highspeed=400,lowspeed=250,turnspeed=200;
int16 SetSpeed=0;
uint8 SetCenterX=85;//����ƫ��
uint8 Acenter=85;  //ʵ������
uint8 lph1=85,lph2=85,lph3=85,lph4=85,lph5=85,lph6=85,lph7=85,rph1=85,rph2=85,rph3=85,rph4=85,rph5=85,rph6=85,rph7=85;
uint8 L_R_judge[50][2];

//��һλ��ʾ���������ű����ƫ��(1)������ƫ��(0)
//�ڶ�λ��ʾ�ű�Ϩ���ҿ�������һ���ű�ʱ��ת(1)������ת(0)  ֱ����2

float atime=100;  //PID����
uint8 xbnum;
int16 s5[10]={0};  //�����ж�����
int8 i=0;  //���ڲɼ�10�ζ����� 
int16 ss,dc_judge=30;   //�����ж������ֵ  ��������
uint8 sflag,rol=1,passflag;  //rolΪ1,��ƫ��,Ϊ0,��ƫ��
uint16 acce=70,stop=300; //������ֵ ͣ����־
uint32 turn_little[2],turn_large[2];//0�� 1�� ���ϴ��
uint8 lr_lock;//�״ο����Ƶ�λ�þ���ƫ������
uint8 zero_lock1,zero_lock2;//�����������趨�ٶ�Ϊ���٣����ڼ���
uint8 ph_lock1,ph_lock2;
uint8 bz_flag;//���ϱ�־
uint8 del; //����ƫ��������ʱȥ��
uint8 bz_end=12;  //y����
uint8 brake_start=50; //y����
int16 bz_speed=200;

/*----------------PID��ʼ��-----------------*/
void PID_Init(void)
{  
  Turn_PID.P=15;    //15      //ת���PID
  Turn_PID.I=0;
  Turn_PID.D=20;       //5 
  Turn_PID.iLimit=0;
  
  Turn_close_PID.P=10;           //10       //ת���PID
  Turn_close_PID.I=0;
  Turn_close_PID.D=10;       //10 
  Turn_close_PID.iLimit=0;
  
  Speed_PID.P=90;//50  90             //�ٶ�PID
  Speed_PID.I=10;//10
  Speed_PID.D=1;//1 2
  Speed_PID.Desired=0;                  
  Speed_PID.Error=0;
  Speed_PID.PreError=0;
  Speed_PID.PrePreError=0;
  Speed_PID.Integer=0;                 //������             
  Speed_PID.iLimit=0;                  //������ֵ
  Speed_PID.Deriv=0;                   //΢����
  Speed_PID.Output=0;
  Speed_PID.iLimit=3000;
}

void pit_init(void)
{
  static PIT_InitTypeDef pit0_init_struct; //10ms��ʱ�ж�
  pit0_init_struct.PIT_Pitx = PIT0;
  pit0_init_struct.PIT_PeriodMs =10;     //
  pit0_init_struct.PIT_Isr = pit0_isr;   //�����жϺ���
  LPLD_PIT_Init(pit0_init_struct);  
  disable_irq(PIT0_IRQn);
}


void pit0_isr(void)  
{
  Calculate_Middle_Point();//�ű��е����
  /*------------------ת�򲿷�---------------------------------*/
  if(lr_lock==0 && !NOpoint && bz_flag==0)  //��ͼ���һ�ο����ű���߱��Ϻ�ƫ�������趨
  {
    lr_lock=1;//����ƫ������
    if(real_pointx>Acenter)
      rol=0;  //��ƫ��
    else
      rol=1; //��ƫ��
  }
  Middle_Point_Configure();  //ƫ���е��趨
  Turn_PID_Cal();//ת��PID����,�õ�Turn_PID.Output
  /*
  //���ϴ���趨
  turn_little[0]=(uint32)Turn_PID.Output-300;  
  turn_little[1]=(uint32)Turn_PID.Output+300;
  turn_large[0]=(uint32)Turn_PID.Output-500;
  turn_large[1]=(uint32)Turn_PID.Output+500;
  //�޷�
  turn_little[0]=(turn_little[0]<SerLeftMin)?SerLeftMin:turn_little[0];
  turn_little[1]=(turn_little[1]>SerRightMax)?SerRightMax:turn_little[1];
  turn_large[0]=(turn_large[0]<SerLeftMin)?SerLeftMin:turn_large[0];
  turn_large[1]=(turn_large[1]>SerRightMax)?SerRightMax:turn_large[1];
  */
  turn_little[0]=SerMid-300;  
  turn_little[1]=SerMid+300;
  turn_large[0]=SerMid-500;
  turn_large[1]=SerMid+500; 
  
  //ת�����
  if(dc_judge<0 && dc_judge>-40 && code_switch==16) //����������ƣ������������ȼ����
    LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin);
  
  else if(!NOpoint)  //��ͼת�����
  {
    stop=300; //3sͣ��������λ
    if(real_pointy < bz_end )  //���Ϸ�Χ����ת�����
    {
      //Զ����С���
      if( PTE27_I == 1)//���ϰ�   E27-----A15A
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_little[1] ); 
      else if(PTE28_I==1)//���ϰ�   E28-----A14A
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_little[0] );
      //�����ϴ���
      else if(PTD8_I == 1 )//���ϰ�
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_large[1] );
      else if(PTD9_I == 1 )//���ϰ�
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,turn_large[0] );
      else
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,(uint32)Turn_PID.Output );//ת�����
    } 
    else  
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,(uint32)Turn_PID.Output );//��ͼ���ϰ����ƫ����ʻ 
  }
  
  else if(NOpoint && move_flag)//������ͼ�����Ѿ�����ʱת�����
  {
    zero_lock1=0; //��ͼ�����������
    zero_lock2=0; //��ͼ�����������
    lr_lock=0;   //ƫ���趨����
    ph_lock1=0;
    ph_lock2=0;
    if(code_switch==16)  //����
    {
      if(stop--==0)  //�ѷ�����һ��ʱ����ͼ ͣ��
        car_stop_flag=1;  //�˱�־�趨�ٶ�Ϊ0�������ȼ����
    }
    /*
    //��ͼ����
    //Զ�ϰ�
    if(PTE27_I == 1 )
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerRightMax );//���ϰ�
    else if(PTE28_I==1)
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin );//���ϰ�
    //���ϰ�
    else if(PTD8_I==1)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM1,  FTM_Ch0,SerRightMax );//���ϰ�
      LPLD_LPTMR_DelayMs( 100 );
    }
    else if(PTD9_I==1)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM1,  FTM_Ch0,SerLeftMin );//���ϰ�
      
      LPLD_LPTMR_DelayMs(100 );  //����ת��100ms
    }
    else   */
      if(rol==1)
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerLeftMin);//��ת
      else
        LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0,SerRightMax);//��ת
  }
  /*---------------------------------------------------*/
  
  /*-------------------�ٶȲ���------------------------------*/
  s5[i++]=(real_pointx-SetCenterX)*(real_pointx-SetCenterX);
  if(i>=10) i=0;  //�ɼ�10�ζ�����
  ss=(s5[0]+s5[1]+s5[2]+s5[3]+s5[4]+s5[5]+s5[6]+s5[7]+s5[8]+s5[9])/10;  //��Ӧ����ƽ����
  
  qd_result = -LPLD_FTM_GetCounter(FTM2);//10�����������
  LPLD_FTM_ClearCounter(FTM2);                //��ռ�����
  speed = qd_result*100*100/ CAR_PLUSE_ONE_METER;//�ٶȼ���cm/s
  
  SetSpeed_Configuration();//���ݲ�ͬ��������ٶ��趨
  //pid����
  Speed_PID_Cal(SetSpeed,speed);  
  //Speed_PID.Output=Heb_learning_Function(&Speed_Struct,SetSpeed,speed,4,atime );
  //A_Speed_PID_Cal(SetSpeed,speed);  //����PID
  
  if(move_flag)//������������
  {
    if (Speed_PID.Output>=0)
    {
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,(uint32)Speed_PID.Output);
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
    }
    else //�����ת
    { 
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,(uint32)(-Speed_PID.Output));
      LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
    }
  }
  else  //���ڷ�����������0
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
    LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);
  } 
  
  
}


void SetSpeed_Configuration()//�ٶ�����
{ 
  /*------------�ٶȿ�����Ҫ����---------------*/
  if(NOpoint) //������ͼ���趨���٣������и�������
  {
    SetSpeed=turnspeed;  
    sflag=0;  //������־
  }
  else   
  {
    if(sflag==0)//��ͼ��δ��������
    {
      if(ss<acce)  //����ƽ�����ж�
      {
        SetSpeed=highspeed;
        sflag=1;//������־
      }
      else 
        SetSpeed=lowspeed;
    }
    
    if(sflag==1)  //��ͼ�񣬸�������
      SetSpeed=highspeed;
  }
  /*-------------------------------------*/
  
  //�����趨���Ը���ǰ���趨��Խ�������ȼ�Խ��
   
  if(real_pointy>=brake_start && !NOpoint)  //�����Ƽ���,�˶η��ں��棬�ɸ���ǰ���ٶ��趨
  {
    if((speed>420)|| zero_lock1==1)  
    {
      zero_lock1=1;  //��1�������趨0�٣�ֱ����ͼ��0
      SetSpeed=150;
    }
    else if((speed>380) || zero_lock2==1)
    {
      zero_lock2=1;  //��1�������趨0�٣�ֱ����ͼ��0
      SetSpeed=200;
    }
    else
      SetSpeed=lowspeed; 
  }
  /* 
  if(real_pointy>=50 && !NOpoint)  //�����Ƽ���,�˶η��ں��棬�ɸ���ǰ���ٶ��趨
  {
    if(speed>lowspeed+50)  
      SetSpeed=-lowspeed;
    else
      SetSpeed=lowspeed; 
  }
   */
  //�����ٶȿ���
  if(real_pointy <= bz_end && NOpoint==0)//��ͼ���Ϸ�Χ
  {
    if(PTE27_I==1||PTE28_I==1||PTD9_I==1||PTD9_I==1)
    {
      BUZZER_ON;
      SetSpeed=bz_speed;//���ϵ���
      sflag=0;//������������
      if(del++>=5)  //��ʱȥ��
      {
        bz_flag=1;//�����ϱ�־
        lr_lock=0;//����ƫ���趨
      }
    }
    else
    {
      del=0;
      bz_flag=0;  //����ϱ�־
      BUZZER_OFF;
    }
  }
  else
  {
    del=0;
    bz_flag=0;  //����ϱ�־
    BUZZER_OFF;
  }
  
  if(code_switch==16 && move_flag)// ����������  
  {
    if(speed<10)//�����ٶȿ��ƣ�������ٶ��趨֮�������������������֮ǰ�ٶ��趨
    {
      dc_judge--;
      if(dc_judge<0 && dc_judge>-40 )  //300ms���ֳ�����ת���趨��ת����תʱ��Ϊ300ms
        SetSpeed=-lowspeed;
      else 
        SetSpeed=lowspeed;
    }
    else
      dc_judge=30;  //���ʱ��Ϊ300ms
  }
  
  //if(car_stop_flag==1) //���ߵ�����ʱ,����3s������ͼʱ��ͣ����־���������
    //SetSpeed=0;
    
}

/*-------------------���ҿ����е�У��---------------*/
void Middle_Point_Configure( void )  
{
  
  if(real_pointy>10) //����ֵ(�����ű�),ƫ��
  {
    if((speed>400 && ph_lock2!=1)|| ph_lock1==1)
    {
      ph_lock1=1;         //ƫ������
      if(real_pointy<15)//rol�ж�����
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
      ph_lock2=1;         //ƫ������
      if(real_pointy<15)//rol�ж�����
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
      if(real_pointy<15)//rol�ж�����
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
    SetCenterX=Acenter; //����
  }
}


void Speed_PID_Cal(float Target,float Measure)
{
  
  Speed_PID.Error=Target-Measure;   //���=����ֵ-����ֵ,����Ϊ����
  if(Speed_PID.Error>=Target-20)          //???
    Speed_PID.Integer=Speed_PID.Integer/2;
  
  if(Speed_PID.Integer<0)
    Speed_PID.Integer=0;
  else if(Speed_PID.I*Speed_PID.Integer>=Speed_PID.iLimit)
    Speed_PID.Integer=Speed_PID.iLimit/Speed_PID.I;
  Speed_PID.Integer+=Speed_PID.Error;//����
  Speed_PID.Deriv=Speed_PID.Error-Speed_PID.PreError;//΢��     
  Speed_PID.Output=Speed_PID.P*Speed_PID.Error+Speed_PID.I*Speed_PID.Integer+Speed_PID.D*Speed_PID.Deriv;
  Speed_PID.PreError=Speed_PID.Error; 
  //�޷�
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
  Turn_PID.Error=real_pointx-SetCenterX;  //����ֵ���趨ֵ 
  Turn_PID.Deriv=Turn_PID.Error-Turn_PID.PreError; 
  if(Turn_PID.Error>=15||Turn_PID.Error<=-15)
    Turn_PID.Output=Turn_close_PID.P*(Turn_PID.Error)+Turn_PID.Deriv*Turn_close_PID.D+SerMid;//Turn_PID
  else
    Turn_PID.Output=Turn_PID.P*(Turn_PID.Error)+Turn_PID.Deriv*Turn_PID.D+SerMid;//Turn_close_PID
  if (Turn_PID.Output>SerRightMax)//ת���޷�
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
  encoder_init_struct.GPIO_Dir = DIR_INPUT;        //����
  encoder_init_struct.GPIO_PinControl = INPUT_PULL_UP;
  LPLD_GPIO_Init(encoder_init_struct);
  
  static FTM_InitTypeDef ftm_init_struct;
  ftm_init_struct.FTM_Ftmx = FTM2;              //ֻ��FTM1��FTM2���������빦��
  ftm_init_struct.FTM_Mode = FTM_MODE_QD;       //�������빦��
  ftm_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB������ģʽ
  //��ʼ��FTM
  LPLD_FTM_Init(ftm_init_struct);
  //ʹ��AB������ͨ��
  //PTB18���Ž�A�����롢PTB19���Ž�B������
  LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);  
  
}

void Servo_Init( void )
{
  static FTM_InitTypeDef ftm_init_struct;
  ftm_init_struct.FTM_Ftmx = FTM1;	//ʹ��FTM1ͨ��
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
  ftm_init_struct.FTM_PwmFreq = 300;	//PWMƵ��300Hz
  LPLD_FTM_Init(ftm_init_struct);
  LPLD_FTM_PWM_Enable(FTM1, //ʹ��FTM1
                      FTM_Ch0, //ʹ��Ch0ͨ��
                      SerMid, //��ʼ���Ƕ�0��    ,3600,2850,4350
                      PTA8, 
                      ALIGN_LEFT);   //���������                        
}
/*------------------��ʼ���������------------------*/
void DianG_Init(void)
{
  static  FTM_InitTypeDef FTM_Init;
  FTM_Init.FTM_Ftmx=FTM0;
  FTM_Init.FTM_Mode=FTM_MODE_PWM;
  FTM_Init.FTM_PwmFreq=20000;
 
  FTM_Init.FTM_PwmDeadtimeVal=8;//���Ƶ��20K ����50us  ȡ�ٷ�֮5������ 5*0.3/50=5%
  FTM_Init.FTM_PwmDeadtimeCfg=DEADTIME_CH45;
  FTM_Init.FTM_PwmDeadtimeDiv=DEADTIME_DIV16;//����50M/16=3M  ����0.3us
  
  LPLD_FTM_Init(FTM_Init);          //ʹ��PWM
  LPLD_FTM_PWM_Enable(FTM0,FTM_Ch4,0,PTD4,ALIGN_LEFT);       
  LPLD_FTM_PWM_Enable(FTM0,FTM_Ch5,0,PTD5,ALIGN_LEFT);
  
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch5,0);//δ���������0
  LPLD_FTM_PWM_ChangeDuty(FTM0,FTM_Ch4,0);
  
}