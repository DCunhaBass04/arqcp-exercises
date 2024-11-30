#include "function.h"
#include <stdio.h>
int main(void) {
	long a = 1;
	long b = 15;
	char pos = 31;

	printf("Value: %ld\n", join_bits(a, b, pos));
	return 0;
}

