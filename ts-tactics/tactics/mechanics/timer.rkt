#lang racket

(provide
  set-timer-for
  set-timer-for-seconds
  timer-beeps)

(require "../base/base.rkt")

(define (timer-beeps timer)
  (predicate
    "is beeping" 
    timer))

(define (set-timer-for n timer)
  (set-object timer "for" (~a n)))

(define (set-timer-for-seconds n timer)
  (directed-action
    (body-action (~a "set " n " seconds"))
    "on"
    timer))




