#include <stdio.h>
#include "function.h"
int main(void) {
	int a = 1;
	int value = 2;
	int* b = &value;
	int c = 1;

	printf("Value: %d\n", calc(a, b, c));
	return 0;
}
