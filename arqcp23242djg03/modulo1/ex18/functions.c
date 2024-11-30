#include <stdio.h>
#include "functions.h"
#include <stdlib.h>

int num_sets = 0;

void populate(unsigned char *vec, int num, unsigned char limit) {
    for (int i = 0; i < num; i++) {
        *(vec +i) = rand() % (limit + 1);
    }
}

int check(unsigned char x, unsigned char y, unsigned char z) {
    if (x < y && y < z)
        return 1;
    return 0;
}

void inc_nsets(int *count) {
    (*count)++;
}
