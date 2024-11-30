#include <stdio.h>
#include "function9.h"

int main()
{
	unsigned int d = 0xAABBCCDD;
	printf("%x\n", d);
	int r = sum_integer_bytes(&d);
	printf("sum of all bytes: %d\n", r);
	return 0;
}

