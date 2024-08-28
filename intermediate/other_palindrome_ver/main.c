#include <stdbool.h>
#include <stdio.h>
#include <string.h>

bool isPalin(char str[]) {
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
  return isPalin;
}

int main(int argc, char *argv[]) {
  char string[100];
  printf("Enter a string: ");
  fgets(string, 100, stdin);
  if (isPalin(string)) {
    printf("%s is a palindrome.\n", string);
  } else {
    printf("%s is not a palindrome.\n", string);
  }
  return 0;
}
