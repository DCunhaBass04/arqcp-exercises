main: frequencies.o main.o
	gcc frequencies.o main.o -o main
	
ex17prints.o: frequencies.c
	gcc -g -Wall -Wextra -fanalyzer -c frequencies.c -o frequencies.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
