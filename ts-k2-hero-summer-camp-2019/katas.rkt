#lang racket

(provide (all-from-out ts-k2/katas))


(require racket/generator
         ts-kata-util/katas/main
         ts-k2/katas)

(define social-games-generator (sequence->repeated-generator (kata-collection-katas social-games)))
(define hero-generator         (sequence->repeated-generator (kata-collection-katas hero )))

(define social-per-day 2)
(define hero-per-day   6)

(define (next n g)
  (kata-collection
     (map (thunk* (g)) (range n)))) 

(define-syntax-rule (define-day day) 
  (define/provide day 
                  (merge-collections 
                    (next social-per-day social-games-generator)
                    (next hero-per-day hero-generator))))

(define-syntax-rule (define-days day ...)
  (begin (define-day day) ...))

(define-days day-one 
             day-two
             day-three
             day-four
             day-five)