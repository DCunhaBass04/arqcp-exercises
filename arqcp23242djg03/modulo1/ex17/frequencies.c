// frequencies.c
#include "frequencies.h"

void frequencies(float *grades, int n, int *freq) {
    for (int i = 0; i < n; i++) {
        int intPart = (int)*(grades +i);  // Extract the integer part of the grade
 int *currentFreq = freq + intPart;
        (*currentFreq)++;  // Increment the corresponding frequency    }
}
}
