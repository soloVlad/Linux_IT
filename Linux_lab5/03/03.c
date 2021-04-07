#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int main() {
	FILE *file;
	(void) umask(0);
	int file1, file2, file3, size1, size2;
	char array1[255], array2[255];
	
	file1 = open("text1.txt", O_RDONLY, 0666);
	file2 = open("text2.txt", O_RDONLY, 0666);
	file3 = open("text3.txt", O_WRONLY | O_CREAT, 0666);
	
	file = fopen("text1.txt", "rb");
	if (file) {
        	fseek(file, 0, SEEK_END);
        	size1 = ftell(file);
        	fclose(file);
	}
	
	file = fopen("text2.txt", "rb");
	if (file) {
        	fseek(file, 0, SEEK_END);
        	size2 = ftell(file);
        	fclose(file);
	}
	
        read(file1, array1, size1);
	read(file2, array2, size2);
	
	write(file3, array1, size1);
	write(file3, array2, size2);
	
	close(file1);
	close(file2);
	close(file3);
	
	return 0;
}
