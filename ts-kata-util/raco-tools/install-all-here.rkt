#lang racket

(require "./dependency-util.rkt" pkg pkg/lib setup/setup)

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


(define (multi? s)
  (string-contains? (file->string (~a s "/info.rkt"))
                    "collection 'multi"))

(define (install s) 
  (displayln (~s "Installing " s ". Multi? " (multi? s)))

  (if (multi? s)
    (pkg-install-command #:skip-installed #t 
                         #:update-deps #t #:deps 'search-auto
                         (~a "./" s))
    (if (and (member s (installed-pkg-names #:scope 'user))
             (not (eq? 'link (first (pkg-info-orig-pkg (hash-ref (installed-pkg-table #:scope 'user) s))))))
        (pkg-update-command #:no-setup 
                             (no-docs)
                             #:link #t 
                             #:update-deps #t #:deps 'search-auto s)
        (pkg-install-command #:no-setup 
                         (no-docs)
                         #:link #t 
                         #:update-deps #t #:deps 'search-auto #:skip-installed #t s)
        )
    )

  s)

(define (maybe-setup s)
  (when (and (no-docs) 
             (not (multi? s)))
          (begin 
            (setup #:collections (list (list s))
                   ;Some things to make it faster...
                   #:jobs (processor-count)
                   #:make-docs? #f
                   #:make-doc-index? #f))))

(map (compose maybe-setup install ~a)
     sorted-collections)

