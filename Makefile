all:main
	
main:main.o one.o
	gcc $? -o $@

main.o: one.h #main.c 
#	gcc -c main.c
one.o:#one.c
#	gcc -c $?

clean:
	rm -rf *.o main
