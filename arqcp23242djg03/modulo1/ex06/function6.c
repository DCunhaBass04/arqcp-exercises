#include <stdio.h>

void capitalize2(char *str)
{
	while(*str != '\0'){
		if(*str >= 97 && *str <= 122){
			*str = *str - 32;
		}
		printf("%c", *str);
		str++;
	}
	printf("\n");
}

