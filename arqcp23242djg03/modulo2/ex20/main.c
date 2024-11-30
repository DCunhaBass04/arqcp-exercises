#include <stdio.h>
#include "asm.h"

long num = 0;

int main(void) {
	printf("Valor num:");
	scanf("%ld",&num);

	printf("\nResult: %d\n", check_num());
	
	return 0;
} 