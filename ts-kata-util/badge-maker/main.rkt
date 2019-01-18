#lang racket

(provide (all-from-out "./util.rkt")
         tri-badge)

(require "./cluster-demos.rkt")
(require "./util.rkt")

(define (tri-badge a b c)
  (sequence2 #:fgs (list "black")
             #:bgs pallet3

             a
             b
             c))