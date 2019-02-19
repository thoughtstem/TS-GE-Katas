#lang racket

(provide survival-katas
         survival-proto-katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         ts-fundamentals/katas)


(define survival-proto-katas
  (lang->kata-collection 'survival))

(define survival-katas 
  (apply fill-in-stimuli survival-proto-katas stimuli))

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

