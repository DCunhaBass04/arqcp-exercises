#include <stdio.h>
#include "function.h"

char current = 5, desired = -5;
int main(void) {
	
    //printf("tempInicial = ");
    //scanf("%hhd", &tempInicial);
    //printf("tempFinal = ");
    //scanf("%hhd", &tempFinal);

    short time = needed_time();
    printf("needed time = %hd\n", time);
    return 0;
}
