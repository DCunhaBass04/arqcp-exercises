main: vector_operations.o main.o
	gcc vector_operations.o main.o -o main
	
ex04prints.o: vector_operations.c
	gcc -g -Wall -Wextra -fanalyzer -c vector_operations.c -o vector_operations.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main