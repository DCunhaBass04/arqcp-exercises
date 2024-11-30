#include <stdio.h>
#include "function.h"

short length1, length2, height;
int main(void) {
	
	printf("Valor length1:");
	scanf("%hd", &length1);
	
	printf("Valor length2:");
	scanf("%hd", &length2);
	
	printf("Valor height:");
	scanf("%hd", &height);
	
	int res = getArea();
	printf("the area for the trapeze with the inserted values is %d\n", res);
	
	return 0;
}
