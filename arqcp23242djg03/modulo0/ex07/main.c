#include <stdio.h>

int get_ascii_code(char c){
	return (int) c;
}

int main()
{
	char c;
	printf("Insert a single character.\n");
	scanf("%c", &c);
	printf("The ASCII code for the given character (%c) is %d\n", c, get_ascii_code(c));
	return 0;
}

