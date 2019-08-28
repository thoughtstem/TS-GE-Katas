#lang racket

(provide
  team
  computers
  coach
  timer
  whiteboard
  challenge-card

  contents-of
  stimulus-of
  stimuli-of
  code-of
  code-on
  code-from
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

(define (stimulus-of object)
  (object-part "the stimulus of" object))

(define (stimuli-of object)
  (object-part "the stimuli of" object))

(define (code-of object)
  (object-part "the code of" object))

(define (code-on object)
  (object-part "the code on" object))

(define (code-from object)
  (object-part "the code from" object))

(define (back-of object)
  (object-part "the back of" object))

(define (front-of object)
  (object-part "the front of" object))

(define (top-half-of object)
  (object-part "the top half of" object))

(define (bottom-half-of object)
  (object-part "the bottom half of" object))





