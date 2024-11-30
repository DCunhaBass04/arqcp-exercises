main: functions.o main.o
	gcc functions.o main.o -o main
	
ex18prints.o: functions.c
	gcc -g -Wall -Wextra -fanalyzer -c functions.c -o functions.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
