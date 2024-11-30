#include "function.h"
#include <stdio.h>
int main(void) {
	int values[] = {2,1,0};
	int* ptr = values;

	changes(ptr);
	return 0;
}

