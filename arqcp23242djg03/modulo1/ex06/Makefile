main: function6.o main.o
	gcc function6.o main.o -o main
	
function6.o: function6.c
	gcc -g -Wall -Wextra -fanalyzer -c function6.c -o function6.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
