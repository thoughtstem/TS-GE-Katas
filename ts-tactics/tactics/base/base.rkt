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
    tactic-key
    tactic-section
    supplies
    supply-item
    phase
    until
    body-action
    repeat)
  (rename-out
    (make-instruction instruction)
    (make-image-group image-group)
    (make-tactic-image tactic-image)
    (make-tactic-key tactic-key)
    (make-tactic-section tactic-section)
    (make-supplies supplies)
    (make-supply-item supply-item)
    (make-phase phase)
    (make-until until)
    (make-body-action body-action)
    (make-repeat repeat)
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

(define (make-repeat phase [clause ""])
  (repeat phase clause))

;ADJECTIVES

(define (object-part english other-object)
  (adjective english other-object))

(define (make-supplies . items)
  (supplies items))

(define (make-supply-item item [clause ""])
  (supply-item item clause))

(define (make-phase name . instructions)
  (phase name 
         (flatten instructions)))

(define (make-tactic-key players
                         minutes
                         grade
                         difficulty
                         lines
                         student-level
                         #:players-string [players-string "players"])
  (tactic-key players minutes grade difficulty lines student-level players-string))

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

(define (make-tactic-image path #:scale [scale 1.0] #:draw-border? [draw-border? #f])
  (tactic-image path scale draw-border?))

(define (run-kata-challenge #:players-string [players-string "players"])
  (tactic-section 'Kata-Challenge
                  (list (make-instruction 'tactics-master
                                          (body-action (~a "Call in the coach when you and the rest of the " players-string
                                                           " are ready for your kata"
                                                           " challenge. Pass the challenge to earn your kata"))))))