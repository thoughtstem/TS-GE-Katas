#lang racket

(provide render)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main)

(define (render #:level (level subsection) kc)
  (kata-collection->scribble
   #:befores (list (curry kata->title level))
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title level k)
  (level (~a (kata-name k) " Kata")))


