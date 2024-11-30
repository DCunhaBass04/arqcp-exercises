#include <stdio.h>
#include "function.h"
int main(void) {
	int values[] = {1000};
	int* ptr = values;
	int num = 1;

	printf("%c\n", vec_zero(ptr, num));

	for(int i = 0; i < num; i++){
		printf("%hd", *(ptr + i));
		printf("\n");
	}

	return 0;
}
