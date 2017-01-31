-module(sce).
-export([main/0]).

main() ->
    io:format(expr1() orelse expr2()),
    io:format("~n").

expr1() ->
    true.

expr2() ->
    io:format("Not Short-circuit evaluation.~n"),
    false.
