main: function10.o main.o
	gcc function10.o main.o -o main
	
function10.o: function10.c
	gcc -g -Wall -Wextra -fanalyzer -c function10.c -o function10.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
