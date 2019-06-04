#lang racket

(provide
  shake-hands-with
  close-eyes
  place-hands-on-head  
  place-hands-behind-back
  announce
  tell-story)

(require "../base.rkt")

(define (shake-hands-with group)
  (directed-action
    (body-action "shake hands")
    "with"
    ;TODO: Everyone in??
    group))

(define (close-eyes)
  (body-action "close eyes"))

(define (place-hands-on-head)
  (body-action "place hands on head"))

(define (place-hands-behind-back)
  (body-action "place hands behind back"))

(define (announce s)
  (directed-action
    (body-action "announce the following")
    "->"
    s))

(define (tell-story s)
  (directed-action
    (body-action "tell the following story in a fun way")
    "->"
    s))

