// main.c
#include <stdio.h>
#include "frequencies.h"

int main() {
    float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
    int n = sizeof(grades) / sizeof(float);
    int freq[21] = {0};  // Initialize the frequency array with zeros

    frequencies(grades, n, freq);

    return 0;
}
