#!/root/.denv/shims/dmd -run

import std.stdio;

string expr1() {
    return "return value of expr1.\n";
}

string expr2() {
    write("Not Short-circuit evaluation.\n");
    return "return value of expr2.\n";
}

int main() {
    write(expr1() || expr2());
    write("\n");
    return 0;
}
