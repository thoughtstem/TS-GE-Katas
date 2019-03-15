#lang racket

(provide (all-from-out ts-battle-arena-starwars/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-battle-arena-starwars/katas
         )


(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a BATTLE ARENA GAME."  
               "In ONE HOUR."
               "Including: a HERO, VILLAINS, LIGHTSABERS, VILLAIN WEAPONS, and PLANET DESIGNS.")))
