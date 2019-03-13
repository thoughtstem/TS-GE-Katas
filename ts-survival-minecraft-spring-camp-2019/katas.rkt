#lang racket

(provide (all-from-out  ts-survival-minecraft/katas)
         (all-from-out  ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-survival-minecraft/katas)

(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a MINECRAFT SURVIVAL GAME."  
               "In ONE HOUR."
               "Including: a HERO, FOOD, ORE, MOBS, and CRAFTING.")))


