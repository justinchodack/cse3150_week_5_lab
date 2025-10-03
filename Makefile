CXX = g++
CXXFLAGS = -std=c++17 -g
TARGET = solution
SOURCE = solution.cpp

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCE)

clean:
	rm -f $(TARGET)

test: $(TARGET)
	pytest test_game.py

.PHONY: all clean test
