#!/usr/bin/gosh

(define (expr1)
  (print "method expr1")
  "return expr1")

(define (expr2)
  (print "method expr2")
  "return expr2")

(print (or (expr1) (expr2)))
