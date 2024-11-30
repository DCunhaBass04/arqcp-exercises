main: function9.o main.o
	gcc function9.o main.o -o main
	
function9.o: function9.c
	gcc -g -Wall -Wextra -fanalyzer -c function9.c -o function9.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
