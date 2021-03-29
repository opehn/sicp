#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)) ; if b > 0 + a b else - a b

(a-plus-abs-b 1 2) ;3
(a-plus-abs-b 1 -2) ;3
