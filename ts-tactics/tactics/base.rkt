#lang racket

;ACE
;simple sentence (assertion)
; subject + verb + compliments + adjuncts

; subject = [adj] + noun

;Like ACE, but needs more of an algorithmic "flavor" to it.  Less about facts and more about sequence, loops, branching, and information move/update/destroy/query.  Should read like English but have a level of formality to it that allows for 1) good typsetting, and 2) actual computer execution (e.g. to generate examples or estimate cost calculations)

;  Designation of places, sub-groups of people, configurations of people and information in space, 


;Design constraints:
; 1) A language for describing tactics to teachers and students
; 2) Formal enough to do simulations of (interpereter for the lang can be built).  
;    (Though it may be hard to simulate player's actions in an authentic way.  AI bots are always hard to build.)
; 3) Can auto generate an example round, with pictures
; 4) Can print the English on a card, easy-to-read, diagrams, sparse text
; 5) Supports abstract descriptions: e.g. "Write the kata code on the whiteboard."  As well as concrete descriptions: "Write the following code on the whiteboard: (battlearena-game (custom-avatar))"

(provide
  information-move
  information-edit  
  information-check
  object-part  
  (all-from-out "base-base.rkt"))

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





