#include <stdio.h>
#include "function.h"

void printArray(int* array, int size){
	for(int i = 0; i < size; i++){
		printf("%d	", *(array + i));
	}
	printf("\n");
}

int main(void) {
	int array[] = {3, 6, 2, 5, 4, 7, 1};
	int size = sizeof(array) / sizeof(int);
	printf("Array before change\n");
	printArray(array, size);
	array_sort(array, size);
	printf("Array after change\n");
	printArray(array, size);
	return 0;
}
