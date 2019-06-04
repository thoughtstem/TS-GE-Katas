#lang racket

(provide
  set-timer-for
  timer-beeps)

(require "../base.rkt")

(define (timer-beeps timer)
  (predicate
    "is beeping" 
    timer))

(define (set-timer-for n timer)
  (directed-action
    (body-action (~a "set " n " minutes"))
    "on"
    timer))



