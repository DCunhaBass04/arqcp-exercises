#include "function.h"
#include <stdio.h>
int main(void) {
	char values[] = {0, 1};
	char* vec = values;
	int x = 0x10000;

	printf("Value: %d\n", sum_multiples_x(vec, x));
	return 0;
}

