#include <stdio.h>
#include <stdlib.h>

static struct node
{int key; struct node *next;};

static struct node *head, *z, *t;

void stackinit()
{
    head = (struct node *) malloc(sizeof *head);
    z = (struct node *) malloc(sizeof *z);
    head->next = z; head->key=0;
    z->next = z;
}
void push(int v)
{
    t = (struct node *) malloc(sizeof *t);
    t->key = v; t->next = head->next;
    head->next = t;
}
int pop()
{
    int x;
    t = head->next; head->next = t->next;
    x = t->key;
    free(t);
    return x;
}
int stackempty()
{ return head->next == z;}

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