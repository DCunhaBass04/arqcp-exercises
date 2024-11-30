#include "function.h"
#include <stdio.h>
int main(void) {
	long value = 0xfffffffeffffffff;
	long *ptr = &value;
	char pos = 32;

	printf("Value: %d\n", set_bit(ptr, pos));
	return 0;
}



