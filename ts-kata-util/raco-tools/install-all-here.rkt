#lang racket

(require "./dependency-util.rkt" pkg setup/setup)

(define no-docs
  (make-parameter #f))

(command-line #:once-each
              [("--no-docs") "No docs"
                             (no-docs #t)])

(define collections
  (collections-here))

(define sorted-collections
  (topological-sort collections))

(define original (current-directory))

(displayln (~a "Found collections: " collections))
(displayln (~a "Sorted by dependencies: " sorted-collections))

(define (install s) 
  (pkg-install-command #:no-setup (no-docs) #:link #t #:update-deps #t #:deps 'search-auto #:skip-installed #t s)

  s)

(define (maybe-setup s)
  (when (no-docs)
          (begin 
            (displayln "DOING A SETUP WITHOUT DOCS")
            (setup #:collections (list (list s))
                   ;Some things to make it faster...
                   #:jobs (processor-count)
                   #:make-docs? #f
                   #:make-doc-index? #f))))

(map (compose maybe-setup install ~a)
     sorted-collections)

