#include <stdio.h>
#include "function.h"
int main(void) {
	short array[] = {5,3,7,2,6,3,5};
	int size = sizeof(array)/sizeof(short);
	
	printf("Número de elementos pares no array %d\n", count_even(array, size));
}
