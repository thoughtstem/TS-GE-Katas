#lang racket

(provide (all-from-out ts-k2/katas))

(require racket/generator
         ts-kata-util/katas/main
         ts-k2/katas)

(define social-games-generator (sequence->repeated-generator (kata-collection-katas social-games)))
(define sea-generator          (sequence->repeated-generator (kata-collection-katas sea)))

(define social-per-day 2)
(define sea-per-day   6)

(define (next n g)
  (kata-collection
     (map (thunk* (g)) (range n)))) 

(define-syntax-rule (define-day day) 
  (define/provide day 
                  (merge-collections 
                    (next social-per-day social-games-generator)
                    (next sea-per-day    sea-generator))))

(define-syntax-rule (define-days day ...)
  (begin (define-day day) ...))


(define-days day-one 
             day-two
             day-three
             day-four
             day-five)

