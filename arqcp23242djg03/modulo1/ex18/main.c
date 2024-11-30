#include <stdio.h>
#include "functions.h"

int main() {
    unsigned char vec[50];
    populate(vec, 50, 20);
    int count = 0;

    for (int i = 0; i < 48; i++) {
        if (check(*(vec + i), *(vec + i + 1), *(vec + i + 2)))
            inc_nsets(&count);
    }

    return 0;
}
