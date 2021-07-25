#include <stdlib.h> 
#include <sys/types.h> 
#include <unistd.h> 

int main(){
	int x = fork(); //create child process
   if (x == 0) { //for chile process x will be 0
      printf("Inside Child---- PID :%d and PID of parent : %d\n", getpid(), getppid());
    }
   else //if x is non zero, then it is parent process
        
       printf("Inside Parent---- PID is : %d\n", getpid());
      
   return 0;

}
