decode : fix.o bypass.o decode.o libcypher.so
		gcc -m32 fix.o bypass.o decode.o -L. -Wl,-rpath='$$ORIGIN' -lcypher -o decode

bypass.o : bypass.c
		  gcc -m32 -c $< -o $@

fix.o : fix.s
		as -32 $< -o $@

.PHONY: clean dist
clean: 
		rm -f decode bypass.o fix.o

dist : 
		tar zcvf decode.tar.gz makefile fix.s bypass.c decode.o libcypher.so