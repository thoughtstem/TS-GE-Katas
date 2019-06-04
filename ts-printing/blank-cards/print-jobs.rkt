#lang racket

(require "./main.rkt"
         "../common/main.rkt")


;Link to print
; https://www.makeplayingcards.com/design/custom-domino-sized-cards-deck.html
(define (all->Desktop)
  (begin-job "blanks" 
             ((duplicate 24 paren-card))
             ((duplicate 24 keyword-card)
              [FRONT-MARGIN 25])))

(all->Desktop)

