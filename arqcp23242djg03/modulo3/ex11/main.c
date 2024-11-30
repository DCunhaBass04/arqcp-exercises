#include <stdio.h>
#include "function.h"
int main(void) {
	int array[] = {6, 12, 10, 3, 17, 3, 33, 5, 28};
	int size = sizeof(array) / sizeof(int);
	printf("The array had a total of %d values that were greater than 12\n", vec_greater12(array, size));
	return 0;
}
