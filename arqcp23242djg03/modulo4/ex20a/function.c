#include <stddef.h>

int sum_multiples_x(char *vec, int x) {
    unsigned char third_byte = (x >> 16) & 0xFF;  // Extract the third byte of x
    int sum = 0;

    for (size_t i = 0; vec[i] != 0; ++i) {
        if (vec[i] % third_byte == 0) {
            sum += vec[i];
        }
    }

    return sum;
}