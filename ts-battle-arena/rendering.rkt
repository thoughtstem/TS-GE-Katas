#lang racket

(provide scribblify-collection
         kata-section)

(require ts-kata-util/katas/rendering/scribble
         ts-kata-util/katas/main
         scribble/manual
         scribble/core)

(define (scribblify-collection kc) ;AKA render in survival
  (kata-collection->scribble
   #:befores (list kata->title
                   kata->tip)
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title k)
  (subsection (~a (kata-name k) " "
                  "Kata (" (kata-id k) ")")))

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
   (scribblify-collection collection)))
