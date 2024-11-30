#include <stdio.h>

void array_sort(int *vec, int n) {
	for(int i = 0; i < n - 1; i++){
		for(int j = i; j < n; j++){
			if(*(vec + i) > *(vec + j)){
				int a = *(vec + i);
				*(vec + i) = *(vec + j);
				*(vec + j) = a;
			}
		}
	}
}
