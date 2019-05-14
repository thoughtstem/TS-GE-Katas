#lang racket

(provide render
         kata-section)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main
         scribble/manual)

;This is where you define special ways that katas render
;  within this collection only -- i.e. if this collection
;  has some kind of special gamification scheme, or special
;  badges, or something like that.
;If there are no special renderings, don't add anything to this file.
(define (render #:level (level subsection) kc)
  (kata-collection->scribble
   #:befores (list (curry kata->title level)
                   kata->tip)
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title level k)
  (level (~a (kata-name k) " Kata (" (kata-id k) ")")))

(define greenmushroom-sprite
  (image "scribblings/img/green-mushroom.png"))

(define (kata->tip k)
  (define tip (kata-tip k))
  (if tip
      (side-note #:icon greenmushroom-sprite " Tip" tip)
      #f))

(define (kata-section kind collection)
  (list
   (section (kata-id->kata-name kind))
   (render collection)))