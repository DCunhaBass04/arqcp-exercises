#include <stdio.h>
#include "function.h"
int main(void) {
	char string1[] = {-1,2,3,4};
	char string2[] = {-10,-10,-10,-20};
	int num = 4;
	char* ptr1 = string1;
	char* ptr2 = string2;
	swap(ptr1, ptr2, num);
	for(int i = 0; i < num; i++){
		printf("%c", *(ptr1 + i));
	}
	printf("\n");
	for(int i = 0; i < num; i++){
		printf("%c", *(ptr2 + i));
	}
	printf("\n");
	return 0;
}
