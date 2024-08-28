#include <stdio.h>
int main(int argc, char *argv[]) {
  char ch;
  do {
    int n;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    if (n > 0) {
      int arr[n];
      for (int i = 0; i < n; i++) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr[i]);
      }
      int max = arr[0];
      int min = arr[0];
      for (int i = 0; i < n; i++) {
        if (max < arr[i]) {
          max = arr[i];
        }
        if (arr[i] < min) {
          min = arr[i];
        }
      }
      printf("The largest element is: %d\n", max);
      printf("The smallest element is: %d\n", min);
      printf("The range of the array is: %d\n", max - min);
      return 1;

    } else {
      printf("Invalid input: %d\n", n);
      printf("Do you want to continue? (y/n): ");
      scanf(" %c", &ch);
    }
  } while (ch == 'y' || ch == 'Y');
  return 0;
}
