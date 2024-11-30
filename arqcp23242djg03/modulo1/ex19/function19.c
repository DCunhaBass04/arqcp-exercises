#include <stdio.h>

void swap(short* vec1, short* vec2, int size){
	for(int i = 0; i < size; i++){
		short a = *(vec1 + i);
		*(vec1 + i) = *(vec2 + i);
		*(vec2 + i) = a;
	}
}
