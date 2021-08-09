decode : decode.o libcypher.so
		gcc -m32 decode.o -l -lcypher - decode

.PHONY: clean
clean: 
		rm -f decode