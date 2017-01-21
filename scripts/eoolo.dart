#!/usr/bin/dart

void main() {
    // In Dart, only the boolean value true is true.
    // All other values are treated as false.
    // So, we use the and operator.
    print(expr1() && expr2());
}

String expr1() {
    print('method expr1');
    return 'return expr1';
}

String expr2() {
    print('method expr2');
    return 'return expr2';
}
