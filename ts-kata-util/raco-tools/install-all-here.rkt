#lang racket

(require "./dependency-util.rkt" pkg)

(define collections
  (collections-here))

(define sorted-collections
  (topological-sort collections))

(define original (current-directory))

(displayln (~a "Found collections: " collections))
(displayln (~a "Sorted by dependencies: " sorted-collections))

(define (try-then f1 f2)
  (lambda(x)
    (current-directory (build-path original x))
    (with-handlers ([exn:fail? (thunk*
                                (displayln (~a "Couldn't update " x ", trying to install..."))
                                (f2 (~a "../" x)))])
      (displayln (~a "Trying to update " x))
      (f1 (~a "../" x)))))

(define update-or-install 
  (try-then (curry pkg-update-command  #:link #t #:update-deps #t #:deps 'search-auto)
            (curry pkg-install-command #:link #t #:update-deps #t #:deps 'search-auto)))

(map (compose update-or-install ~a)
     sorted-collections)

