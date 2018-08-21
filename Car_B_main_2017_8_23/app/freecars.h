
#ifndef  _Freecars_H_
#define  _Freecars_H_  

//FreeCars��λ�� ����������ʾ�� ����ͨ������������λ�����øı�
#define UartDataNum 17//��λ������ͨ����������������λ������һ��
#define UartRxBufferLen  100
#define UartRxDataLen 41//FreeCars��λ�����͸�������MCU���գ���Ҫ��
#define UartRxCmdLen 7//FreeCars��λ�������������ݳ��ȣ���Ҫ��
#define UartCmdNum  SerialPortRx.Buffer[SerialPortRx.Stack-3]//�����
#define UartCmdData SerialPortRx.Buffer[SerialPortRx.Stack-2]//��������

typedef struct 
{
  int Stack;
  uint8 Data;
  uint8 PreData;
  uint8 Buffer[UartRxBufferLen];
  uint8 Enable;
  uint8 Check;
}SerialPortType;

void uart4_isr(void);//�����жϻص�����
void sendDataToScope(void);//Freecarsʾ������ѯ������һ֡����
void push(uint8 chanel,uint16 data);//��ʾ����ĳ��ͨ���������������
void PutcharCamera(int8 sele); 

extern int Image_Mode_selection;
extern uint8 stopflag;
#endif



