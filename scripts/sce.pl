#!/root/.anyenv/envs/plenv/shims/perl

sub expr1 {
    return "return value of expr1.\n";
}

sub expr2 {
    print "Not Short-circuit evaluation.";
    return "return value of expr2.\n";
}

print &expr1 || &expr2
