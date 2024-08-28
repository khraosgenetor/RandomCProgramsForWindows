#include <stdbool.h>
#include <stdio.h>
#include <string.h>

void palinCheck(char str[]) {
  int len = strlen(str);
  if (str[len - 1] == '\n') {
    str[len - 1] = '\0';
    len--;
  }
  bool isPalin = true;
  for (int i = 0; i < len / 2; i++) {
    if (str[i] != str[len - 1 - i]) {
      isPalin = false;
      break;
    }
  }
  if (isPalin) {
    printf("The string is a palindrome.\n");
  } else {
    printf("The string is not a palindrome.\n");
  }
}

int main(int argc, char *argv[]) {
  char string[100];
  printf("Enter a string: ");
  fgets(string, 100, stdin);
  palinCheck(string);
  return 0;
}
