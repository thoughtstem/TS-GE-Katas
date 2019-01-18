#lang racket

(provide survival-katas
         survival-proto-katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt")


(define survival-proto-katas
  (lang->kata-collection 'survival))

(define survival-katas 
  (apply fill-in-stimuli survival-proto-katas stimuli))

(define-sub-collections survival-katas
  avatar-katas
  food-katas
  coin-katas
  enemy-katas
  crafter-katas
  day-night-katas
  starvation-rate-katas
  game-jam-katas)

