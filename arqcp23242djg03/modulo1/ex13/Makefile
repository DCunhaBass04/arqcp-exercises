main: function13.o main.o
	gcc function13.o main.o -o main
	
function13.o: function13.c
	gcc -g -Wall -Wextra -fanalyzer -c function13.c -o function13.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
