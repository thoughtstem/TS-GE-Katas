#lang racket

(define (is-collection? dir)
  (and (directory-exists? dir)
       (not (string-prefix? (~a dir) "protoype"))
       (member (build-path "info.rkt")
               (directory-list dir))))

(define collections
   (filter is-collection?
     (directory-list (current-directory))))

(displayln (~a "Found collections " collections))

(define original (current-directory))

(define (try-then f1 f2)
  (lambda(x)
    (current-directory (build-path original x))
    (with-handlers ([exn:fail? (thunk*
                                (displayln (~a "Couldn't update " x ", trying to install..."))
                                (f2 x))])
      (displayln (~a "Trying to update " x))
      (f1 x))))

(require pkg)
(map (compose (try-then (curry pkg-update-command  #:link #t #:update-deps #t #:deps 'search-auto)
                        (curry pkg-install-command #:link #t #:update-deps #t #:deps 'search-auto))
              ~a)
     collections)

