main: wordcount.o main.o
	gcc wordcount.o main.o -o main
	
ex14prints.o: wordcount.c
	gcc -g -Wall -Wextra -fanalyzer -c wordcount.c -o wordcount.o
	
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
clean:
	rm -rf *.o main
	
run: main
	./main
