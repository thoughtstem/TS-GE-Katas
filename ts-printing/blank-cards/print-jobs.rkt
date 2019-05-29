#lang racket

(require "./main.rkt"
         "../common/main.rkt")

(define (all->Desktop)
  (begin-job "blanks" 
             ((duplicate 20 paren-card))
             ((duplicate 20 keyword-card)
              [FRONT-MARGIN 25])))

(all->Desktop)

