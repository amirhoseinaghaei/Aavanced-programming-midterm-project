CXX = g++
CXXFLAGS = -std=c++17 -Wall -I h -I /usr/local/include/gtest/ -c
LXXFLAGS = -std=c++17 -Ih -pthread
OBJECTS = main.o
GTEST = /usr/local/lib/libgtest.a
TARGET = main


$(TARGET): $(OBJECTS)
	$(CXX) $(LXXFLAGS) -o $(TARGET) $(OBJECTS) $(GTEST)
main.o: ./cpp/main.cpp ./h/List_Node.h 
	$(CXX) $(CXXFLAGS) ./cpp/main.cpp 
clean:
	rm -fv $(TARGET) $(OBJECTS)
