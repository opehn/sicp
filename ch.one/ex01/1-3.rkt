#lang sicp

(define (sum_of_square a b c) 
(cond ((and (<= c a) (<= c b)) (+(* a a)(* b b)))
((and (<= b a) (<= b c)) (+(* a a)(* c c)))
((and (<= a b)(<= a c)) (+(* b b)(* c c)))))

(sum_of_square 4 5 4)
