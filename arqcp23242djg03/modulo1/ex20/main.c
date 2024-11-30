#include <stdio.h>
#include "compress.h"

int main() {
    int vec_ints[6] = {0x00010001, 0x00010002, 0x00010003, 0x00010004, 0x00010005, 0x00010006};
    long vec_longs[3];
    compress(vec_ints, 6, vec_longs);

    return 0;
}
