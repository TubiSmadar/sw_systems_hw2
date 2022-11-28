CC = gcc


main: main.o my_mat.o my_mat.h
	gcc -Wall my_mat.o main.o -o main
main.o: main.c my_mat.h
	gcc -Wall -c main.c -o main.o
my_mat.o: my_mat.c my_mat.h
	gcc -Wall -c my_mat.c -o my_mat.o
clean:
	rm *.o main

