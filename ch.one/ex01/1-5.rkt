#lang sicp
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))
;in applicative order :
;will evaluate define (p) (p)
;fall in to infinite loop because (p) calls (p) itself
;in normal order :
;will not evaluate define (p) (p)
