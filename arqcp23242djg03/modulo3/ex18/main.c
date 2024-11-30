#include <stdio.h>
#include "function.h"

void printArray(short* array, int size){
	for(int i = 0; i < size; i++){
		printf("%d	", *(array + i));
	}
	printf("\n");
}

int main(void) {
	short array1[] = {4, 6, 2, 6, 2, 7, 3, 8, 1};
	int size = sizeof(array1) / sizeof(short);
	short array2[size];
	printf("Array before change\n");
	printArray(array1, size);
	int newSize = sort_without_reps(array1, array2, size);
	printf("Array after change\n");
	printArray(array1, size);
	printf("Second Array\n");
	printArray(array2, newSize);
	printf("Number of values inserted: %d\n",newSize);
	return 0;
}
