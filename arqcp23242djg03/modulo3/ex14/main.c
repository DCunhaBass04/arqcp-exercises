#include <stdio.h>
#include "function.h"
int main(void) {
	int values[] = {1,0,1,};
	int* ptr = values;
	int num = 4;
	printf("%d", vec_diff(ptr, num));
	printf("\n");
	return 0;
}
