#include <stdio.h>
#include "function.h"

int main(void) {
	int array[] = {3, 6, 2, 5, 4, 7, 1};
	int* ptr = array;
	int num = 8;
	printf("%d", count_max(ptr, num));
	return 0;
}
