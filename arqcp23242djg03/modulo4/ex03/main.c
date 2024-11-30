#include <stdio.h>
#include "function.h"
int main(void) {
	short s1 = 3, s2 = 5, s3 = 1;
	printf("Entre os três valores dados, o superior é %hd\n", greatest(s1, s2, s3));
	return 0;
}
