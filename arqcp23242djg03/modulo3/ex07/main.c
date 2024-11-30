#include <stdio.h>
#include "function.h"

int main(void) {
	char phrase[] = "Jtup f aqfoat vn uftuf";
	printf("%s\n", phrase);
	int decriptedChars = decrypt(phrase);
	printf("%s\n", phrase);
	printf("Number of decrypted characters in that string is %d\n", decriptedChars);
	return 0;
}
