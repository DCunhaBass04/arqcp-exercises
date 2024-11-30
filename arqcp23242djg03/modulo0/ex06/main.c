#include <stdio.h>

int cmp(int a, int b){
	int resultado;
	if(a < b){
		resultado = -1;
	} else if (a == b) {
		resultado = 0;
	} else {
		resultado = 1;
	}
	return resultado;
}

int get_greater_digit(int n){
	int max = 0;
	while (n != 0) {
		int lastDigit = n % 10;
		if(cmp(lastDigit, max) == 1){
			max = lastDigit;
		}
		n /= 10;
	}
	return max;
}

int main()
{
	long long int num;
	int valid = 0;
	do{
		printf("Insert an integer:\n");
		scanf("%lld", &num);
		if(num >= 2147483647LL){
			printf("The inserted number is greater than what an int can hold.\n");
		} else {
			valid = 1;
		}
	}while(valid == 0);
	printf("The greatest digit in the inserted number is %d\n", get_greater_digit(num));
	return 0;
}

