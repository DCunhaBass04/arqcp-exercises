#include <stdio.h>
#include "vector_operations.h"

int main() {
    int source[] = {1, 2, 3, 4, 5};
    int destination[5];  // Destination array to copy into

    int n = sizeof(source) / sizeof(source[0]);

    copy_vec(source, n, destination);

    return 0;
}
