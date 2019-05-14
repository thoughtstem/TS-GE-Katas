#lang racket

(provide no-duplicates replace-in-list)

(define (no-duplicates l)
  (= (length l)
     (length (remove-duplicates l))))

(define (replace-in-list l thing new-thing)
  (list-set l
            (index-of l thing)
            new-thing))
