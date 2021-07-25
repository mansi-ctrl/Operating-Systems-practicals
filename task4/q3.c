// A C program to demonstrate Zombie Process.  
// Child becomes Zombie as parent is sleeping 
// when child process exits. 
#include <stdlib.h> 
#include <sys/types.h> 
#include <unistd.h> 

int main(){
	int x = fork(); //create child process
   if (x > 0){ //if x is non zero, then it is parent process
      printf("1.Inside Parent---- PID is : %d\n", getpid());
      
             sleep(30);       
       printf("2.Inside Parent---- PID is : %d\n", getpid());
       //system("ps -eo pid,ppid,stat,cmd | grep 'Z+' "); 
      } 
   else { //for chile process x will be 0
         printf("3.Inside Child---- PID :%d and PID of parent : %d\n", getpid(), getppid());
         exit(0);
     } 
   return 0;

}
