#include <stdio.h>
#include "function.h"

int goToMethod1(int option, int op1){
	int op2, res = 0;
	printf("operand 2 = ");
	scanf("%d",&op2);
	switch(option){
		case 1:
			res = sum(op1, op2);
			break;
		case 2:	
			res = subtraction(op1, op2);
			break;
		case 3:
			res = multiplication(op1, op2);
			break;
		case 4:
			res = division(op1, op2);
			break;
	}
	return res;
}

int goToMethod2(int option, int op1){
	int res = 0;
	switch(option){
			case 5:
				res = modulus(op1);
				break;
			case 6:
				res = powers(op1, 2);
				break;
			case 7:	
				res = powers(op1, 3);
				break;
	}
	return res;
}

int main(void) {
	int valid = 0, option, op1, res = 0;
	do{
		printf("Choose an option:\n1 - Sum\n2 - Subtraction\n3 - Multiplication\n4 - Division\n5 - Modulus\n6 - Power of 2\n7 - Power of 3\n");
		scanf("%d",&option);
		if(option >= 1 && option <= 7){
			valid = 1;
		} else {
			printf("Please insert a valid option\n");
		}
	}while(valid == 0);
	printf("operand 1 = ");
	scanf("%d",&op1);
	if(option >= 1 && option <= 4){
		res = goToMethod1(option, op1);
	} else {
		res = goToMethod2(option, op1);
	}
	printf("res = %d\n", res);
	return 0;
}
