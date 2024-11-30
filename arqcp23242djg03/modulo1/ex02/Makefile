main: variables.o main.o
	gcc variables.o main.o -o main
	
ex02prints.o: ex01prints.c
	gcc -g -Wall -Wextra -fanalyzer -c variables.c -o variables.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
