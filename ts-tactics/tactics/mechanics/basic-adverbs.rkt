#lang racket

(provide randomly
         at-will
         minding-the-phase-constraints
         within-seconds)

(require "../base/base.rkt")

(define (randomly action)
  (adverb action "randomly"))

(define (at-will action)
  (adverb action "however you want"))

(define (within-seconds n action)
  (adverb action (~a "within " n " seconds")))

(define (minding-the-phase-constraints v)
  (adverb
    v
    "as you wish, but minding the rules of the current phase"))


