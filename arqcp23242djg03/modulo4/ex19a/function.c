#include <stdio.h>

void add_byte(char x, int *vec1, int *vec2){
    vec2[0] = vec1[0];
    short byteToSwap;

    for (int i = 1; i <= vec1[0]; i++) {
        byteToSwap = (vec1[i] >> 8) + x;
        vec2[i] = (vec1[i] & 0xFFFF00FF) | ((char)(byteToSwap & 0xFF) << 8);
    }
}
