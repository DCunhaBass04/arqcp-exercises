main: function19.o main.o
	gcc function19.o main.o -o main
	
function19.o: function19.c
	gcc -g -Wall -Wextra -fanalyzer -c function19.c -o function19.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
