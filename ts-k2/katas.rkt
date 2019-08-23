#lang racket

(provide katas
         hero
         farm
         sea
         zoo
         animal
         )

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt" 
         "./katas/ratchet-helpers.rkt")

(define _k2-katas
  (lang->kata-collection 'k2)
  )

(define katas
  (merge-collections (katas-map
                      add-ratchet-output-to-response
                      _k2-katas)
                     code-values-all))

;Social games

(define-sub-collections katas
  demo
  intro
  warm-ups-asl
  bots)

(define/provide demo-games
  (katas-map gamify-coding-kata demo))

(define/provide intro-games
  (katas-map gamify-coding-kata intro))

(define/provide sign-language-games
  (katas-map gamify-coding-kata warm-ups-asl))

(define/provide bots-games
  (katas-map gamify-coding-kata bots))


;Consider defining a difficulty metric,
;  but also a "diff" metric (small changes from previous).
;Sort by some combination of the two.

(define/provide social-games
  (merge-collections intro-games sign-language-games bots-games))

;Coding katas

(define k2-katas
  (apply fill-in-tips
         (apply fill-in-stimuli katas stimuli)
         tips))

(define-sub-collections k2-katas
  code-value-katas
  fish
  hero
  farm
  sea
  zoo
  animal
  )

