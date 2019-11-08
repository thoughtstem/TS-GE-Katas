#lang racket

(provide kata->dollar-icons
         kata->title
         render
         kata-section)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main
         scribble/manual)

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

(define (kata->tip k)
  (define tip (kata-tip k))
  (if tip
      (side-note "Tip" tip)
      #f))


;use this func to make a new bronze/silver/gold differentiator?

(define (kata->difficulty k)
  (min 10
       (max 1 (floor (/ (num-expressions k "(") 3)))))


(define (kata->dollar-icons k)
  (para
   (map (thunk* dollar-icon)
        (range (kata->num-dollars k)))))

(define (kata->title k)
  (subsection (~a (kata-name k) " "
                  "Kata "
                  "(difficulty = " (kata->difficulty k) ")")))

(define (kata-section kind collection)
  (list
   (section (kata-id->kata-name kind))
   (render collection)))

