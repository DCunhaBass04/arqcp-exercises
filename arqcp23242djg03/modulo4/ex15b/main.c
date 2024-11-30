#include <stdio.h>
#include "function.h"

int main()
{
	long value = -1L;
	char left = 31;
	char right = 0;
	
	long postValue = reset_bits(value, left, right);
	
	printf("Before:	0x%lx\nAfter:	0x%lx\n", value, postValue);
}

