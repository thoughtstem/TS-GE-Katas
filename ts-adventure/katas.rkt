#lang racket

(provide adventure-katas
         adventure-proto-katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt")

(define adventure-proto-katas
  (merge-collections (lang->kata-collection 'adventure)
                     code-values-all))

(define adventure-katas
  (apply fill-in-tips
         (apply fill-in-stimuli adventure-proto-katas stimuli)
         tips))

(define-sub-collections adventure-katas
  code-of-awesomeness-katas
  hello-world-katas
  
  avatar-katas
  coin-katas
  level-design-katas
  fetch-quest-katas
  enemy-katas

  food-katas
  (crafter-katas
   (not/c (curryr name-contains? "Weapon")))
  weapon-crafter-katas
  sky-katas
  bg-katas
  npc-katas
  
  )
