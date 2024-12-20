#include "compress.h"

void compress(int* vec_ints, int n, long* vec_longs) {
    for (int i = 0; i < n; i += 2) {
        *(vec_longs + i / 2) = ((long)*(vec_ints + i + 1) << 32) | *(vec_ints + i);
    }
}
