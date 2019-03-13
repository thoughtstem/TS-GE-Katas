#lang racket

(provide render)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main
         scribble/core
         )

;This is where you define special ways that katas render
;  within this collection only -- i.e. if this collection
;  has some kind of special gamification scheme, or special
;  badges, or something like that.
;If there are no special renderings, don't add anything to this file.
(define (render #:level (level subsection) kc)
  (kata-collection->scribble
   #:befores (list (curry kata->title level)
                   kata->dollar-icons
                   kata->sticker-icon
                   kata->tip)
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title level k)
  (level (~a (kata-name k) " Kata")))

(define (kata->tip k)
  (define tip (kata-tip k))
  (if tip
      (if ((listof block?) tip)
          tip
          (side-note "Tip" tip))
      #f))

(define dollar-icon (image "scribblings/img/ts-dollar.png"
                           #:scale .15))
(define color-bar-icon (image "scribblings/img/color-bar.png"
                              #:scale .5))
(define add-star-icon  (image "scribblings/img/star-sticker.png"
                              #:scale .5))
(define add-heart-icon (image "scribblings/img/extra-life.png"
                              #:scale .5))

(define (kata->dollar-icons k)
  (para dollar-icon))

(define (kata->sticker-icon k)
  (para
   (cond [(bronze? k)        color-bar-icon]
         [(silver? k)        add-star-icon]
         [(or (gold? k)
              (platinum? k)) add-heart-icon]
         [else               (list)])))

(define (bronze? k)
  (string=? "Bronze" (kata->difficulty-name k)))

(define (silver? k)
  (string=? "Silver" (kata->difficulty-name k)))

(define (gold? k)
  (string=? "Gold" (kata->difficulty-name k)))

(define (platinum? k)
  (string=? "Platinum" (kata->difficulty-name k)))

(define (kata->difficulty-name k)
  (cond [(string-suffix? (~a (kata-id k)) "-1")     "Bronze"]
        [(string-suffix? (~a (kata-id k)) "-2")     "Silver"]
        [(string-suffix? (~a (kata-id k)) "-3")     "Gold"]
        [(string-suffix? (~a (kata-id k)) "-4")     "Platinum"]
        [else            ""]))



