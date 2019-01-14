#lang racket

(provide scribblify-collection)

(require ts-kata-util/katas/rendering
         ts-kata-util/katas/main)

(define (scribblify-collection kc)
  (kata-collection->scribble
   #:befores (list kata->title)
   kc))

(require (only-in scribble/manual image para subsection))

(define (kata->title k)
  (subsection (~a (string-replace (kata-name k)
                    "-" 
                    " ") 
                  " Kata")))




