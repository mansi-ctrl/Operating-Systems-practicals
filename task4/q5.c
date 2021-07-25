#include<stdio.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<stdlib.h>
#include <time.h>


void sfile(char const filename[]);

int main(){
	  ssize_t read;
	  char* buffer = 0;
	  size_t buf_size = 0;

	  printf("Enter the name of a file to check: \n");
  	  read = getline(&buffer, &buf_size, stdin);				//storing input in buffer
   /*getdline(char *lineptr, size_t *size, FILE *stream)
	   Return the number of characters read, including the delimiter character, but not including the terminating null byte
	   Reads entrire line from stream and storing into *lineptr
	   Lineptr comtains pointer to allocated buffer *n bytes in size
  */
	  if (read <=0 ){
  	  	printf("getline failed\n");
	    	exit(1);
	  }

	  if (buffer[read-1] == '\n'){
	    	buffer[read-1] = 0;
	  }

	  int s=open(buffer,O_RDONLY);
	 
	  if(s==-1){												//checking file is exists or not
 		printf("File doesn't exist\n");
		exit(1);
	  }
	  else{
	   	 sfile(buffer);
	  }
	  free(buffer);
	  return 0;
}

void sfile(char const filename[]){

	  struct stat sfile;

	  if(stat(filename,&sfile)==-1){
	    	printf("Error Occurred\n");
	  }
	  
	  printf("\nLast Access time: %s", ctime(&sfile.st_atim.tv_sec));
	  printf("\nModifcation time: %s", ctime(&sfile.st_mtim.tv_sec));
	  printf("\nFile Permissions User\n");
	  printf((sfile.st_mode & S_IRUSR)? "r":"-");
	  printf((sfile.st_mode & S_IWUSR)? "w":"-");
	  printf((sfile.st_mode & S_IXUSR)? "x":"-");
	  printf("\n");
	  printf("\nFile Permissions Group\n");
	  printf((sfile.st_mode & S_IRGRP)? "r":"-");
	  printf((sfile.st_mode & S_IWGRP)? "w":"-");
	  printf((sfile.st_mode & S_IXGRP)? "x":"-");
	  printf("\n");
	  printf("\nFile Permissions Other\n");
	  printf((sfile.st_mode & S_IROTH)? "r":"-");
	  printf((sfile.st_mode & S_IWOTH)? "w":"-");
	  printf((sfile.st_mode & S_IXOTH)? "x":"-\n");
  
}
