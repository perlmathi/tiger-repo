# Makefile
CXX = g++
CXXFLAGS = -Wall -g

all: first

first: first.o
	$(CXX) $(CXXFLAGS) -o first first.o

first.o: first.cpp
	$(CXX) $(CXXFLAGS) -c first.cpp

clean:
	rm -f *.o first
