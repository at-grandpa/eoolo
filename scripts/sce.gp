
expr1() =
{
    return(1); /* true */
}

expr2() =
{
    print("Not Short-circuit evaluation.");
    return(1); /* true*/
}

print(expr1() || expr2());

\q
