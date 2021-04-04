#lang sicp

(define (square x)
  (* x x))

(define (mod-three x)
  (/ x 3))

(define (improve guess x)
 (mod-three (+ (/ x (square guess)) (* 2 guess))))

(define (good-enough? guess x)
  (= guess (improve guess x)))

(define (cbrt-iter guess x) 
	 (if (good-enough? guess x)
	guess
	(cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.1 x))

(cbrt -2)
