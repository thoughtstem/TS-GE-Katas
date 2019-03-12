#lang racket

(provide kata->dollar-icons
         kata->sticker-icon
         kata->title
         bronze?
         silver?
         gold?
         platinum?
         render
         kata-section)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main
         scribble/manual)

(define (render kc)
  (kata-collection->scribble
   #:befores (list kata->title
                   kata->dollar-icons
                   kata->sticker-icon)
   kc))

(require (only-in scribble/manual image para subsection))

(define dollar-icon
  (image "scribblings/img/ts-dollar.png"
         #:scale .15))

(define color-bar-icon (image "scribblings/img/color-bar.png"
                              #:scale .5))
(define add-star-icon  (image "scribblings/img/star-sticker.png"
                              #:scale .5))
(define add-heart-icon (image "scribblings/img/extra-life.png"
                              #:scale .5))


(define (kata->sticker-icon k)
  (para
   (cond [(bronze? k)        color-bar-icon]
         [(silver? k)        add-star-icon]
         [(or (gold? k)
              (platinum? k)) add-heart-icon]
         [else               (list)])))


(define (kata->num-dollars k)
  #;(cond [(bronze? k)     1]
        [(silver? k)     3]
        [(gold?   k)     5]
        [(platinum?   k) 7]
        [else 0])
  1)

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
        [else            "Unknown"]))


(define (kata->dollar-icons k)
  (para
   (map (thunk* dollar-icon)
        (range (kata->num-dollars k)))))

(define (kata->title k)
  (subsection (~a (kata->difficulty-name k) " "
                  (kata-name k) " "
                  "Kata")))

(define (kata-section kind collection)
  (list
   (section (kata-id->kata-name kind))
   (render collection)))
