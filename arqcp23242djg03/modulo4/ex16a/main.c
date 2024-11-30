#include "function.h"
#include <stdio.h>
int main(void) {
	long a = 0;
	long b = -1;
	char pos = 63;

	printf("Value: %ld\n", join_bits(a, b, pos));
	return 0;
}

