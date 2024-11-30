#include <stdio.h>

#include "vector_operations.h"

void copy_vec(int *vec1, int n, int *vec2) {
    int *src_ptr = vec1;
    int *dest_ptr = vec2;

    for (int i = 0; i < n; i++) {
        *dest_ptr = *src_ptr;
        *dest_ptr++;
        *src_ptr++;
    }
}
