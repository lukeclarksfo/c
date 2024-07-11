#include <stdio.h>
#include <stdlib.h>
#include "include/stackbyarray.c"

struct node
{char info; struct node *l, *r;};

struct node *x, *z;
char c;

int main()
{
    z = (struct node *) malloc(sizeof *z);
    z->l = z; z->r = z;
    
    for(stackinit(); scanf("%1s", &c) != EOF;)
    {
        x = (struct node *) malloc(sizeof *x);

        x->info = c; x->l = z; x->r = z;

        if(c=='+' || c=='*')
        {x->r = pop(); x->l = pop();}
        push(x);
    }
}