#include <stdio.h>
#include "asm.h"

long A = 0, B = 0;

int main(void) {
	printf("Valor A:");
	scanf("%ld",&A);

	printf("Valor B:");
	scanf("%ld",&B);

	printf("\nResult: %hhd\n", isMultiple());
	
	return 0;
} 