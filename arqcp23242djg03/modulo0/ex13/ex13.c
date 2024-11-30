#include <stdio.h>

int main()
{	
	printf("Insert a single character.\n");
	char c;
	scanf("%c", &c);
	char string[50];
	printf("Insert a string.\n");
	fgets(string, sizeof(string), stdin);
	printf("The character '%c' is found %d times in the inserted string", c, count_char(string, (int)c));
	free(c);
	free(string);
	return 0;
}

