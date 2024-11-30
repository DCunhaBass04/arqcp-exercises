main: main.o function.o
	gcc -g main.o function.o -z noexecstack -o main

main.o: main.c function.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
function.o: function.s
	gcc -g -Wall -Wextra -fanalyzer -c function.s -o function.o
	
run: main
	./main
	
clean:
	rm *.o main
