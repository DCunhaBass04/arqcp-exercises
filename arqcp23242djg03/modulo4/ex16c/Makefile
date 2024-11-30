main: main.o asm.o func.o
	gcc -g main.o asm.o func.o -z noexecstack -o main

main.o: main.c asm.h func.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
asm.o: asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o
	
func.o: func.s
	gcc -g -Wall -Wextra -fanalyzer -c func.s -o func.o
	
run: main
	./main
	
clean:
	rm *.o main
