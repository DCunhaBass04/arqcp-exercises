#include <stdio.h>
#include "function.h"

void printArray(int* array, int size){
	printf("Absolute frequency\n");
	for(int i = 0; i < size; i++){
		printf("%d	-	%d\n", i, *(array + i));
	}
}

int main(void) {
	char grades[] = {13, 6, 11, 17, 0, 19, 4, 3, 18, 1, 17, 11, 20, 17, 6};
	int frequency[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
	int size1 = sizeof(grades) / sizeof(char);
	int size2 = sizeof(frequency) / sizeof(int);
	frequencies(grades, size1, frequency);
	printArray(frequency, size2);
	return 0;
}
