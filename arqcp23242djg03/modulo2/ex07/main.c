#include <stdio.h>
#include "asm.h"
short s1=0, s2=0;
int main(void) {
	/*printf("Valor op1:");
	scanf("%hu",&op1);

	printf("Valor op2:");
	scanf("%hu",&op2);

	exchangeBytes();

	printf("Variavel: %hd\n", op2);*/

	printf("Valor s1:");
	scanf("%hd",&s1);

	printf("Valor s2:");
	scanf("%hd",&s2);

	printf("\nResult: %hd\n", crossSubBytes());
	
	return 0;
}
