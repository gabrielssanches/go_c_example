static:
		rm -f libkeyboard.a
		gcc -c keyboard.c
		ar rcs libkeyboard.a keyboard.o
		rm -f keyboard.o
		gcc test2.c -L. -lkeyboard -L/usr/lib -lncurses -o test2

build:
		rm -f test
		gcc -c test.c
		gcc -L/usr/lib -lncurses -o test test.o
		rm -f *.o
