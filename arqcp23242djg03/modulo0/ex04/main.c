#include <stdio.h>

int sum(int num1, int num2){
	return num1 + num2;
}

int mul(int num1, int num2){
	int produto = 0;
	for(int i = 0; i < num2; i++){
		produto = sum(produto, num1);
	}
	return produto;
}

int sum_digits(int n){
	int value = 0;
	while(n > 0){
		value = sum(value, n%10);
		n /= 10;
	}
	return value;
}

int main(int argc, char **argv)
{
	int num;
	printf("Insert an integer:\n");
	scanf("%d", &num);
	printf("The sum of all of the inserted number's algarisms is %d.\n",sum_digits(num));
	return 0;
}
