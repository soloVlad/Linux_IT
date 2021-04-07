#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(){
    int fd; 
    size_t size;
    char my_string[] = "Hello, world!";
    (void)umask(0); 
    
    
    if((fd = open("myfile.txt", O_WRONLY)) > 0){
    	printf("Files existed before\n");
    	printf("File was opened\n");
    }
    else if((fd = open("myfile.txt", O_WRONLY | O_CREAT, 0666)) < 0){
        printf("Can\'t open file\n");
        exit(-1); 
    } 
    else if((fd = open("myfile.txt", O_WRONLY | O_CREAT, 0666)) > 0){
    	printf("File was created!\n");
    	printf("File was opened\n");
    }

    // В случае размера 14 в файле происходит ошибка
    // точную природу установить не удалось, возможно,
    // это связано с тем, что программа по дефолту пишет
    // \0 в конец, и наша явная запись портит картину.

    size = write(fd, my_string, 13);
    if(size != 13){
        printf("Can\'t write all string\n"); 
        exit(-1); 
    } 
    if(close(fd) < 0){ 
        printf("Can\'t close file\n");
    }
    else {
    	printf("File was closed\n");
    }
    return 0; 
}
