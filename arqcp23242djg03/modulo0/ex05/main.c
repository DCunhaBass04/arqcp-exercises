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

int main()
{
	int num1, num2;
	printf("Insert two integers:\n");
	scanf("%d", &num1);
	scanf("%d", &num2);
	printf("\n%d\n", cmp(num1, num2));
	return 0;
}

