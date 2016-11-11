
include VAR

all: main.o
	g++ -Wall bin/main.o -o bin/server -lboost_system -lboost_timer -lboost_chrono -lboost_thread
main.o:
	mkdir -p bin
	g++ -Wall -c main.cpp -o bin/main.o -I $(WEBSOCKETPP_PATH)/ -std=c++11

clean:
	rm -rf bin

run :
	./bin/server
