#lang racket

(provide katas)


(require racket/generator
         ts-kata-util/katas/main
         ts-k2/katas)

(define social-games-generator (sequence->repeated-generator (kata-collection-katas social-games)))
(define hero-generator         (sequence->repeated-generator (kata-collection-katas hero )))

(define social-per-day 2)
(define hero-per-day   3)

(define (next n g)
  (kata-collection
     (map (thunk* (g)) (range n)))) 

(define-syntax-rule (define-session session) 
  (define/provide session 
                  (merge-collections 
                    (next social-per-day social-games-generator)
                    (next hero-per-day hero-generator))))

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
