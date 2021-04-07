#include <ctype.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

char* replace(const char* src, const char* old, const char* new);
int get_occurance_amount(const char* src, const char* old);
int get_new_len(const char* src, const char* old, const char* new);
int get_real_len(const char* src);
void read_file(char* buff, int fd);

int main() {
  FILE* f_file;
  (void)umask(0);
  int file1, size1;
  char buff[2000];
  char str1[80];
  char str2[80];
  char* result = NULL;

  f_file = fopen("text.txt", "rb");

  if (f_file) {
    fseek(f_file, 0, SEEK_END);
    size1 = ftell(f_file);
    fclose(f_file);
  }

  printf("Enter string that should be changed:\n");
  gets(str1);

  printf("Enter new string for change:\n");
  gets(str2);

  file1 = open("text.txt", O_RDWR, 0666);

  read_file(buff, file1);

  result = replace(buff, str1, str2);
  size1 = strlen(result);

  f_file = fopen("text.txt", "w");
  fclose(f_file);

  lseek(file1, 0, SEEK_SET);

  write(file1, result, size1);
  close(file1);

  return 0;
}

void read_file(char* buff, int fd) {
  int bytes_read;
  int k = 0;
  do {
    char t = 0;
    bytes_read = read(fd, &t, 1);
    buff[k++] = t;
  } while (bytes_read != 0);
}

int get_occurance_amount(const char* src, const char* old) {
  int count = 0;
  const char* c = src;
  while ((c = strstr(c, old)) != NULL) {
    ++count;
    ++c;
  }
  return count;
}

int get_new_len(const char* src, const char* old, const char* new) {
  int count = get_occurance_amount(src, old);
  int len = strlen(src) + count * (strlen(new) - strlen(old)) + 1;
  return len;
}

char* replace(const char* src, const char* old, const char* new) {
  int len = get_new_len(src, old, new);
  char* new_str = malloc(len);

  const char* keep_str1 = src;
  const char* keep_str2 = src;

  char* new_str_current = new_str;
  while ((keep_str2 = strstr(keep_str2, old)) != NULL) {
    memcpy(new_str_current, keep_str1, keep_str2 - keep_str1);
    memcpy(new_str_current + (keep_str2 - keep_str1), new, strlen(new));
    new_str_current += (keep_str2 - keep_str1) + strlen(new);
    keep_str1 = keep_str2 + strlen(old);
    keep_str2 = keep_str1;
  }

  strcpy(new_str_current, keep_str1);

  return new_str;
}
