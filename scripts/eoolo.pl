#!/root/.anyenv/envs/plenv/shims/perl

sub expr1 {
    print "method expr1\n";
    return "return expr1\n";
}

sub expr2 {
    print "method expr2\n";
    return "return expr2\n";
}

print &expr1 || &expr2
