#lang racket

(provide (all-from-out  ts-survival-minecraft/katas)
         (all-from-out  ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (except-in ts-survival-minecraft/katas
                    crafter-katas)
         (prefix-in old: (only-in ts-survival-minecraft/katas
                                  crafter-katas)))

(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a MINECRAFT SURVIVAL GAME."  
               "In ONE HOUR."
               "Including: a HERO, FOOD, ORE, MOBS, and CRAFTING.")))

;add custom craft collection with 1 food and 3 weapon katas
;might need to create alt weapon-crafter katas

(define-kata-collection crafter-katas
  (first (kata-collection-katas old:crafter-katas))
  (drop (kata-collection-katas old:crafter-katas) 4))



