#include <stdio.h>
#include <limits.h>

int sort_without_reps(short *src, int n, short *dest){
	if(n != 0){
		int min = INT_MAX;
		for(int i = 0; i < n; i++){
			if(*(src + i) < min){
				min = *(src + i);
			}
		}
		*dest = min;
		int j;
		for(j = 1; j < n; j++){
			min = INT_MAX;
			for(int i = 0; i < n; i++){
				if(*(src + i) > *(dest + j - 1) && *(src + i) < min){
					min = *(src + i);
				}
			}
			if(min == INT_MAX){
				return j;
			} else {
				*(dest + j) = min;
			}
		}
		return j;
	} else return 0;
}
