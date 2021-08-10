decode : bypass.o decode.o libcypher.so
		gcc -m32 bypass.o decode.o -L. -Wl,-rpath='$$ORIGIN' -lcypher -o decode

bypass.o : bypass.c
		  gcc -m32 -c $< -o $@

.PHONY: clean
clean: 
		rm -f decode