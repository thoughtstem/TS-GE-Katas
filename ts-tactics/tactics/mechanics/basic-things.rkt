#lang racket

(provide
  team
  computers
  coach
  timer
  whiteboard
  challenge-card

  contents-of
  front-of
  back-of
  top-half-of
  bottom-half-of)

(require "../base/base.rkt")

(define whiteboard 'Whiteboard)
(define timer 'Timer)
(define team 'Team)
(define computers 'Team-Computers)
(define coach 'Coach)
(define challenge-card 'Challenge-Card)

(define (contents-of object)
  (object-part "the contents of" object))

(define (back-of object)
  (object-part "the back of" object))

(define (front-of object)
  (object-part "the front of" object))

(define (top-half-of object)
  (object-part "the top half of" object))

(define (bottom-half-of object)
  (object-part "the bottom half of" object))




