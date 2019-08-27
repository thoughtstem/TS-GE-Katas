#lang racket

(provide
  hide
  give
  give-to
  shake-hands-with
  close-eyes
  nod
  place-hands-on-head  
  place-hands-behind-back
  take-back)

(require "../base/base.rkt")

(define (shake-hands-with group)
  (directed-action
    (body-action "shake hands")
    "with"
    ;TODO: Everyone in??
    group))

(define (close-eyes)
  (body-action "close eyes"))

(define (nod)
  (body-action "nod"))

(define (place-hands-on-head)
  (body-action "place hands on head"))

(define (place-hands-behind-back)
  (body-action "place hands behind back"))

(define (give thing)
  (directed-action
    (body-action "give")
    ""
    thing))

(define (give-to person thing)
  ;They are now the [owner].
  (directed-action
    (give thing)
    "to"
    person))

(define (take-back thing)
  (directed-action
   (body-action "take back")
   ""
   thing))

(define (hide thing)
  (directed-action
    (body-action "hide")
    ""
    thing))

