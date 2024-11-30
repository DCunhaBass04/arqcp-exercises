#include <stdio.h>

int sum_integer_bytes(unsigned int *p){
	int sum = 0;
	unsigned char* charPointer = (unsigned char*)p;
	for(int i = 0; i < (int) sizeof(unsigned int); i++){
		sum += *charPointer;
		printf("%x\n", *charPointer);
		charPointer++;
	}
	return sum;
}

