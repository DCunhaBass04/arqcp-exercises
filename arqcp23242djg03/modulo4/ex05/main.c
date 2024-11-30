#include <stdio.h>
#include "function.h"
int main(void) {
	short inc = 1;
	int value = 3;
	printf("Valor ao cubo %ld\n", inc_and_cube(&inc, value));
	printf("Valor incrementado: %d\n", inc);
}
