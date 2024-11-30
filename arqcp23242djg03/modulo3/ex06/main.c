#include <stdio.h>
#include "function.h"
int main(void) {
	char phrase[] = {" ABBA "};
	char* ptr = phrase;

	printf("%d\n", encrypt(ptr));
	printf("%s\n", ptr);
	return 0;
}
