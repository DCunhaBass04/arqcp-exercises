main: function7.o main.o
	gcc function7.o main.o -o main
	
function7.o: function7.c
	gcc -g -Wall -Wextra -fanalyzer -c function7.c -o function7.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
