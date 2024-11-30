#include <stdio.h>
#include "function.h"

void printArray(int* array, int size){
	for(int i = 0; i < size; i++){
		printf("%d	", *(array + i));
	}
	printf("\n");
}

int main(void) {
	int array[] = {6, 12, -10, 3, 17, -3, -33, -5, 28};
	int size = sizeof(array) / sizeof(int);
	printf("Array before change\n");
	printArray(array, size);
	keep_positives(array, size);
	printf("Array after change\n");
	printArray(array, size);
	return 0;
}
