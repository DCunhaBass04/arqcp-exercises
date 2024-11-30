#include "function.h"
#include <stdio.h>
int main(void) {
	long value = 0x7fff;
	long *ptr = &value;
	char pos = 15;

	printf("Value: %d\n", set_bit(ptr, pos));
	return 0;
}

