#lang racket
(provide katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         "./katas/read-code-stimuli.rkt" 
         "./katas/ratchet-helpers.rkt")

(define _k2-katas
  (lang->kata-collection 'k2))

(define katas
  (katas-map
   add-ratchet-output-to-response
   _k2-katas))

;Social games

(define-sub-collections katas
  intro
  warm-ups-asl
  bots)

(define/provide intro-games
  (katas-map gamify-coding-kata intro))

(define/provide sign-language-games
  (katas-map gamify-coding-kata warm-ups-asl))

(define/provide bots-games
  (katas-map gamify-coding-kata bots))

;Coding katas

(define-sub-collections (apply fill-in-stimuli katas stimuli)
  fish
  hero)

