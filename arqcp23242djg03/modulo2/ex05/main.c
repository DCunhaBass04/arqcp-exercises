#include <stdio.h>
#include "asm.h"
//int op1=0, op2=0;
short s1 = 0x1b12;
int main(void) {
	
	/*printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);
	
	int res1 = sum();
	printf("sum = %d:0x%x\n", res1,res1);
	
	long res2 = another_sum();
	printf("another sum = %ld\n", res2);
	
	long res3 = yet_another_sum();
	extern long op3, op4;
	printf("yet another sum = %ld op3: %ld op4: %ld\n", res3, op3, op4);*/
	
	short res4 = swapBytes();
	printf("original short = %d:0x%x\nswapBytes = %d:0x%x\n", s1, s1, res4, res4);
	
	return 0;
}
