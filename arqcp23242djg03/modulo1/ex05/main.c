#include <stdio.h>
#include "sum.h"

int main() {
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8};
    int n = sizeof(arr) / sizeof(arr[0]);

    int result = sum_even(arr, n);

    return 0;
}
