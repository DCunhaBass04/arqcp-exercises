#include <stdio.h>
#include "function.h"
void print_result(char op, int o1, int o2, int res)
{
	printf("%d %c %d = %d\n", o1, op, o2, res);
}

int main(void) {
	int a = 5, b = 2;
	
	printf("O valor calculado é %d\n",calculate(a,b));
	
}
