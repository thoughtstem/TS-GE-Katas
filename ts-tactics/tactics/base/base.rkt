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
    instruction
    image-group
    tactic-image
    tactic-section
    supplies
    phase
    until
    body-action)
  (rename-out
    (make-instruction instruction)
    (make-image-group image-group)
    (make-tactic-image tactic-image)
    (make-tactic-section tactic-section)
    (make-supplies supplies)
    (make-phase phase)
    (make-until until)
    (make-body-action body-action)
    )
  run-kata-challenge
  )

(require "base-base.rkt")

(define (make-instruction subject verb #:figure [figure #f])
  (instruction subject verb figure))

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

(define (make-tactic-section name . instructions)
  (tactic-section name 
         (flatten instructions)))


(define (make-until pred . instructions)
  (until pred 
         (flatten instructions)))


(define-syntax-rule (sub-routine exp)
  (go-sub 'exp))

;Todo: add image formating options
(define (make-image-group . images)
  (image-group images))

(define (make-tactic-image path #:scale [scale 1.0])
  (tactic-image path scale))

(define run-kata-challenge
  (tactic-section 'Kata-Challenge
                  (list (make-instruction 'tactics-master
                                          (body-action (~a "Call in the coach when you and the rest of the players are ready for your kata"
                                                           " challenge. Pass the challenge to earn your kata!"))))))