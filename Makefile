# Makefile
CXX = g++
CXXFLAGS = -Wall -g

all: calculator

calculator: main.o div.o sum.o
	$(CXX) $(CXXFLAGS) -o calculator main.o div.o sum.o


main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp


div.o: div.cpp
	$(CXX) $(CXXFLAGS) -c div.cpp

sum.o: sum.cpp
	$(CXX) $(CXXFLAGS) -c sum.cpp
clean:
	rm -f *.o main
