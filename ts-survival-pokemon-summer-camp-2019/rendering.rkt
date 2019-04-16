#lang racket

(provide render)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main
         scribble/core)

(define (render kc)
  (kata-collection->scribble
   #:befores (list kata->title
                   kata->dollar-icons
                   kata->tip)
   kc))

(require (only-in scribble/manual image para subsection))

(define dollar-icon
  (image "scribblings/img/ts-dollar.png"
         #:scale .15))

(define (kata->dollar-icons k)
  (para dollar-icon))

(define (kata->difficulty k)
  (min 10
       (max 1 (floor (/ (+ (num-expressions k ":")
                             (* (num-expressions k "(") 2)) 5)))))

(define (kata->title k)
  (subsection (~a (kata-name k) " "
                  "Kata "
                  "(difficulty = " (kata->difficulty k) ")")))

(define professoroak-sprite
  (image "scribblings/img/professoroak.png"))

(define (kata->tip k)
  (define tip (kata-tip k))
  (if tip
      (if ((listof block?) tip)
          tip
          (side-note #:icon professoroak-sprite " Tip" tip))
      #f))