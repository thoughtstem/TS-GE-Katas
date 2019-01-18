#lang racket

(provide render
         kata-section)

(require ts-kata-util/katas/rendering/scribble
         ts-kata-util/katas/main
         scribble/manual)

(define (render kc)
  (kata-collection->scribble
   #:befores (list kata->title)
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title k)
  (subsection (~a (kata-name k) " "
                  "Kata (" (kata-id k) ")")))

(define (kata-section kind collection)
  (list
   (section (kata-id->kata-name kind))
   (render collection)))
