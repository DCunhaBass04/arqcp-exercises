#include <stdio.h>
#include "asm.h"

int main(){
	int array[] = {3, 6, 1, 3, 7};
	int size = sizeof(array)/sizeof(int);
	
	printf("%d\n", mediana(array, size));
    
}
