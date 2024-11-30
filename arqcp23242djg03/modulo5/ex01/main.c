#include <stdio.h>

union union_u1{
	char vec[32];
	float a;
	int b;
} u;

struct struct_s1{
	char vec[32];
	float a;
	int b;
} s;

int main(){
	
	printf("Union u size: %ld\nStruct s size: %ld\n", sizeof(u), sizeof(s));
	//Enquanto o Struct coloca os itens uns depois dos outros (daí o tamanho ser 40, 32 + 4 + 4)...
	//...o Union coloca os itens uns em cima dos outros de forma a otimizar espaço (daí só dar 32), como registos em assembly (%rax, %eax, etc.)
	
	
	return 0;
}
