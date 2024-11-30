#include <stdio.h>

void capitalize(char *str)
{
	int i = 0;
	while(str[i] != '\0'){
		if(str[i] >= 97 && str[i] <= 122){
			str[i] = str[i] - 32;
		}
		printf("%c", str[i]);
		i++;
	}
	printf("\n");
}

