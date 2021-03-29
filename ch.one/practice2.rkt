#lang sicp

(define (square x) (* x x))

(square 8)

(define (sum-of-square x y) (+(square x) (square y)))
(sum-of-square 4 5)
