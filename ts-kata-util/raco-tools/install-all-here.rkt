#lang racket

(require "./dependency-util.rkt" pkg)

(define collections
  (collections-here))

(define sorted-collections
  (topological-sort collections))

(define original (current-directory))

(displayln (~a "Found collections: " collections))
(displayln (~a "Sorted by dependencies: " sorted-collections))

(map (compose update-or-install ~a)
     sorted-collections)

