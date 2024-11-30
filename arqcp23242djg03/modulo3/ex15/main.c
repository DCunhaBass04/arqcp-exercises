#include <stdio.h>
#include "function.h"

int main(void) {
	long array[] = {665456737, 76543456712, 16780, 8895443};
	int size = sizeof(array) / sizeof(long);
	printf("The sum of the third byte on every element of the given array is %d\n", sum_third_byte(array, size));
	return 0;
}
