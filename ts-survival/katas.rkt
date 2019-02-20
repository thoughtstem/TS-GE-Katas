#lang racket

(provide survival-katas
         survival-proto-katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt"
         ts-fundamentals/katas)


(define survival-proto-katas
  (lang->kata-collection 'survival))

(define survival-katas 
  (apply fill-in-tips
         (apply fill-in-stimuli survival-proto-katas stimuli)
         tips))

(define-sub-collections survival-katas
  hello-world-katas
  avatar-katas
  food-katas
  coin-katas
  enemy-katas
  crafter-katas
  sky-katas
  starvation-rate-katas
  bg-katas
  npc-katas
  game-jam-katas)

