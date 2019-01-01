#lang racket

(require rsvg)

(require racket/runtime-path pict)
(define-runtime-path images "images")

(define potion
  (svg-file->pict
           (build-path images "potion.svg")))

(define test (scale potion 10) )

(hc-append test test)

(show-pict test)