#lang racket

(provide render kata-section)

(require scribble/manual
         ts-kata-util/katas/rendering
         ts-kata-util/katas/main
         scribble/core)

;This is where you define special ways that katas render
;  within this collection only -- i.e. if this collection
;  has some kind of special gamification scheme, or special
;  badges, or something like that.
;If there are no special renderings, don't add anything to this file.
(define (render #:level (level subsection) kc)
  (kata-collection->scribble
   #:befores (list kata->title
                   kata->dollar-icons
                   kata->tip)
   kc))

(require (only-in scribble/manual image para subsection))

(define dollar-icon
  (image "scribblings/img/ts-dollar.png"
         #:scale .15))

(define (kata->num-dollars k)
  1
  ;haha, okay we just give one dollar always now :)
  )

(define (kata->dollar-icons k)
  (para
   (map (thunk* dollar-icon)
        (range (kata->num-dollars k)))))

(define (kata->title k)
  (subsection (~a (kata-complete-name k) " Kata")))

(define (kata->tip k)
  (define tip (kata-tip k))
  (if tip
      (if ((listof block?) tip)
          tip
          (side-note* "Tip" tip))
      #f))

(define (kata-section kind collection)
  (list
   (section (kata-id->kata-name kind))
   (render collection)))