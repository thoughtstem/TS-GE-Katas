#lang racket

(provide (all-from-out "./rendering/scribble.rkt")
         section-for
         sections-for)
(require "./rendering/scribble.rkt")


(define-syntax-rule (section-for f collection)
  (f 'collection collection))

(define-syntax-rule (sections-for f collection ...)
  (begin
    (section-for f collection)
    ...
    ))
