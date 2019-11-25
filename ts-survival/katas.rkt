#lang racket

(provide survival-katas
         survival-proto-katas
         stimuli)

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt")

(define survival-proto-katas
  (merge-collections (lang->kata-collection 'survival)
                     code-values-all))

(define survival-katas 
  (apply fill-in-tips
         (apply fill-in-stimuli survival-proto-katas stimuli)
         tips))

(define-sub-collections survival-katas
  code-of-awesomeness-katas
  hello-world-katas
  avatar-katas
  food-katas
  coin-katas
  enemy-katas
  crafter-katas
  weapon-crafter-katas
  sky-katas
  level-design-katas
  starvation-rate-katas
  background-katas
  npc-katas
  game-jam-katas)



