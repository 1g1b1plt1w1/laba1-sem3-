CXX = g++
CXXFLAGS = -std=c++17 -Istr

TARGET = dbms

SRC = main.cpp \
      str/array.cpp \
      str/linked_list.cpp \
      str/one_linked_list.cpp \
      str/stack.cpp \
      str/queue.cpp \
      str/tree.cpp

OBJ = $(SRC:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

rebuild: clean all

run: all
	./$(TARGET) --file test.txt --query "MCREATE arr1"

.PHONY: all clean rebuild run