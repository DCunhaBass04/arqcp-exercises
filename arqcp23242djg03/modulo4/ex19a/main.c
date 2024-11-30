#include <stdio.h>
#include "function.h"

void printArray(int* array){
	printf("Estado do array:\n");
	for(int i = 1; i <= *array; i++){
		printf("0x%x		", *(array + i));
	}
	printf("\n");
}

int main()
{
	char charToAdd = 5;
	
	int vec1[] = {6,0xffffffff,0xff00,0xfffff0ff,0xfffff8ff,0,4};
	int vec2[] = {6, 0, 0, 0, 0, 0, 0};
	
	add_byte(charToAdd, vec1, vec2);
	
	printArray(vec1);
	printArray(vec2);
}

