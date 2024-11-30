#include <stdio.h>
#include "function.h"
int main(void) {
	char ptr[] = "This is a t5st, i want to know how many 5 are in this char array";
	int count = five_count(ptr);
	printf("The selected string has %d '5' characters inside\n", count);
	return 0;
}
