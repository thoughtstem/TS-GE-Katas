#lang racket

(define (is-collection? dir)
  (and (directory-exists? dir)
       (member (build-path "info.rkt")
               (directory-list dir))))

(define collections
   (filter is-collection?
     (directory-list (current-directory))))

(for [(collection (in-list collections))]
  (system (~a "cd " collection " &&"
              "raco pkg install")))

