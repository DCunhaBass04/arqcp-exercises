main: sum.o main.o
	gcc sum.o main.o -o main
	
ex05prints.o: sum.c
	gcc -g -Wall -Wextra -fanalyzer -c sum.c -o sum.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
