#lang racket

(provide (all-from-out ts-survival-pokemon/katas)
         (all-from-out ts-fundamentals/katas)
         custom-crafter-katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-survival-pokemon/katas
         )


(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a BATTLE ARENA GAME."  
               "In ONE HOUR."
               "Including: a POKEMON, FOOD, TRAINERS, CRAFTERS, and FRIENDS.")))


(define-kata-collection custom-crafter-katas
  (take (kata-collection-katas crafter-katas) 3)
  (fifth (kata-collection-katas crafter-katas)))

