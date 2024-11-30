// main.c
#include <stdio.h>
#include "variables.h"

int main() {
    // Initialize variables
    initializeVariables();

    // Declare pointers to variables
    double *doublePtr = &myDouble;
    int *intPtr = &myInt;
    char *charPtr = &myChar;

    // Print the address, value, and size of each variable and pointer
    printf("Double - Address: %p, Value: %lf, Size: %lu bytes\n", (void *)doublePtr, *doublePtr, sizeof(*doublePtr));
    printf("Int - Address: %p, Value: %d, Size: %lu bytes\n", (void *)intPtr, *intPtr, sizeof(*intPtr));
    printf("Char - Address: %p, Value: %c, Size: %lu bytes\n", (void *)charPtr, *charPtr, sizeof(*charPtr));

    return 0;
}
