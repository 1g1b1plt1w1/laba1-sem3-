#include <iostream>
#include "stack.h"
#include "node.h"
#include "linked_list.h"

using namespace std;

Stack Stack_create(){
    Stack stack;
    stack.list = Linked_create();
    return stack;
}

void Stack_destroy(Stack& stack) {
    Linked_destroy(stack.list);
}

void Stack_push_back(Stack& stack, string data) {
    Linked_push_back(stack.list,data);
}

string Stack_pop(Stack& stack){
    return Linked_pop_back(stack.list);
}

string Stack_read(const Stack& stack){
    return Linked_read_reverse(stack.list);
}