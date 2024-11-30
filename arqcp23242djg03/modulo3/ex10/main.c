#include <stdio.h>
#include "function.h"
int main(void) {
	char string1[] = {"O000"};
	char string2[] = {"neee"};
	char string3[(sizeof(string1)/sizeof(char)) + (sizeof(string2)/sizeof(char))];
	char* ptr1 = string1;
	char* ptr2 = string2;
	char* ptr3 = string3;

	str_cat(ptr1, ptr2, ptr3);

	for(size_t i = 0; i < sizeof(string3) -1; i++) {
    printf("%c", *(ptr3 + i));
	printf ("\n");
	}
	return 0;
}
