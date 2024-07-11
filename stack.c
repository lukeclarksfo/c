#include <stdio.h>
#include <stdlib.h>
#include "include/stack.c"

int main()
{
    stackinit();

    push(5);
    push(9);
    push(8);
    push(pop()+pop());
    push(4);
    push(6);
    push(pop()*pop());
    push(pop()*pop());
    push(7);
    push(pop()+pop());
    push(pop()*pop());
    printf("Result on stack is %d\n", pop());
}