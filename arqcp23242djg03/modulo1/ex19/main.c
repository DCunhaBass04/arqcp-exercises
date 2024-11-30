#include <stdio.h>
#include "function19.h"

void printArray(short* arr, int size){
	for(int i = 0; i < size; i++){
		printf("%d ", *(arr + i));
	}
	printf("\n");
}

int main()
{
	short arr1[] = {1, 3, 5, 7, 9};
	short arr2[] = {0, 2, 4, 6, 8};
	int size = sizeof(arr1)/sizeof(short);
	swap(arr1, arr2, size);
	printf("arr1 values: ");
	printArray(arr1, size);
	printf("\narr2 values: ");
	printArray(arr2, size);
}

