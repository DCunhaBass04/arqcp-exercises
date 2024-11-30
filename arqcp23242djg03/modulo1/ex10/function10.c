#include <stdio.h>

char* where_is(char *str, char c){
	while(*str != '\0'){
		if(c == *str){
			return str;
		}
		str++;
	}
	return NULL;
}

