#include <stdio.h>

int expr1();
int expr2();

int main (int argc, char *args[])
{
    printf("%d\n", (expr1() || expr2()));
    return 0;
}

int expr1()
{
    return 1;  // true
}

int expr2()
{
    printf("Not Short-circuit evaluation.\n");
    return 1;  // true
}
