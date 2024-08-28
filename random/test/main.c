#include <stdio.h>

void foo(int *s) { *s += 1; }

int main(int argc, char *argv[]) {
  int s = 1;
  printf("%d\n", s);
  foo(&s);
  printf("%d\n", s);
  return 0;
}
