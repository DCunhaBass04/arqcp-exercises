main: function3.o main.o
	gcc function3.o main.o -o main
	
function3.o: function3.c
	gcc -g -Wall -Wextra -fanalyzer -c function3.c -o function3.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
