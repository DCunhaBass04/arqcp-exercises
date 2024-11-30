#include <stdio.h>
#include "function.h"
int main(void) {
	int array[] = {6, 2, 8, 3, 7, 3, 3, 5, 8};
	int size = sizeof(array) / sizeof(int), x = 8;
	int* searchX = vec_search(array, size, x);
	if(searchX == 0){
		printf("The number %d was not found inside the array\n", x);
	} else {
		printf("The number %d was found inside the array in the memory position %p\n", x, searchX);
	}
	return 0;
}
