#include <iostream>

int expr1();
int expr2();

int main()
{
     std::cout << expr1() || expr2();
     std::cout << "\n";
}

int expr1()
{
    return 1;  // true
}

int expr2()
{
    std::cout << "Not Short-circuit evaluation.\n";
    return 1;  // true
}
