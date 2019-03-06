#lang racket

(require "./dependency-util.rkt" pkg setup/setup)

(define collections
  (collections-here))

(define sorted-collections
  (topological-sort collections))

(define original (current-directory))

(displayln (~a "Found collections: " collections))
(displayln (~a "Sorted by dependencies: " sorted-collections))

(define target-dir
  (command-line
   #:args (name)
   name))

(define (build-docs dir-str)
  (setup #:collections dir-str))

(map (comose build-docs ~a)
     sorted-collections)




