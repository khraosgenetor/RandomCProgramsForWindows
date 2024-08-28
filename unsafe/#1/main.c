#include <stdio.h>
int main(int argc, char *argv[])
{
  int array[50];
  array[7000] = 0;
  printf("%d\n", array[7000]);
  return 0;
}
