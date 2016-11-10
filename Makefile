

all: main.o
	g++ main.o -o sfml-app -L/home/olivbau/Documents/lib/SFML-2.4.1/lib -lsfml-window -lsfml-system -lsfml-network

main.o :
	g++ -c main.cpp -o main.o -I/home/olivbau/Documents/lib/SFML-2.4.1/include

clean :
	rm *.o
	rm sfml-app

run :
	export LD_LIBRARY_PATH=/home/olivbau/Documents/lib/SFML-2.4.1/lib && ./sfml-app
