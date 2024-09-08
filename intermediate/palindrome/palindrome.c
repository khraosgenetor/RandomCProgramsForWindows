#include <stdio.h>
#include <string.h>

void reverse_string(char str[]) {
    int n = strlen(str);
    for (int i = 0; i < n / 2; i++) {
        char temp = str[i];
        str[i] = str[n - i - 1];
        str[n - i - 1] = temp;
    }
}

int main(int argc, char *argv[])
{
  printf("Enter the string to check if it is a palindrome (within 100 characters): ");
  char string[100], rev_string[100];
  fgets(string, 100, stdin);

  // Remove the trailing newline character from fgets
  string[strcspn(string, "\n")] = 0;

  strcpy(rev_string, string);
  reverse_string(rev_string);
  if (strcmp(string, rev_string) == 0) {
    printf("The string is a palindrome.\n");
  } else {
    printf("The string is not a palindrome.\n");
  }
  printf("Press any key to continue...\n");
  getchar(); // Wait for user to press Enter
  return 0;
}
