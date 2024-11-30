#include <stdio.h>
#include "asm.h"

int n = 0;

int main(void) {
	printf("Valor n:");
	scanf("%d",&n);

	sigma();
	
	return 0;
} 
