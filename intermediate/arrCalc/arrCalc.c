#include <stdio.h>
int main(int argc, char *argv[]) {
  char ch;
  printf("The four operators are: +, -, *, /.\n");
  printf("Enter your choice: ");
  scanf("%c", &ch);
  if (ch == '+' || ch == '-' || ch == '*' || ch == '/') {
    printf("Enter the number of operands: ");
    int args;
    double r = 0;
    scanf("%d", &args);
    double nArgs[args];
    printf("Enter the operands: \n");
    for (int i = 0; i < args; i++) {
      printf("Operand %d: ", i + 1);
      scanf("%lf", &nArgs[i]);
    }
    if (ch == '/') {
      r = nArgs[args - 1];
    } else if (ch == '*') {
      r = 1.0;
    } else if (ch == '-') {
      r = nArgs[0];
    }

    for (int i = 0; i < args; i++) {
      switch (ch) {
      case '+':
        r = r + nArgs[i];
        break;
      case '-':
        r = r - nArgs[i + 1];
        if (i == args - 1) {
          break;
        }
        break;
      case '*':
        r = r * nArgs[i];
        break;
      case '/':
        r = r / nArgs[i];
        break;
      }
    }
    printf("The result of the calculation is: %lf\n", r);
  } else {
    printf("%s", &"Invalid operator: %c\n"[ch]);
  }
  return 0;
}
