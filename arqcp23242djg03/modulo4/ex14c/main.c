#include "function.h"
#include <stdio.h>
int main(void) {
	long value = 0x8000000000000001;
	long *ptr = &value;
	int pos = 12;

	set_2bits(ptr, pos);

	printf("Value: %ld\n", *ptr );
	return 0;
}



