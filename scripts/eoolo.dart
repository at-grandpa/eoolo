#!/usr/bin/dart

void main() {
    // In Dart, only the boolean value true is true.
    // All other values are treated as false.
    // So, we use the 'and' operator.
    print(expr1() && expr2());
}

String expr1() {
    return 'return value of expr1.';
}

String expr2() {
    print('Not Short-circuit evaluation.');
    return 'return value of expr2.';
}
