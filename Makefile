build:
		rm -f test
		gcc -c test.c
		gcc -L/usr/lib -lncurses -o test test.o
		rm -f *.o
