#include <stdio.h>
#include "function.h"
int main(void) {
	short values[] = {1, 0, -1};
	short* ptr = values;
	int num = 3;
	
	vec_add_three(ptr, num);

	for(int i = 0; i < num; i++){
		printf("%hd", *(ptr + i));
		printf("\n");
	}
	return 0;
}
