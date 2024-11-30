main: swap.o main.o
	gcc swap.o main.o -o main
	
ex01prints.o: swap.c
	gcc -g -Wall -Wextra -fanalyzer -c sum.c -o sum.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
