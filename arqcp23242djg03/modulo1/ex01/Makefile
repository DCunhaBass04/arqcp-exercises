main: ex01prints.o main.o
	gcc ex01prints.o main.o -o main
	
ex01prints.o: ex01prints.c
	gcc -g -Wall -Wextra -fanalyzer -c ex01prints.c -o ex01prints.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
