#!/root/.denv/shims/dmd -run

import std.stdio;

string expr1() {
    write("method expr1\n");
    return "return expr1\n";
}

string expr2() {
    write("method expr2\n");
    return "return expr2\n";
}

int main() {
    write(expr1() || expr2());
    write("\n");
    return 0;
}
