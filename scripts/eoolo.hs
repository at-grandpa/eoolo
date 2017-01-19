#!/usr/local/bin/stack runghc

import Debug.Trace

expr1:: Bool
expr1 = trace "method expr1" True

expr2:: Bool
expr2 = trace "method expr2" False

main :: IO ()
main = print $ (expr1 || expr2)

