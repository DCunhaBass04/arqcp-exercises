#include <stdio.h>
#include "function.h"
int main(void) {
	int num1 = 0;
	int num2 = -1;

	int value = 0;
	int* ptrsub = &value;

	printf("A soma dos número é %d\n", sum_sub(num1, num2, ptrsub));
	printf("A subtração é: %d\n", *ptrsub);
	return 0;
}
