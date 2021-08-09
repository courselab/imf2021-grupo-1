decode : decode.o libcypher.so
		gcc -m32 decode.o -L. -WL,-rpath='$$ORIGIN' -lcypher - decode

.PHONY: clean
clean: 
		rm -f decode