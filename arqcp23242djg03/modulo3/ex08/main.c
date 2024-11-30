#include <stdio.h>
#include "function.h"
int main(void) {
int values[] = {-1,-1,-1};
int* ptr = values;
int num = 3;

	printf("%d\n", vec_sum_even(ptr, num));

	return 0;
}
