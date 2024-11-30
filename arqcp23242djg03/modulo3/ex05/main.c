#include <stdio.h>
#include "function.h"
int main(void) {
	int array[] = {-1, -1, -1};
	short size = sizeof(array) / sizeof(int);
	int avg = vec_avg(array, size);
	printf("The average of the chosen array is %d\n", avg);
	return 0;
}
