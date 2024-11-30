main: format_string.o main.o
	gcc format_string.o main.o -o main
	
ex16prints.o: format_string.c
	gcc -g -Wall -Wextra -fanalyzer -c format_string.c -o format_string.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
