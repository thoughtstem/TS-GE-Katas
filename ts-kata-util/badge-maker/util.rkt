#lang racket

(provide save-pict)

(require pict)

(define (save-pict the-pict name kind)
  (define bm (pict->bitmap the-pict))
  (send bm save-file name kind))
