#include "function.h"
#include <stdio.h>
int main(void) {
	int values[] = {-1,-2,-4};
	int* ptr = values;
	int num = 3;
	printf("Value: %d\n", vec_count_bits_zero(ptr, num));
	return 0;
}

