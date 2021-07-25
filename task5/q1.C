#include<conio.h>
#include<stdlib.h> 
#include<stdio.h>
#include<string.h>

int main()
{
	int command_ret=1;
	char filename[] = "myfile.txt";
	char path[] = "";
	char command[100] = "";
	clrscr();
	printf("Hello Turbo C++ User........\n");
	// Using PRINT command
	strcat(command, "print ");
	strcat(command, path);
	strcat(command, " /c /d:lpt1");


	printf("Executing command: \"%s\"\n", command);
	printf("\nPrinting the file \"%s\" at LPT1 port...\n", filename);

	command_ret = system(command);
	if (command_ret == 0) {
	    printf("\nPrinting process of file \"%s\" is successfully completed...\nExit code %d...\n\n", filename, command_ret);
	}
	else {
	printf("\nPrinting process of file \"%s\" is forcefully terminated due to errors...\nExit code %d...\n\n", filename, command_ret);
		exit(1);
	}

	return 0;
}
