#lang racket

(require "./main.rkt")

(define (all->Desktop)
  (define parens   (duplicate 10 paren-card))   
  (define keywords (duplicate 10 keyword-card))
  (define symbols  (duplicate 10 symbol-card))
  (define strings  (duplicate 10 string-card))

  (begin-job "blanks" 
             (parens)
             (keywords)
             (symbols)
             (strings)))

(all->Desktop)

