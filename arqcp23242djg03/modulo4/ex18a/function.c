#include <stdint.h>

void changes(int *ptr) {
    unsigned char *byte_ptr = (unsigned char*)ptr;

    if (byte_ptr[3] > 15) {
        byte_ptr[2] = ~byte_ptr[2];
    }
}