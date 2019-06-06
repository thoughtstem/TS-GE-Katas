#lang racket

(provide memorize)

(require "../base/base.rkt")

(define (memorize s)
  (directed-action
    (body-action "memorize")
    ""
    s))
