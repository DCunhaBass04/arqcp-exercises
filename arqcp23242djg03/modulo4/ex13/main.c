#include <stdio.h>
#include "function.h"

int main()
{
	short value = 0xB47A;
	char n = 4;
	printf("0x%X\n", value);
	printf("0x%X\n", rotate_left(value, n));
	printf("0x%X\n", rotate_right(value, n));
}

