
#include<stdio.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<stdlib.h>
#include <time.h>
#include <dirent.h> 
#include <string.h>

long int findSize(char file_name[]) 
{ 
	    // opening the file in read mode 
	    FILE* fp = fopen(file_name, "r"); 
	  
	    // checking if the file exist or not 
	    if (fp == NULL) { 
		printf("File Not Found!\n"); 
		return -1; 
   	    } 
  
	    fseek(fp, 0L, SEEK_END); 
	  
	    // calculating the size of the file 
	    long int res = ftell(fp); 
	  
	    // closing the file 
	    fclose(fp); 
	  
	    return res; 
} 

void listFiles(const char *path)
{
	    struct dirent *dp;
	    DIR *dir = opendir(path);

	    // Unable to open directory stream
	    if (!dir) 
		return; 

	    while ((dp = readdir(dir)) != NULL)
	    {
		printf("%s\n", dp->d_name);
	    }

	    // Close directory stream
  	  closedir(dir);
}


void sfile(char const filename[]){

	  struct stat sfile;
           char choice;
           int del;
	  if(stat(filename,&sfile)==-1){
	    	printf("Error Occurred\n");
	  }
	  
	  
	  long int res = findSize(filename); 
	  if (res != -1) 
          printf("Size of the file : %ld bytes \n", res); 
          
           char command[50];

   	  sprintf( command, "file  %s" , filename);
   	  printf("file type");
  	  system(command);
	  printf("Created date :%s\n", ctime(&sfile.st_mtim.tv_sec));
	  printf("Do you want to remove given %s ?[y/n]",filename);
	  scanf("%s",&choice);
	  if(choice == 'y')
	    	del= remove(filename);
          if (!del)
         	printf("The file is Deleted successfully\n");
            
      
}


int main(){
	  ssize_t read;
	  char* buffer = 0;
	  size_t buf_size = 0;
	  char path[100];

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
 			    printf("Enter path to list files: ");
	    scanf("%s", path);
	    listFiles(path);
		exit(1);
	  }
	  else{
	   	 sfile(buffer);
	   	 	    printf("Enter path to list files: ");
	    scanf("%s", path);
	    listFiles(path);
	  }
	  free(buffer);
	  
	  
	  return 0;
}


