#include <stdio.h>
#include "function11.h"
int main()
{
	int list[] = {5, 3, 7, 2, 8, 4};
	//O 5 significa que há mais 5 valores à frente, não que o array tem 5 valores, como o enunciado faz parecer
	//Obrigado testes :)
	printf("soma de todos os elementos ímpares do array: %d\n", sum_odd(list));
	
}

