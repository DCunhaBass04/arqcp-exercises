#include <stdio.h>
#include <limits.h>

void get_array_statistics(int* vec, int n, int* min, int* max, float* avg)
{
	*max = INT_MIN;
	*min = INT_MAX;
	*avg = 0;
	
	//Se o array for null
	 if (n == 0) {
        *min = 0;
        *max = 0;
        return;
    }
    
	for(int i = 0; i < n; i++){
		if(vec[i] < *min){
			*min = vec[i];
		}
		if(vec[i] > *max){
			*max = vec[i];
		}
		*avg += vec[i];
	}
	*avg = *avg / n;
}

