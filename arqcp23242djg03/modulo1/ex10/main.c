#include <stdio.h>
#include "function10.h"

int main()
{
	char string[] = "Palavra";
	char caracter = 'r';
	char* charPlace = where_is(string, caracter);
	if(charPlace != NULL){
		printf("O caracter %c está no endereço %p\n", caracter, charPlace);
	} else {
		printf("O caracter %c não foi encontrado\n", caracter);
	}
}

