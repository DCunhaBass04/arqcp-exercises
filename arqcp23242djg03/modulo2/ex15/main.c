#include <stdio.h>
#include "function.h"

long A, B, C, D;
int main(void) {
	
	printf("Valor A:");
	scanf("%ld", &A);
	
	printf("Valor B:");
	scanf("%ld", &B);
	
	printf("Valor C:");
	scanf("%ld", &C);
	
	printf("Valor D:");
	scanf("%ld", &D);
	
	int res = compute();
	printf("compute result = %d\n", res);
		
	return 0;
}
