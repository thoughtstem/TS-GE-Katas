#lang racket

(provide topological-sort
         is-collection?
         collections-here
         get-deps
         get-local-deps
         update-or-install
         )

(require setup/getinfo
         pkg/lib)

(define (collections-here)
  (map ~a
       (filter is-collection?
               (directory-list (current-directory)))))


(define (get-local-deps path (root (current-directory)))
  (define locals (map ~a (directory-list root)))

  (filter
   (curryr member locals)
   (get-deps path root)))

(define (get-deps path (root (current-directory)))
  (map ~a
       (extract-pkg-dependencies
        (get-info/full (build-path root path)))))

(define (find-independent root paths)
  (define (independent? path)
    (define other-dependencies
      (map
       (curry string-append root)
       (flatten
        (map (curryr get-deps root)
             (filter-not (curry eq? path) paths)))))

    (not (member (string-append root path)
                 other-dependencies)))

  (findf independent? paths))

(define (topological-sort paths (root (current-directory))  (ret '()))
  (if (empty? paths)
      ret
      (let ([p (find-independent (~a root) paths)])
        (topological-sort (filter-not (curry eq? p) paths)
                          (~a root)
                          (cons p ret)))))

(define (is-collection? dir)
  (and (directory-exists? dir)
       (not (string-prefix? (~a dir) "protoype"))
       (member (build-path "info.rkt")
               (directory-list dir))))

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

(module+ test
  (require rackunit)

  (check-equal?
   '("ts-kata-util" "ts-fundamentals" "ts-coach")
   (topological-sort (list "ts-coach"
                           "ts-kata-util"
                           "ts-fundamentals")
                     (build-path "/Users/thoughtstem/Dev/TS/TS-Kata-Collections/")
                     )))

