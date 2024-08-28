# README.md
## Overview of why this code is unsafe

This repository contains a simple C program that demonstrates array usage. However, the code contains a critical safety issue related to out-of-bounds array access.
### Code Explanation

```c

#include <stdio.h>
int main(int argc, char *argv[])
{
  int array[50];
  array[7000] = 0;
  printf("%d\n", array[7000]);
  return 0;
}
```

### Detailed Breakdown

- Line 1: Includes the standard input-output library.

- Line 2: Defines the main function, which is the entry point of the program.

- Line 3: Declares an array of integers named array with a size of 50. This means array can hold 50 integers, indexed from 0 to 49.

- Line 4: Attempts to assign the value 0 to the element at index 7000 in the array.

- Line 5: Tries to print the value stored at index 7000 of the array.

- Line 6: Returns 0, indicating that the program executed successfully.

### Potential Safety Issue

The code has a serious flaw due to the out-of-bounds access of the array. Here's why it's unsafe:

The array array[50] can only hold 50 elements, indexed from 0 to 49.
Attempting to access array[7000] is an out-of-bounds operation, meaning it tries to access memory that is not allocated for this array.
Undefined Behavior: In C, accessing memory outside the bounds of an array results in undefined behavior. This could lead to:
    Crashing of the program (segmentation fault).
    Corruption of other memory areas, potentially altering the behavior of the program or even the system.
    Security vulnerabilities, as an attacker could exploit this to execute arbitrary code.

### How to Fix

To fix this issue, you should ensure that all array accesses are within the valid range of the array's indices. For example, if you need to access a specific element in an array, you must ensure the index is within the bounds of the array:
```c

#include <stdio.h>
int main(int argc, char *argv[])
{
  int array[50];
  array[49] = 0; // Valid index
  printf("%d\n", array[49]); // Valid index
  return 0;
}
```

### Conclusion

This example illustrates how out-of-bounds array access in C can lead to undefined and unsafe behavior. Always validate array indices to prevent such issues and ensure your programs are secure and reliable.
