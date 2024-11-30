#include <stdio.h>
#include "count_char.h"

int main()
{	
	printf("Insert a single character.\n");
	char c;
	scanf(" %c", &c);
	getchar();
	printf("Insert a string.\n");
	char string[50];
	fgets(string, sizeof(string), stdin);
	printf("The character '%c' is found %d times in the inserted string\n", c, count_char(string, (int)c));
	return 0;
}

