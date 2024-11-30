#include <stdio.h>
#include "asm.h"

short D = 0, C = 0;
char B = 0;
int A = 0;

int main(void) {
	printf("Valor A:");
	scanf("%d",&A);

	printf("Valor B:");
	scanf("%hhd",&B);

	printf("Valor C:");
	scanf("%hu",&C);

	printf("Valor D:");
	scanf("%hu",&D);

	printf("\nResult: %ld\n", sum_and_subtract());
	
	return 0;
}