
include VAR

all: main.o
	g++ bin/main.o -o bin/server -L$(SFML_PATH)/lib -lsfml-window -lsfml-system -lsfml-network

main.o :
	mkdir bin
	g++ -c main.cpp -o bin/main.o -I$(SFML_PATH)/include

clean :
	rm -rf bin

run :
	export LD_LIBRARY_PATH=$(SFML_PATH)/lib
	./server
