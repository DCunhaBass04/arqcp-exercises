all: count_char.o
	gcc count_char.o main.c -o main
	
count_char.o: count_char.h
	gcc -c count_char.c
	
clean:
	rm -rf *.o
