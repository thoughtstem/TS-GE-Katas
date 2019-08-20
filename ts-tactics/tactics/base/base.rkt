#lang racket

(provide
  sub-routine

  information-move
  information-edit  
  information-check
  object-part  

  ;Syntactic sugarings
  (except-out
    (all-from-out "base-base.rkt")
    ;tell
    supplies
    phase
    until
    body-action)
  (rename-out
    ;(make-tell tell)
    (make-supplies supplies)
    (make-phase phase)
    (make-until until)
    (make-body-action body-action)
    )
  )

(require "base-base.rkt")

;VERBS

(define (information-move english information destination)
  (move (string-titlecase-first english) information destination))

(define (information-edit english info)
  (change (string-titlecase-first english) info))

(define (information-check english info)
  (predicate english info))

(define (make-body-action english)
  (body-action (string-titlecase-first english)))

;ADJECTIVES

(define (object-part english other-object)
  (adjective english other-object))

(define (make-supplies . items)
  (supplies items))

(define (make-phase name . instructions)
  (phase name 
         (flatten instructions)))


(define (make-until pred . instructions)
  (until pred 
         (flatten instructions)))


(define-syntax-rule (sub-routine exp)
  (go-sub 'exp))

