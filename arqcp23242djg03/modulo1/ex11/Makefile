main: function11.o main.o
	gcc function11.o main.o -o main
	
function11.o: function11.c
	gcc -g -Wall -Wextra -fanalyzer -c function11.c -o function11.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
