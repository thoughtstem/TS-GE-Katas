#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))

(define stimuli
  (list

   'hello-world-1
   (read "Code a basic Fortnite game")
   
   ))