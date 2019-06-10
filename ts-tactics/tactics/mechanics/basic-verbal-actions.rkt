#lang racket

(provide
  communicate
  announce
  discuss
  tell-story
  say) 

(require "../base/base.rkt")

(define (maybe-add-quotes s)
  (if (string? s)
    (~a "\"" s "\"")
    s))

(define (discuss s)
  (directed-action
    (body-action "lead a discussion")
    "about"
    (maybe-add-quotes s)))

(define (announce s)
  (directed-action
    (body-action "announce")
    ""
    (maybe-add-quotes s)))

(define (say s)
  (directed-action
    (body-action "say")
    ""
    (maybe-add-quotes s)))

(define (tell-story s)
  (directed-action
    (body-action "tell the following as a story (be creative)")
    ""
    (maybe-add-quotes s)))

(define (communicate)
  (body-action "communicate"))




