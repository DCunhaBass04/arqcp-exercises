#include <stdio.h>
#include "function.h"
int main(void) {
	char string1[] = "Hello";
	char string2[] = "World";

	printf("Value: %d\n", test_different(string1, string2));
	return 0;
}
