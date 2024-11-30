#include <stdio.h>
#include "function.h"
short op1 = 5000, op2 = 5000;
int main(void) {
	
	char res = verify_flags();
	printf("short1 = %d:0x%x\nshort2 = %d:0x%x\ncarry or overflow = %d\n", op1, op1, op2, op2, res);
	//1 for s1 = 0xf252 and s2 = 0x6325
	//1 for s1 = 0x4252 and s2 = 0x6325
	//0 for s1 = 0x4252 and s2 = 0x2215
	//0 for s1 = 0x0001 and s1 = 0x1001
	//1 for s1 = 0x0001 and s2 = 0x7fff
	
	return 0;
}
