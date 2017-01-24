#!/usr/local/bin/stack runghc

import Debug.Trace

expr1:: Bool
expr1 = True

expr2:: Bool
expr2 = trace "Not Short-circuit evaluation." False

main :: IO ()
main = print $ (expr1 || expr2)

