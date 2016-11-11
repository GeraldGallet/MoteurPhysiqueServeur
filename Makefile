
include VAR

all: main.o
	g++ bin/main.o -o bin/server -lboost_system
main.o:
	mkdir -p bin
	g++ -c main.cpp -o bin/main.o -I $(WEBSOCKETPP_PATH)/

clean:
	rm -rf bin

run :
	./bin/server
