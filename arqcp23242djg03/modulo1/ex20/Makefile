main: compress.o main.o
	gcc compress.o main.o -o main
	
ex20prints.o: compress.c
	gcc -g -Wall -Wextra -fanalyzer -c compress.c -o compress.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
