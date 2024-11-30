#include <stdio.h>

int printBar(){
	for(int i = 0; i < 90; i++){
		printf("-");
	}
	printf("\n");
	return 0;
}

int printTests(){
	printBar();
	
	int x = 5;
	int* ptr_x = &x;
	float y = *ptr_x + 3;
	
	printf("x value: %d\ny value: %f\n\n", x, y);
	//Aqui vemos que y printou 4, o valor apontado por ptr_x (que é 1) mais 3. Aqui o "+ 3" não avançou a posição na memória mas sim o valor
	
	printf("x address: %p\ny address: %p\nptr_x address: %p\n\n", &x, &y, &ptr_x);
	//Aqui vemos que nenhuma destas variáveis partilha o mesmo endereço de memória, nem o x com o ptr_x
	
	printf("ptr_x value: %p\n\n", ptr_x);
	//Ao printar o valor de ptr_x, vemos que este armazena o endereço do x. Por isso é que utilizamos pointers
	
	printf("ptr_x poined value: %d\n", *ptr_x);
	//Assim como o armazenamento de endereços, pointers também permitem-nos aceder ao valor nesse mesmo endereço
	
	//--------------------------------------------------------------------
	printBar();
	
	int vec[] = {10, 20, 30, 40};
	int* ptr_vec = vec;
	int z = *ptr_vec;
	int h = *(ptr_vec + 3);	
	
	printf("z value: %d\nh value: %d\n\n", z, h);
	//Ao printar z, vemos que este tem o valor 10, o primeiro do array vec[], visto que a ptr_vec aponta para o 1º endereço do vec[] e foi atribuído a z o valor para o qual ptr_vec aponta
	//Ao printar h, vemos que este tem o valor 40, o quarto do array vec[]. Ao igualar h ao valor *(ptr_vec + 3), vai lhe ser atribuido o valor posicionado 12 bytes (4 do int vezes 3 somados) à frente do ptr_vec base, chegando à 4ª posição do array
	//Assim, vemos que o array e o seu pointer serem do mesmo tipo (int) ajuda a percorrer as posições do mesmo array.
	
	printf("vec address: %p\nptr_vec address: %p\n\n", &vec, &ptr_vec);
	//Ao printar estes dois endereços, vemos que não são iguais. O endereço do pointer não é o mesmo do objeto para o qual aponta, assim como tinhamos visto anteriormente com o x e o ptr_x
	
	printf("ptr_vec value: %p\n", ptr_vec);
	//Aqui vemos que o valor ptr_vec é o mesmo que o endereço de vec
	for(int i = 0; i < (int)(sizeof(vec)/sizeof(int)); i++){
		printf("vec[%d] value: %d\n", i, vec[i]);
	}
	printf("\n");
	
	printf("ptr_vec pointed value: %d\n", *ptr_vec);
	//O ptr_vec aponta para o 1º endereço de vec, assim o valor para o qual aponta é apenas o 1º valor de vec, 10
	
	//Concluindo, vemos que apenas o 1º endereço de vec fica contido no valor de ptr_vec
	
	//--------------------------------------------------------------------
	printBar();
	
	int i;
	for(i = 0; i < 4; i++){
		printf("1: %p,%d\t", &vec[i],vec[i]);
	}
	printf("\n");
	for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){
		printf("2: %p,%d\t", ptr_vec,*ptr_vec);
	}
	printf("\n");
	for(ptr_vec = vec + 3; ptr_vec >= vec; ptr_vec--){
		printf("3: %p,%d\t", ptr_vec,*ptr_vec);
	}
	printf("\n");
	
	//Ao executar este código, vemos que os dois primeiros "for" produzem o mesmo fim. Ambos produzem os mesmos endereços e valores.
	//Isto mostra-nos que os endereços de um array são seguidos, já que incrementar o index do array int resultou nos mesmos valores que incrementar o seu pointer (também int)
	//O terceiro "for" printa os mesmos endereços e valores mas do último até o primeiro. Assim vemos que incrementar e decrementar um pointer é seguro se este for do mesmo tipo do objeto para o qual aponta
	//ptr_vec++ incrementa o pointer, passando 4 endereços à frente (visto que é int), chegando ao próximo valor de vec
	//ptr_vec-- decrementa o pointer, indo 4 endereços para trás (visto que é int), chegando ao valor anterior de vec
	
	printf("\n");
	ptr_vec = vec;
	printf("4: %p,%d\n", ptr_vec,*ptr_vec);
	int a = *ptr_vec++;
	printf("5: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
	ptr_vec = vec;
	a = (*ptr_vec)++;
	printf("6: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
	ptr_vec = vec;
	a = *++ptr_vec;
	printf("7: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
	ptr_vec = vec;
	a = ++*ptr_vec;
	printf("8: %p,%d,%d\n", ptr_vec,*ptr_vec, a);
	printf("\n");
	for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){
		printf("9: %p,%d\t", ptr_vec,*ptr_vec);
	}
	printf("\n");
	
	//Ao executar este código, vemos alterações nos valores de vec
	//No 4, apenas printamos ptr_vec e o valor para o qual aponta, nenhum alterado
	//No 5, vemos que atribuímos a "a" o valor de ptr_vec e depois incrementamos o ptr_vec (*ptr_vec++ age como *(ptr_vec++), mudando o endereço contido em vez do seu valor), apontando assim para a próxima posição de vec (como vimos anteriormente)
	//No 6, ptr_vec volta a apontar para 1ª posição de vec e "a" fica com o seu valor. Posteriormente, o valor apontado por ptr_vec é incrementado (visto que fizemos (*ptr_vec)++, incrementando o valor apontado no endereço em vez do endereço em si), passando de 10 para 11
	//No 7, voltamos a incrementar o endereço contido em ptr_vec, mas desta vez, devido à posição do "++" (entre o "*" e o "ptr_vec"), o "a" também muda para o valor da segunda posição de vec
	//No 8, vemos o valor apontado por ptr_vec a ser alterado (como no 6) mas o valor de "a" fica com esse mesmo valor (como no 7)
	//No 9, percorremos as posições de vec. Vemos que os endereços e valores não alteraram com exceção do primeiro valor que mudou de 10 para 12 (foi incrementado duas vezes, no 6 e no 8)
	//Através deste exercício vemos a importância da posição do "++" ao incrementar um pointer ou o seu valor apontado
	
	printf("\n");
	unsigned int d = 0xAABBCCDD;
	printf("10: %p,%x\t", &d,d);
	printf("\n");
	unsigned char* ptr_d = (unsigned char*)&d;
	unsigned char* p;
	for(p = ptr_d; p < ptr_d + sizeof(unsigned int); p++){
		printf("11: %p,%x\t", p,(unsigned char)*p);
	}
	
	//Através deste exercício vemos a importância do tipo do pointer em relação com o tipo do valor apontado
	//NO 11, ao criar e incrementar um pointer do tipo char (1 byte, 4 bits) a um valor do tipo int (4 bytes, 16 bits), vamos passando por cada byte dentro do inteiro "d", printando cada byte em vez de todos duma só vez
	//Observando a order dos prints, vemos que os bytes foram printados por ordem crescente de significância, sendo printado "dd" primeiro com o primeiro endereço, e "aa" por último com o último endereço
	//A observação anterior demostra o sistema "Little Endian", em que o byte menos significativo é colocado primeiro na memória, daí o 1º endereço estar com o "dd" e o último com "aa"

	
	return 0;
}
