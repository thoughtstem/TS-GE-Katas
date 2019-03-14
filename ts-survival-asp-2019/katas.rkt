#lang racket

(provide (all-from-out ts-survival/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-survival/katas)

(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a SURVIVAL GAME."  
               "In ONE HOUR."
               "Including: an AVATAR, FOOD, ENEMIES, and CRAFTING.")))

(define-kata-collection all-crafter-katas
  (kata-collection-katas crafter-katas)
  (kata-collection-katas weapon-crafter-katas))