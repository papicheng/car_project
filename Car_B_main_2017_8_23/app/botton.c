
#include "common.h"
#include "botton.h"
#include "oled.h"
#include "timer.h"
#include "camera_test.h" 
#include "myflash.h"

GPIO_InitTypeDef botton_gpio_init;
GPIO_InitTypeDef dial_switch_init;
GPIO_InitTypeDef LED_LIGHT;

int clear_screen_number=0;
int course_judge=0;
signed char Course = 0;//��һҳ�еı�������ָ��
signed char PageNum = 0x00;//ҳ������
int ScreenData[5][16];//��ʾ�ڼ�ҳ�ڼ���������ֵ
int8 ScreenStr[5][16][30];//��һά��ʾҳ�����ڶ�ά��ʾһҳ�еı���������ά��ʾÿһ���������ַ���

signed char ph_course;  //����ƫ�������б�־

void botton_dial_switch_gpio_init(void)
{

   botton_gpio_init.GPIO_PTx = PTE;
   botton_gpio_init.GPIO_Pins = GPIO_Pin9;
   botton_gpio_init.GPIO_Dir = DIR_INPUT;
   botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
   LPLD_GPIO_Init(botton_gpio_init);
   
   botton_gpio_init.GPIO_PTx = PTE;
   botton_gpio_init.GPIO_Pins = GPIO_Pin8;
   botton_gpio_init.GPIO_Dir = DIR_INPUT;
   botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
   LPLD_GPIO_Init(botton_gpio_init);
   
   botton_gpio_init.GPIO_PTx = PTE;
   botton_gpio_init.GPIO_Pins = GPIO_Pin7;
   botton_gpio_init.GPIO_Dir = DIR_INPUT;
   botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
   LPLD_GPIO_Init(botton_gpio_init);
   
   botton_gpio_init.GPIO_PTx = PTE;
   botton_gpio_init.GPIO_Pins = GPIO_Pin6;
   botton_gpio_init.GPIO_Dir = DIR_INPUT;
   botton_gpio_init.GPIO_PinControl =INPUT_PULL_UP;
   LPLD_GPIO_Init(botton_gpio_init);
   
   dial_switch_init.GPIO_PTx = PTE;
   dial_switch_init.GPIO_Pins = GPIO_Pin10;
   dial_switch_init.GPIO_Dir = DIR_INPUT;
   dial_switch_init.GPIO_PinControl =INPUT_PULL_UP;//IRQC_DMAFA |INPUT_PULL_UP;IRQC_FA|
   LPLD_GPIO_Init(dial_switch_init);
   
   dial_switch_init.GPIO_PTx = PTE;
   dial_switch_init.GPIO_Pins = GPIO_Pin11;
   dial_switch_init.GPIO_Dir = DIR_INPUT;
   dial_switch_init.GPIO_PinControl =INPUT_PULL_UP;//IRQC_DMAFA |INPUT_PULL_UP;IRQC_FA|
   LPLD_GPIO_Init(dial_switch_init);
   
   
   //---------����������ʾ------------------
   LED_LIGHT.GPIO_PTx=PTA;
   LED_LIGHT.GPIO_Pins = GPIO_Pin25|GPIO_Pin26|GPIO_Pin27|GPIO_Pin28;//A25�ӷ��������������ɫ��
   LED_LIGHT.GPIO_Dir = DIR_OUTPUT;
   LPLD_GPIO_Init(LED_LIGHT);
   LPLD_GPIO_Output_b(PTA, 26, 1);
   LPLD_GPIO_Output_b(PTA, 27, 1);
   LPLD_GPIO_Output_b(PTA, 28, 1);
   BUZZER_OFF;
}

void Key_delay()
{
	uint16 i, n;
	for (i = 0; i < 19000; i++)
	{
		for (n = 0; n < 50; n++)
		{
			asm("nop");
		}
	}
}
void delay(int n)
{
  uint16 i, j;
  for(i=0;i<60000;i++)
  {
    for(j=0;j<n;j++)
    {
      asm("nop");
    }
  }
}

unsigned char KeyScan(void)
{
  if (PTE10_I == 0)
  {
    return 5;
  }
  else if (PTE11_I == 0)//6
  {
    Key_delay();
    if (PTE11_I == 0)
    {
      return 6;
    }
  }
  else if (PTE6_I == 0)//6
  {
    Key_delay();
    if (PTE6_I == 0)
    {
      return 4;
    }
  }
  
  else if (PTE7_I == 0)//1
  {
    Key_delay();
    if (PTE7_I == 0)
    {
      return 3;
    }
  }
  
  else if (PTE8_I == 0)
  {
    Key_delay();
    if (PTE8_I == 0)
    {
      return 1;
    }
  }
  
  else if (PTE9_I == 0)
  {
    Key_delay();
    if (PTE9_I == 0)
    {
      return 2;
    }
  }
  
  return 10;
}

void SaveData(void)
{
  
  highspeed =(int)ScreenData[0][0];
  lowspeed=(int)ScreenData[0][1];
  turnspeed=(int)ScreenData[0][2];
  acce=(int)ScreenData[0][3];
  
  
  L_R_judge[0][0] = (int)ScreenData[1][0];
  L_R_judge[0][1] = (int)ScreenData[1][1];
  L_R_judge[1][0] = (int)ScreenData[1][2];
  L_R_judge[1][1] = (int)ScreenData[1][3];
  L_R_judge[2][0] = (int)ScreenData[1][4];
  L_R_judge[2][1] = (int)ScreenData[1][5];
  L_R_judge[3][0] = (int)ScreenData[1][6];
  L_R_judge[3][1] = (int)ScreenData[1][7];
  L_R_judge[4][0] = (int)ScreenData[1][8];
  L_R_judge[4][1] = (int)ScreenData[1][9];
  L_R_judge[5][0] = (int)ScreenData[1][10];
  L_R_judge[5][1] = (int)ScreenData[1][11];
  L_R_judge[6][0] = (int)ScreenData[1][12];
  L_R_judge[6][1] = (int)ScreenData[1][13];
  L_R_judge[7][0] = (int)ScreenData[1][14];
  L_R_judge[7][1] = (int)ScreenData[1][15];
  
  L_R_judge[8][0] = (int)ScreenData[2][0];
  L_R_judge[8][1] = (int)ScreenData[2][1];
  L_R_judge[9][0] = (int)ScreenData[2][2];
  L_R_judge[9][1] = (int)ScreenData[2][3];
  L_R_judge[10][0] = (int)ScreenData[2][4];
  L_R_judge[10][1] = (int)ScreenData[2][5];
  L_R_judge[11][0] = (int)ScreenData[2][6];
  L_R_judge[11][1] = (int)ScreenData[2][7];
  L_R_judge[12][0] = (int)ScreenData[2][8];
  L_R_judge[12][1] = (int)ScreenData[2][9];
  L_R_judge[13][0] = (int)ScreenData[2][10];
  L_R_judge[13][1] = (int)ScreenData[2][11];
  L_R_judge[14][0] = (int)ScreenData[2][12];
  L_R_judge[14][1] = (int)ScreenData[2][13];
  L_R_judge[15][0] = (int)ScreenData[2][14];
  L_R_judge[15][1] = (int)ScreenData[2][15];
  
   L_R_judge[16][0] = (int)ScreenData[3][0];
  L_R_judge[16][1] = (int)ScreenData[3][1];
  L_R_judge[17][0] = (int)ScreenData[3][2];
  L_R_judge[17][1] = (int)ScreenData[3][3];
  L_R_judge[18][0] = (int)ScreenData[3][4];
  L_R_judge[18][1] = (int)ScreenData[3][5];
  L_R_judge[19][0] = (int)ScreenData[3][6];
  L_R_judge[19][1] = (int)ScreenData[3][7];
  L_R_judge[20][0] = (int)ScreenData[3][8];
  L_R_judge[20][1] = (int)ScreenData[3][9];
  L_R_judge[21][0] = (int)ScreenData[3][10];
  L_R_judge[21][1] = (int)ScreenData[3][11];
  L_R_judge[22][0] = (int)ScreenData[3][12];
  L_R_judge[22][1] = (int)ScreenData[2][13];
  L_R_judge[23][0] = (int)ScreenData[3][14];
  L_R_judge[23][1] = (int)ScreenData[3][15];
  
  

}
void PageInit(signed char sPageNum)
{
  //д������ʾ�����ַ����ƣ���ά���鸳��ֵ��

	int i;
	PageNum = sPageNum;//����ҳ��
        //��һҳ
        sprintf(ScreenStr[0][0], "HIGH_SPEED");  
        sprintf(ScreenStr[0][1], "LOW_SPEED");
        sprintf(ScreenStr[0][2], "turnspeed");
        sprintf(ScreenStr[0][3], "ACCE");
        
        
        //�ڶ�ҳ
	sprintf(ScreenStr[1][0], "light_1");//������
        sprintf(ScreenStr[1][1], "light_2");//�趨�ٶ�
        sprintf(ScreenStr[1][2], "light_3");//��ֵ
	sprintf(ScreenStr[1][3], "light_4");//�Ƕ�̫����ٶ�
	sprintf(ScreenStr[1][4], "light_5");//�������������
        sprintf(ScreenStr[1][5], "light_6");
        sprintf(ScreenStr[1][6], "light_7");
        sprintf(ScreenStr[1][7], "light_8");
        //����ҳ
        sprintf(ScreenStr[2][0], "light_9");//������
        sprintf(ScreenStr[2][1], "light_10");//�趨�ٶ�
        sprintf(ScreenStr[2][2], "light_11");//��ֵ
	sprintf(ScreenStr[2][3], "light_12");//�Ƕ�̫����ٶ�
	sprintf(ScreenStr[2][4], "light_13");//�������������
        sprintf(ScreenStr[2][5], "light_14");
        sprintf(ScreenStr[2][6], "light_15");
        sprintf(ScreenStr[2][7], "light_16");
        //����ҳ
        sprintf(ScreenStr[3][0], "light_17");//������
        sprintf(ScreenStr[3][1], "light_18");//�趨�ٶ�
        sprintf(ScreenStr[3][2], "light_19");//��ֵ
	sprintf(ScreenStr[3][3], "light_20");//�Ƕ�̫����ٶ�
	sprintf(ScreenStr[3][4], "light_21");//�������������
        sprintf(ScreenStr[3][5], "light_22");
        sprintf(ScreenStr[3][6], "light_23");
        sprintf(ScreenStr[3][7], "light_24");

        //��һҳ��������ֵ
        ScreenData[0][0] = (int)highspeed;//��Ӧ����ScreenStr[0][0], "HIGH_SPEED"��ֵ������һ������
        ScreenData[0][1] = (int)lowspeed;
        ScreenData[0][2] = (int)turnspeed;
        ScreenData[0][3] = (int)acce;
        
        //�ڶ�ҳ��������ֵ
        ScreenData[1][0]=L_R_judge[0][0];//��Ӧ����ScreenStr[1][0], "light_1"
        ScreenData[1][1]=L_R_judge[0][1];
        ScreenData[1][2]=L_R_judge[1][0];
        ScreenData[1][3]=L_R_judge[1][1];
        ScreenData[1][4]=L_R_judge[2][0];
        ScreenData[1][5]=L_R_judge[2][1];
        ScreenData[1][6]=L_R_judge[3][0];
        ScreenData[1][7]=L_R_judge[3][1];
        ScreenData[1][8]=L_R_judge[4][0];
        ScreenData[1][9]=L_R_judge[4][1];
        ScreenData[1][10]=L_R_judge[5][0];
        ScreenData[1][11]=L_R_judge[5][1];
        ScreenData[1][12]=L_R_judge[6][0];
        ScreenData[1][13]=L_R_judge[6][1];
        ScreenData[1][14]=L_R_judge[7][0];
        ScreenData[1][15]=L_R_judge[7][1];
        
        ScreenData[2][0]=L_R_judge[8][0];
        ScreenData[2][1]=L_R_judge[8][1];
        ScreenData[2][2]=L_R_judge[9][0];
        ScreenData[2][3]=L_R_judge[9][1];
        ScreenData[2][4]=L_R_judge[10][0];
        ScreenData[2][5]=L_R_judge[10][1];
        ScreenData[2][6]=L_R_judge[11][0];
        ScreenData[2][7]=L_R_judge[11][1];
        ScreenData[2][8]=L_R_judge[12][0];
        ScreenData[2][9]=L_R_judge[12][1];
        ScreenData[2][10]=L_R_judge[13][0];
        ScreenData[2][11]=L_R_judge[13][1];
        ScreenData[2][12]=L_R_judge[14][0];
        ScreenData[2][13]=L_R_judge[14][1];
        ScreenData[2][14]=L_R_judge[15][0];
        ScreenData[2][15]=L_R_judge[15][1];
        
        ScreenData[3][0]=L_R_judge[16][0];
        ScreenData[3][1]=L_R_judge[16][1];
        ScreenData[3][2]=L_R_judge[17][0];
        ScreenData[3][3]=L_R_judge[17][1];
        ScreenData[3][4]=L_R_judge[18][0];
        ScreenData[3][5]=L_R_judge[18][1];
        ScreenData[3][6]=L_R_judge[19][0];
        ScreenData[3][7]=L_R_judge[19][1];
        ScreenData[3][8]=L_R_judge[20][0];
        ScreenData[3][9]=L_R_judge[20][1];
        ScreenData[3][10]=L_R_judge[21][0];
        ScreenData[3][11]=L_R_judge[21][1];
        ScreenData[3][12]=L_R_judge[22][0];
        ScreenData[3][13]=L_R_judge[22][1];
        ScreenData[3][14]=L_R_judge[23][0];
        ScreenData[3][15]=L_R_judge[23][1];
        	
	Key_delay();//��ʱ
	LED_Init();//oled��ʼ��
	Key_delay();
	LED_Fill(0);//����
	Key_delay();
        if (sPageNum == 0) //��һҳ��ʾ�ж�
	{
          for (i = 0; i < 4; i++)
          {
            LED_P6x8Str(8, i, (unsigned char*)ScreenStr[0][i]); //��ʾ�����ַ���
            LED_PrintValueFP(70, i, ScreenData[0][i], 3);//��ʾ������Ӧ��ֵ
          }
        }
	else if (sPageNum == 1)//�ڶ�ҳ��ʾ�жϣ��ڶ�ҳ������������ʾ
	{
          for (i = 0; i < 16; i++)
          {
            if(i%2==0)
            {
              LED_P6x8Str(0, i/2, (unsigned char*)ScreenStr[1][i/2]);
              LED_PrintValueFP(55, i/2, ScreenData[1][i], 1);
            }
            else 
            {
              LED_PrintValueFP(90, i/2, ScreenData[1][i], 1);
            }
            
          }
	}
	else if (sPageNum == 2)//����ҳ��ʾ�ж�
	{
          for (i = 0; i < 16; i++)
          {
            if(i%2==0)
            {
              LED_P6x8Str(0, i/2, (unsigned char*)ScreenStr[2][i/2]);
              LED_PrintValueFP(55, i/2, ScreenData[2][i], 1);
            }
            else
            {
              
              LED_PrintValueFP(90, i/2, ScreenData[2][i], 1);}
            
          }
	}
        else if (sPageNum == 3)//����ҳ��ʾ�ж�
	{
          for (i = 0; i < 16; i++)
          {
            if(i%2==0)
            {
              LED_P6x8Str(0, i/2, (unsigned char*)ScreenStr[3][i/2]);
              LED_PrintValueFP(55, i/2, ScreenData[3][i], 1);
            }
            else 
            {
              
              LED_PrintValueFP(90, i/2, ScreenData[3][i], 1);
            }
            
          }
	}
        if(sPageNum!=0)//��ʾѡ���Ǻ�
        {
          course_judge=Course;
          if(course_judge%2==0)
          {
            LED_P6x8Char(50, course_judge/2, '*');
            LED_P6x8Char(85, course_judge/2, ' ');
            if(course_judge>=2)
              LED_P6x8Char(85, course_judge/2-1, ' ');
          }
          else
          {
            LED_P6x8Char(50, course_judge/2, ' ');
            LED_P6x8Char(85, course_judge/2, '*');
            if(course_judge<=13)
              LED_P6x8Char(50, course_judge/2+1, ' ');
          }
        }
        
        else LED_P6x8Char(0, Course, '*');
                  
}
void Key_Up(void)//ѡ���Ǻ������ƶ�
{
	
        if (PageNum == 0)
	{
          LED_P6x8Char(0, (uint8)Course, ' ');
          Course--;
		if (Course < 0)
		{
			Course = 15;
                        PageNum = 3;
			PageInit(PageNum);
		}
                else  LED_P6x8Char(0, Course, '*');
        
            
        }
	else if (PageNum == 1)
	{
		Course--;
		if (Course < 0)
		{
			Course = 3;
                        PageNum = 0;
			PageInit(PageNum);
		}
                
                else{
                 course_judge=Course;
                  if(course_judge%2==0){
                  LED_P6x8Char(50, course_judge/2, '*');
                  LED_P6x8Char(85, course_judge/2, ' ');
                  if(course_judge>=2)
                  LED_P6x8Char(85, course_judge/2-1, ' ');}
                  else{
                  LED_P6x8Char(50, course_judge/2, ' ');
                  LED_P6x8Char(85, course_judge/2, '*');
                  if(course_judge<=13)
                  LED_P6x8Char(50, course_judge/2+1, ' ');}
                }
	}
        
        else if (PageNum == 2)
	{
		Course--;
		if (Course < 0)
		{
			Course = 15;
                        PageNum = 1;
			PageInit(PageNum);
		}
                
                else{
                 course_judge=Course;
                  if(course_judge%2==0){
                  LED_P6x8Char(50, course_judge/2, '*');
                  LED_P6x8Char(85, course_judge/2, ' ');
                  if(course_judge>=2)
                  LED_P6x8Char(85, course_judge/2-1, ' ');}
                  else{
                  LED_P6x8Char(50, course_judge/2, ' ');
                  LED_P6x8Char(85, course_judge/2, '*');
                  if(course_judge<=13)
                  LED_P6x8Char(50, course_judge/2+1, ' ');}
                }
	}
        
         else if (PageNum == 3)
	{
		Course--;
		if (Course < 0)
		{
			Course = 15;
                        PageNum = 2;
			PageInit(PageNum);
		}
                
                else{
                 course_judge=Course;
                  if(course_judge%2==0){
                  LED_P6x8Char(50, course_judge/2, '*');
                  LED_P6x8Char(85, course_judge/2, ' ');
                  if(course_judge>=2)
                  LED_P6x8Char(85, course_judge/2-1, ' ');}
                  else{
                  LED_P6x8Char(50, course_judge/2, ' ');
                  LED_P6x8Char(85, course_judge/2, '*');
                  if(course_judge<=13)
                  LED_P6x8Char(50, course_judge/2+1, ' ');}
                }
	}
        		
}




void Key_Down(void) //�����𣬰��µ�һ������������ѡ���Ǻ������ƶ�
{
  if (PageNum == 0)//����ڵ�һҳ  
  {
    LED_P6x8Char(0, (uint8)Course, ' ');
    Course++;  
    if (Course > 3)//course����..����ʾ����һҳ
    {
      Course = 0;//��������
      PageNum = 1;//��һҳ��־
      PageInit(PageNum);//����һҳ
    }
    
    else  LED_P6x8Char(0, Course, '*');//��һҳ���Ǻ�ֻ�ڵ�һ�г��֣�COURSE��ʾ�ڼ���
  }
  else if (PageNum == 1)//����ڵڶ�ҳ
  {
    Course++;
    if (Course > 15)//�Ǻſ��������ƶ�������15��������һҳ
    {
      Course = 0; //���㣬׼����һҳ
      PageNum = 2; //��һҳ��־
      PageInit(PageNum);//ˢ�£�����һҳ
    }
    
    else  //�ڱ�ҳѡ��
    {
      course_judge=Course;
      if(course_judge%2==0)//��ʱcourse=2
      {
        LED_P6x8Char(50, course_judge/2, '*');//�Ǻ������һ��
        LED_P6x8Char(85, course_judge/2, ' ');
        if(course_judge>=2)
          LED_P6x8Char(85, course_judge/2-1, ' ');
      }
      else
      {
        LED_P6x8Char(50, course_judge/2, ' ');
        LED_P6x8Char(85, course_judge/2, '*');//�Ǻ����ұ�һ��
        if(course_judge<=13)
          LED_P6x8Char(50, course_judge/2+1, ' ');
      }
    }
  }
  else if (PageNum == 2) //����ҳ
  {
    Course++;
    if (Course > 15)
    {
      Course = 0;
      PageNum = 3;
      PageInit(PageNum);
    }
    
    else{
      course_judge=Course;
      if(course_judge%2==0){
        LED_P6x8Char(50, course_judge/2, '*');
        LED_P6x8Char(85, course_judge/2, ' ');
        if(course_judge>=2)
          LED_P6x8Char(85, course_judge/2-1, ' ');}
      else{
        LED_P6x8Char(50, course_judge/2, ' ');
        LED_P6x8Char(85, course_judge/2, '*');
        if(course_judge<=13)
          LED_P6x8Char(50, course_judge/2+1, ' ');}
    }
  }
  
  else if (PageNum == 3)//����ҳ
  {
    Course++;
    if (Course > 15)
    {
      Course = 0;
      PageNum = 0;
      PageInit(PageNum);
    }
    
    else{
      course_judge=Course;
      if(course_judge%2==0){
        LED_P6x8Char(50, course_judge/2, '*');
        LED_P6x8Char(85, course_judge/2, ' ');
        if(course_judge>=2)
          LED_P6x8Char(85, course_judge/2-1, ' ');}
      else{
        LED_P6x8Char(50, course_judge/2, ' ');
        LED_P6x8Char(85, course_judge/2, '*');
        if(course_judge<=13)
          LED_P6x8Char(50, course_judge/2+1, ' ');}
    }
  }
  
}
void Key_DataUp(void)//�Ա���ֵ�������ϵ���
{
   if (PageNum == 0)//��һҳ���ݵ���
	{
		switch (Course)//�ж��ڼ��н������ݵ���
		{
		case 0:ScreenData[PageNum][Course] += 5; break;//���ݵ������Ϊ10����Ӧ�ı���ΪO_SPEED
		case 1:ScreenData[PageNum][Course] += 5; break;//���ݵ������Ϊ1������
		case 2:ScreenData[PageNum][Course] += 5; break;
                case 3:ScreenData[PageNum][Course] += 5; break;
		}
		SaveData(); //���䶯�����ֵ������Ӧ����
	}
	else if (PageNum == 1)//�ڶ�ҳ
	{
          switch (Course)
          {
          case 0: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 1: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 2: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 3: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 4: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 5: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 6: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 7: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 8: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 9: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 10: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 11: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 12: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 13: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 14: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 15: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          default:break;
          }
          SaveData();//���䶯�����ֵ������Ӧ����
	}
	else if (PageNum == 2)//����ҳ
	{
          switch (Course)
          {
          case 0: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 1: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 2: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 3: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 4: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 5: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 6: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 7: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 8: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 9: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 10: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 11: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 12: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 13: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 14: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 15: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          default:break;
          }
          SaveData();
	}
        else if (PageNum == 3)
	{
          switch (Course)
          {
          case 0: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 1: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 2: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 3: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 4: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 5: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 6: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 7: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 8: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 9: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 10: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 11: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 12: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 13: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 14: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          case 15: ScreenData[PageNum][Course] += 1; if(ScreenData[PageNum][Course]>2) ScreenData[PageNum][Course]=2;break;
          default:break;
          }
          SaveData();
	}
   if(PageNum!=0)
   {
     if(Course%2==0)
       LED_PrintValueFP(55, Course/2, ScreenData[PageNum][Course], 1);
     else 
       LED_PrintValueFP(90, Course/2, ScreenData[PageNum][Course], 1);
   }
   
   else  
   { 
     LED_P6x8Str(70, Course, "      ");
     LED_PrintValueFP(70, Course, ScreenData[PageNum][Course], 3);
   }
}
void Key_DataDown(void)//�Ա���ֵ�������µ���
{
  
  if (PageNum == 0)
  {
    switch (Course)
    {
    case 0:ScreenData[PageNum][Course] -= 5; break;
    case 1:ScreenData[PageNum][Course] -= 5; break;
    case 2:ScreenData[PageNum][Course] -= 5; 
           if(ScreenData[PageNum][Course]<0) 
              ScreenData[PageNum][Course]=0;
           break;
    case 3:ScreenData[PageNum][Course] -= 5; break;
           
    }
    SaveData();
  }
  else if (PageNum == 1)
  {
    switch (Course)
    {
    case 0: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 1: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 2: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 3: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 4: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 5: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 6: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 7: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 8: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 9: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 10: ScreenData[PageNum][Course] -= 1;if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 11: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 12: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 13: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 14: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 15: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    default:break;
    }
    SaveData();
  }
  else if (PageNum == 2)
  {
    switch (Course)
    {
    case 0: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 1: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 2: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 3: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 4: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 5: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 6: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 7: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 8: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 9: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 10: ScreenData[PageNum][Course] -= 1;if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 11: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 12: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 13: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 14: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 15: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    default:break;
    }
    SaveData();
  }
  else if (PageNum == 3)
  {
    switch (Course)
    {
    case 0: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 1: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 2: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 3: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 4: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 5: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 6: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 7: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 8: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 9: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 10: ScreenData[PageNum][Course] -= 1;if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 11: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 12: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 13: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 14: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    case 15: ScreenData[PageNum][Course] -= 1; if(ScreenData[PageNum][Course]<0) ScreenData[PageNum][Course]=0; break;
    default:break;
    }
    SaveData();
  }
  
  
  if(PageNum!=0)
  {
    if(Course%2==0)
      LED_PrintValueFP(55, Course/2, ScreenData[PageNum][Course], 1);
    else 
      LED_PrintValueFP(90, Course/2, ScreenData[PageNum][Course], 1);
  }
  
  else  
  { 
    LED_P6x8Str(70, Course, "      ");
    LED_PrintValueFP(70, Course, ScreenData[PageNum][Course], 3);
  }
}

void Key_Process(void)
{
	
	unsigned char temp = 10;//�˳�ֵ��ʾû�а�������
	PageInit(PageNum);
	while (1)
	{
		temp = KeyScan();//ɨ�谴�������а�����û�����·���10
		if (temp == 5)//��������ѭ��
		{
                        flash_config();
			Key_delay();
			Key_delay();
                        Key_delay();
			Key_delay();
                        
                        /************��ƣ���ʾ����Ա��ʱ�˳�����Ļ�Ͱ���ѭ��*******************/
                        BUZZER_ON;
			LPLD_GPIO_Output_b(PTA, 26, 0);
                        LPLD_GPIO_Output_b(PTA, 27, 1);
                        LPLD_GPIO_Output_b(PTA, 28, 1);
                        LPLD_LPTMR_DelayMs( 300 );
                        LPLD_GPIO_Output_b(PTA, 26, 0);
                        LPLD_GPIO_Output_b(PTA, 27, 0);
                        LPLD_GPIO_Output_b(PTA, 28, 1);
                        LPLD_LPTMR_DelayMs( 300 );
                        LPLD_GPIO_Output_b(PTA, 26, 0);
                        LPLD_GPIO_Output_b(PTA, 27, 0);
                        LPLD_GPIO_Output_b(PTA, 28, 0);
                        /******************************************************************/
			LED_Init();
			Key_delay();
			LED_Fill(0);
			Key_delay();
                        LPLD_LPTMR_DelayMs( 300 );
                        BUZZER_OFF;
			break;
		}
//		
		else
		{
                  clear_screen_number++;  
                  if(clear_screen_number>10000000)
                  {
                    SaveData();
                    PageInit(PageNum);//��ʾ��һҳ�ַ�
                    clear_screen_number=0;
                  }
			switch (temp)
			{
			case 1: Key_Down();Key_delay(); Key_delay(); break; //����ѡ��
                        
			case 2: Key_Up();Key_delay();Key_delay();  break;//����ѡ��
                        
			case 3: Key_DataUp(); Key_delay();Key_delay();  break;
                        
			case 4: Key_DataDown(); Key_delay();Key_delay();  break;
			}
		}
	}
}

void pianhang_config(void)   //ƫ������
{
  unsigned char temp = 10;//�˳�ֵ��ʾû�а�������
  //oled��ʾ
 
  LED_P6x8Str(8, 0,(unsigned char*)"rl");  //��1��
  LED_PrintValueFP(13,0,rol,1);
  LED_P6x8Str(29, 0,(unsigned char*)"x");
  LED_PrintValueFP(31,0,real_pointx,3);
  LED_P6x8Str(58, 0,(unsigned char*)"y");
  LED_PrintValueFP(60,0,real_pointy,3);
  LED_P6x8Str(87,0,(unsigned char*)"sx");
  LED_PrintValueFP(93,0,SetCenterX,3);
  if(rol==0)         //��7��
  {
    LED_P6x8Str(8, 1,(unsigned char*)"10-15 lph1");
    LED_PrintValueFP(70,1,lph1,3);
    LED_P6x8Str(8, 2,(unsigned char*)"15-20 lph2");
    LED_PrintValueFP(70,2,lph2,3);
    LED_P6x8Str(8, 3,(unsigned char*)"20-30 lph3");
    LED_PrintValueFP(70,3,lph3,3);
    LED_P6x8Str(8, 4,(unsigned char*)"30-40 lph4");
    LED_PrintValueFP(70,4,lph4,3);
    LED_P6x8Str(8, 5,(unsigned char*)"40-50 lph5");
    LED_PrintValueFP(70,5,lph5,3);
    LED_P6x8Str(8, 6,(unsigned char*)"50-70 lph6");
    LED_PrintValueFP(70,6,lph6,3);
    LED_P6x8Str(8, 7,(unsigned char*)"70-   lph7");
    LED_PrintValueFP(70,7,lph7,3);
  }
  else
  {
    LED_P6x8Str(8, 1,(unsigned char*)"10-15 rph1");
    LED_PrintValueFP(70,1,rph1,3);
    LED_P6x8Str(8, 2,(unsigned char*)"15-20 rph2");
    LED_PrintValueFP(70,2,rph2,3);
    LED_P6x8Str(8, 3,(unsigned char*)"20-30 rph3");
    LED_PrintValueFP(70,3,rph3,3);
    LED_P6x8Str(8, 4,(unsigned char*)"30-40 rph4");
    LED_PrintValueFP(70,4,rph4,3);
    LED_P6x8Str(8, 5,(unsigned char*)"40-50 rph5");
    LED_PrintValueFP(70,5,rph5,3);
    LED_P6x8Str(8, 6,(unsigned char*)"50-70 rph6");
    LED_PrintValueFP(70,6,rph6,3);
    LED_P6x8Str(8, 7,(unsigned char*)"70-   rph7");
    LED_PrintValueFP(70,7,rph7,3);
  }
  if(ph_course==7)
  {
    LED_P6x8Char(0,ph_course,'*');
    LED_P6x8Char(0,ph_course-1,' ');
  }
  else if(ph_course==0)
  {
    LED_P6x8Char(0,ph_course,'*');
    LED_P6x8Char(0,ph_course+1,' ');
  }
  else
  {
    LED_P6x8Char(0,ph_course,'*');
    LED_P6x8Char(0,ph_course+1,' ');
    LED_P6x8Char(0,ph_course-1,' ');
  }
  
  temp = KeyScan();//ɨ�谴�������а�����û�����·���10
  if (temp == 5)//ȷ�������£�дflash�����ò���
  {
    flash_config();
    /***************дflash��ʾ************/
    BUZZER_ON;
    LPLD_GPIO_Output_b(PTA, 26, 1);
    LPLD_GPIO_Output_b(PTA, 27, 1);
    LPLD_GPIO_Output_b(PTA, 28, 0);
    LPLD_LPTMR_DelayMs( 300 );
    LPLD_GPIO_Output_b(PTA, 26, 1);
    LPLD_GPIO_Output_b(PTA, 27, 0);
    LPLD_GPIO_Output_b(PTA, 28, 0);
    LPLD_LPTMR_DelayMs( 300 );
    LPLD_GPIO_Output_b(PTA, 26, 0);
    LPLD_GPIO_Output_b(PTA, 27, 0);
    LPLD_GPIO_Output_b(PTA, 28, 0);
    LPLD_LPTMR_DelayMs( 300 );
    BUZZER_OFF;
    /******************************************************************/
    
  }
  else
    switch (temp)
    {
    case 1: ph_course++;if(ph_course>7) ph_course=7; Key_delay(); break; //����ѡ��
             
    case 2: ph_course--;if(ph_course<0) ph_course=0; Key_delay();break;//����ѡ��
    
    case 3: ph_DataUp(); Key_delay();  break;
               
    case 4: ph_DataDown(); Key_delay();  break;  //���ݼ�       
    }		 
}

void ph_DataUp( void ) 
{
  if(ph_course==0) 
  {
    if(rol==0) rol=1;
    else if(rol==1) rol=0;
  }
  else if(ph_course==1) 
  {
    if(rol==0) lph1++;
    else rph1++;
  }
  else if(ph_course==2) 
    if(rol==0) lph2++;
    else rph2++;
  else if(ph_course==3) 
  {
    if(rol==0) lph3++;
    else rph3++;
  }
  else if(ph_course==4)
  {
    if(rol==0) lph4++;
    else rph4++;
  }
  else if(ph_course==5) 
  {
    if(rol==0) lph5++;
    else rph5++;
  }
  else if(ph_course==6)
  {
    if(rol==0) lph6++;
    else rph6++;
  }
  else if(ph_course==7)
  {
    if(rol==0) lph7++;
    else rph7++; 
  }
}

void ph_DataDown(void) 
{
  if(ph_course==0) 
  {
    if(rol==0) rol=1;
    else if(rol==1) rol=0;
  }
  else if(ph_course==1) 
  {
    if(rol==0) lph1--;
    else rph1--;
  }
  else if(ph_course==2) 
  {
    if(rol==0) lph2--;
    else rph2--;
  }
  else if(ph_course==3) 
  {
    if(rol==0) lph3--;
    else rph3--;
  }
  else if(ph_course==4) 
  {
    if(rol==0) lph4--;
    else rph4--;
  }
  else if(ph_course==5) 
  {
    if(rol==0) lph5--;
    else rph5--;
  }
  else if(ph_course==6) 
  {
    if(rol==0) lph6--;
    else rph6--;
  }
  else if(ph_course==7)
  {
    if(rol==0) lph7--;
    else rph7--; 
  }
  
}

