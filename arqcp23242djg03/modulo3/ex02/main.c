#include <stdio.h>
#include "function.h"
int main(void) {
	char ptr1[] = "Eu qUero ver se este método fUnciona como quero";
	int size = sizeof(ptr1) / sizeof(char);
	char ptr2[size];
	str_copy_roman(ptr1, ptr2);
	for(int i = 0; i < size; i++){
		printf("%c", *(ptr1 + i));
	}
	printf("\n");
	for(int i = 0; i < size; i++){
		printf("%c", *(ptr2 + i));
	}
	printf("\n");
	return 0;
}
