#lang racket

(require "./dependency-util.rkt" pkg)

(define collections
  (collections-here))

(define sorted-collections
  (topological-sort collections))

(define original (current-directory))

(displayln (~a "Found collections: " collections))
(displayln (~a "Sorted by dependencies: " sorted-collections))

(for ([c sorted-collections])
  (define example-file (build-path original c "examples.rkt"))
  (define success (if (file-exists? example-file) 
                    (system (~a "raco test " example-file))
                    #t))
  
  (and (not success)
       (raise "Some tests did not pass")))

