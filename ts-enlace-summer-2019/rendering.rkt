#lang racket

(provide render)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main
         scribble/core)

(define (render #:level (level subsection) kc)
  (kata-collection->scribble
   #:befores (list (curry kata->title level)
                   kata->tip)
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title level k)
  (level (~a (kata-name k))))

(define (kata->tip k)
  (define tip (kata-tip k))
  (if tip
      (if ((listof block?) tip)
          tip
          (side-note* "Tip" tip))
      #f))
