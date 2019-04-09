#lang racket

(provide (all-from-out ts-k2/katas))

(require racket/generator
         ts-kata-util/katas/main
         ts-k2/katas)

(define social-games-generator (sequence->repeated-generator (kata-collection-katas social-games)))
(define farm-generator         (sequence->repeated-generator (kata-collection-katas farm )))

(define social-per-day 2)
(define farm-per-day   3)

(define (next n g)
  (kata-collection
     (map (thunk* (g)) (range n)))) 

(define-syntax-rule (define-session session) 
  (define/provide session 
                  (merge-collections 
                    (next social-per-day social-games-generator)
                    (next farm-per-day farm-generator))))

(define-syntax-rule (define-sessions session ...)
  (begin (define-session session) ...))


(define-sessions session-one 
                 session-two
                 session-three
                 session-four
                 session-five
                 session-six
                 session-seven
                 session-eight
                 session-nine
                 session-ten)