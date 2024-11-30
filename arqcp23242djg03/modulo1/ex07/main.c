#include <stdio.h>
#include "function7.h"

int main()
{
	int vec[] = {40, 10, 30, 70, 20, 60};
	int n = sizeof(vec)/sizeof(int);
	int min = 0, max = 0;
	float avg = 0;
	get_array_statistics(vec, n, &min, &max, &avg);
	printf("minimum: %d\nmaximum: %d\naverage: %f\n", min, max, avg);
	
	return 0;
}

