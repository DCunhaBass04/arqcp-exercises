#include <stdio.h>
#include "function.h"

short code, currentSalary;
int main(void) {
	
    printf("code = ");
    scanf("%hd", &code);
    printf("current salary = ");
    scanf("%hd", &currentSalary);

    int renewedSalary = new_salary();
    printf("new salary = %d\n", renewedSalary);
    return 0;
}
