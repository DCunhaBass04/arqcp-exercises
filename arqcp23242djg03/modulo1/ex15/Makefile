main: trim_string.o main.o
	gcc trim_string.o main.o -o main
	
ex15prints.o: trim_string.c
	gcc -g -Wall -Wextra -fanalyzer -c trim_string.c -o trim_string.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
