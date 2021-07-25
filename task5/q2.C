#include<dos.h>
#include<conio.h>
#include<stdio.h>

union  REGS in,out;
//Int86 is a C library function facilitates access to bare bone DOS service interrupts
// It is a wrapper over inline assembly interrupt call. It takes CPU register values with object to a structure where member variables are equivalent to CPU registers.
//	int int86( int intno, union REGS *inregs,union REGS *outregs );
//0x33 mouse interrupt

void status()                //if mouse is connected then it will suucessfully show 
{
in.x.ax=0;                   //ax is register 
int86(0x33,&in,&out);        
}

void show()                  //showing the cursor 
{
in.x.ax=1;
int86(0x33,&in,&out);        //calling interrupt 
}

void main(){
clrscr();
status();
show();
   in.x.ax=3;
   while(!kbhit()){
   int86(0x33,&in,&out);
   switch(out.x.bx) {
      case 1:
      gotoxy(33,12);
      printf("LEFT BUTTON SELECTED");
      gotoxy(35,13);
      printf("%d %d",out.x.cx,out.x.dx);  //fetching position from left button
      break;
      case 2:
      gotoxy(33,12);
      printf("RIGHT BUTTON SELECTED");
      gotoxy(35,13);
       printf("%d %d",out.x.cx,out.x.dx);//fetching position from right button
      break;
      case 0:
      gotoxy(33,12);
      printf("NO BUTTON IS PRESSED");//fetching position when none of button is pressed
      gotoxy(35,13);
       printf("%d %d",out.x.cx,out.x.dx);
      break;
      
     }
     delay(100);
     clrscr();
   }
}
