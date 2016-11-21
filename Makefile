include VAR

CXX = g++
CXXFLAGS = -std=c++11 -W -Wall -v -I $(WEBSOCKETPP_PATH)/ -I $(PHYSICENGINE_PATH)
LDFLAGS = -lboost_system -lboost_timer -lboost_chrono -lboost_thread -lpthread -L$(PHYSICENGINE_PATH)/bin/lib -lphysicengine
EXEC = server
SRC= main.cpp
OBJ= $(SRC:.cpp=.o)


all: $(EXEC)

server: $(OBJ)
	$(CXX) -o $@ $^ $(LDFLAGS)

%.o : %.cpp
		$(CXX) -c $< -o $@ $(CXXFLAGS)

clean:
	rm -f $(EXEC) *.o

run :
	./$(EXEC)
