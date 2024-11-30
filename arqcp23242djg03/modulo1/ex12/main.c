#include <stdio.h>
#include "function12.h"

int main()
{
	int list[] = {5, 1, 4, 2, 6};
	int arraySize = sizeof(list) / sizeof(int);
	
	array_sort(list, arraySize);
	
	for(int i = 0; i < arraySize; i++){
		printf("%d ", list[i]);
	}
	printf("\n");
}

