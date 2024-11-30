#include <stdio.h>
#include "function13.h"
int main()
{
	short array1[] = {3, 6, 1, 3, 7, 2, 7};
	int size = sizeof(array1) / sizeof(short);
	short array2[size];
	int valuesPlaced = sort_without_reps(array1, size, array2);
	printf("Número de valores colocados no segundo array: %d\n", valuesPlaced);
	for(int i = 0; i < valuesPlaced; i++){
		printf("%d ", array2[i]);
	}
	printf("\n");
}

