#include <stdio.h>
#include "function.h"

/*void proc(int x1, int *p1, int x2, int *p2, short x3, short *p3, char x4, char *p4){
	*p1 = x1 + x2;
	*p2 = x2 - x1;
	*p3 = x3 + x2;
	*p4 = x4 * 3;
}*/

/*int call_proc(int a, int b, short c, char d){
	int x1 = a, x2 = b;
	short x3 = c;
	char x4 = d;
	proc(x1,&x1,x2,&x2,x3,&x3,x4,&x4);
	return (x1 + x2) * (x3 - x4);
}*/

int main(void) {
	//int x1 = 5, x2 = 3;
	//short x3 = 4;
	//char x4 = '(';
	
	int a = 0, b = -1;
	short c = 0;
	char d = 0;
	
	//proc(x1, &x1, x2, &x2, x3, &x3, x4, &x4);
	printf("a: %d\nb: %d\nc: %hd\nd: %c\n\n",a,b,c,d);
	int valor = call_proc(a,b,c,d);
	printf("Result: %d\n", valor);
	printf("a: %d\nb: %d\nc: %hd\nd: %c\n",a,b,c,d);
	
	//printf("p1 = %d\np2 = %d\np3 = %hd\np4 = %c\n", x1, x2, x3, x4);
	
}
