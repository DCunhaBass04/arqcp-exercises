#include "function.h"
#include <stdio.h>
int main(void) {
	int value = 0;
	int* ptr = &value;

	changes(ptr);
	return 0;
}

