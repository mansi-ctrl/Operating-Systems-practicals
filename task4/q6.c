#include <stdio.h>
#include <stdlib.h>
// CPU information stored inside /proc/cpuinfo
int main(int argc, char **argv)
{
	   FILE *cpuinfo = fopen("/proc/cpuinfo", "rb");  				// defining file pointer for that stored detailed
	   char *arg = 0;
	   size_t size = 0;
	   while(getdelim(&arg, &size, 0, cpuinfo) != -1)				
	   {
	      puts(arg);
	   }

	   /*getdelim(char *lineptr, size_t *size, int delimeter,FILE *stream)
	   Return the number of characters read, including the delimiter character, but not including the terminating null byte
	   Reads entrire line from stream and storing into *lineptr
	   Lineptr comtains pointer to allocated buffer *n bytes in size
	   */
  
	   free(arg);
	   fclose(cpuinfo);
	   return 0;
}
