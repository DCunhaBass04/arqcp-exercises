#include <stdio.h>
#include "asm.h"

int main(){
	int read = 0, write = 0, value = 4;
    int array[4];
    int size = sizeof(array)/sizeof(int);
    
    enqueue_value(array, size, &read, &write, value);
    
}

