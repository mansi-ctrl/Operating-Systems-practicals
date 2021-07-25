#include <stdio.h> 
//  a third parameter to main which store all envorinment variables 
int main(int argc, char *argv[], char * envp[]) 
{ 
	    int i; 
	    printf("\nArguments passed to system :");
	    //printing arguments 
	    for(i=0;argv[i]!=NULL;i++)
	     	printf("\n%s", argv[i]);
	    printf("\nEnvironment Var:"); 	
	    //printing env var
	    for (i = 0; envp[i] != NULL; i++) 
		printf("\n%s", envp[i]); 
	    return 0; 
}
