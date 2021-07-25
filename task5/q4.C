#include<dos.h>
#include<conio.h>
#include<stdio.h>
union  REGS in,out;

void status()               //if mouse is connected then it will suucessfully show 
{
{
in.x.ax=0;                  //ax is register  
int86(0x33,&in,&out);       
}

void show()                 //showing the cursor
{
in.x.ax=1;
int86(0x33,&in,&out);       //calling interrupt
}

void main(){
	int xcor=0, ycor=0;
	clrscr();
	status();
	show();
	in.x.ax=3;
	while(!kbhit()){
	int86(0x33,&in,&out);
	gotoxy(75,1);
	printf("%c", 22);
	gotoxy(77,1);
	printf("%c", 127);
	gotoxy(80,1);
	printf("X");
	switch(out.x.bx) {
		case 1:{
			gotoxy(33,10);
			gotoxy(0,0);
		     			xcor = out.x.cx;
			ycor = out.x.dx;

			if(xcor == 592 && ycor ==0){
				gotoxy(33,10);
				printf("Minimize");

			}else if(xcor==608 && ycor==0){
				gotoxy(33,10);
				printf("Maximize");
			}else if(xcor==632 && ycor==0){
				clrscr();
				gotoxy(33,10);
				printf("Exit in few seconds...");
				sleep(10);
				exit(0);
			}
			break;
		}
     }
   }
}

