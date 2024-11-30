#include <stdio.h>

int array_size(char *string){
	int i = 0;
	while(*(string + i) != '\0'){
		i++;
	}
	return i;
}

int distance(char *a, char *b){
	int sizeA = array_size(a);
	int sizeB = array_size(b);
	
	if(sizeB != sizeA){
		return -1;
	}
	
	int totalDiff = 0;
	for(int i = 0; i < sizeA; i++){
		if(*(a + i) != *(b + i)){
				totalDiff++;
		}
	}
	return totalDiff;
}

