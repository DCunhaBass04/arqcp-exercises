main: function12.o main.o
	gcc function12.o main.o -o main
	
function12.o: function12.c
	gcc -g -Wall -Wextra -fanalyzer -c function12.c -o function12.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
