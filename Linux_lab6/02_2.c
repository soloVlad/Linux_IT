#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
int main() {
  int fd[2], fd_2[2], result;
  size_t size, size2;
  char resstring[14];
  char resstring2[8];

  if (pipe(fd) < 0) {
    printf("Can\'t create pipe\n");
    exit(-1);
  }

  if (pipe(fd_2) < 0) {
    printf("Can\'t create pipe\n");
    exit(-1);
  }

  result = fork();
  if (result < 0) {
    printf("Can\'t fork child\n");
    exit(-1);
  } else if (result > 0) {
    close(fd[0]);
    close(fd_2[1]);

    size = write(fd[1], "Hello, world!", 14);
    size2 = read(fd_2[0], resstring2, 8);

    if (size2 < 0) {
      printf("Can\'t read string\n");
      exit(-1);
    }
    if (size != 14) {
      printf("Can\'t write all string\n");
      exit(-1);
    }

    printf("%s\n", resstring2);
    close(fd[1]);
    close(fd_2[0]);
    printf("Parent exit\n");
  } else {
    close(fd[1]);
    close(fd_2[0]);

    size = read(fd[0], resstring, 14);
    size2 = write(fd_2[1], "Success", 8);

    if (size2 != 8) {
      printf("Can\'t write all string\n");
      exit(-1);
    }
    if (size < 0) {
      printf("Can\'t read string\n");
      exit(-1);
    }

    printf("%s\n", resstring);
    close(fd[0]);
    close(fd_2[1]);
  }
  return 0;
}