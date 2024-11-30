#include <stdio.h>
int sum_odd(int *p){
	int size = *p, sum = 0;
	for(int i = 0; i < size; i++){
		p++;
		if((*p % 2) != 0)
		{
			sum += *p;
		}
	}
	return sum;
}
