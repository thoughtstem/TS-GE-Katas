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
    phase
    until)
  (rename-out 
    (make-phase phase)
    (make-until until)))

(require "base-base.rkt")

;VERBS

(define (information-move english information destination)
  (move english information destination))

(define (information-edit english info)
  (change english info))

(define (information-check english info)
  (predicate english info))


;ADJECTIVES

(define (object-part english other-object)
  (adjective english other-object))


(define (make-phase name . instructions)
  (phase name 
         (flatten instructions)))


(define (make-until pred . instructions)
  (until pred 
         (flatten instructions)))


(define-syntax-rule (sub-routine exp)
  (go-sub 'exp))

