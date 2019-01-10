#lang racket

(provide scribblify-collection)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main)

;This is where you define special ways that katas render
;  within this collection only -- i.e. if this collection
;  has some kind of special gamification scheme, or special
;  badges, or something like that.
;If there are no special renderings, don't add anything to this file.
(define (scribblify-collection kc)
  (kata-collection->scribble
   #:befores (list kata->title)
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title k)
  (subsection (~a (kata-name k) " "
                  "Kata")))
