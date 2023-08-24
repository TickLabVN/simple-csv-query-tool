CC = g++
CFLAGS = -std=c++11

all: exql

exql: main.o handleQuery.o
	$(CC) $(CFLAGS) -o exql main.o handleQuery.o

main.o: main.cpp handleQuery.h
	$(CC) $(CFLAGS) -c main.cpp

handleQuery.o: handleQuery.cpp handleQuery.h
	$(CC) $(CFLAGS) -c handleQuery.cpp

clean:
	rm -rf *.o exql