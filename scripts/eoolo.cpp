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
    std::cout << "method expr1\n";
    return 1;  // true
}

int expr2()
{
    std::cout << "method expr2\n";
    return 1;  // true
}
