#!/usr/bin/gosh

(define (expr1)
  "return value of expr1.")

(define (expr2)
  (print "Not Short-circuit evaluation.")
  "return value of expr2.")

(print (or (expr1) (expr2)))
