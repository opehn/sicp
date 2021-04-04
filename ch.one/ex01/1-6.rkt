#lang sicp

(define (average a b)
  (/ (+ a b) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x)
  (* x x))

(define (abs x)
   (if (> x 0) x (- x)))

(define (good-enough? guess x)
  (< (abs (- x (square guess))) 0.001))

;(define (sqrt-iter guess x)
 ; (if (good-enough? guess x)
  ;  guess
   ; (sqrt-iter (improve guess x) x)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x))) ;this statement implements infinitely because new-if doesn't stop while cond is true, not like if which is special-form.


(define (sqrt x)
  (sqrt-iter 1.0 x))


(sqrt 9)


