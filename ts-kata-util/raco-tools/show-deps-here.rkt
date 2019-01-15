#lang racket

(require "./dependency-util.rkt" pkg)

(define collections
  (collections-here))

(define sorted-collections
  (topological-sort collections))

(define original (current-directory))

(define (my-display nested-list)
  (for ([x (in-list nested-list)])
    (displayln (~a (first x) ":"))
    (if (empty? (second x))
        (displayln "    NONE")
        (for ([y (in-list (second x))])
          (displayln (~a "    " y))))))

(my-display (map list
                 sorted-collections
                 (map get-local-deps sorted-collections)))
