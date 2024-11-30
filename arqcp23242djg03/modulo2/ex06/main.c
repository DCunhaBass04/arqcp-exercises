#include <stdio.h>
#include "asm.h"
short op1=0, op2=0, s1=0, s2=0;
int main(void) {
	printf("Valor op1:");
	scanf("%hu",&op1);

	printf("Valor op2:");
	scanf("%hu",&op2);

	exchangeBytes();

	printf("Variavel: %hd\n", op2);

	return 0;
}