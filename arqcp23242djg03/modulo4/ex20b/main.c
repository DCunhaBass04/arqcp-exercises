#include "function.h"
#include <stdio.h>
int main(void) {
	char values[] = {3,5,11,12,7,4,0};
	char* vec = values;
	int x = 0xf030100;

	printf("Value: %d\n", sum_multiples_x(vec, x));
	return 0;
}

