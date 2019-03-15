#lang racket

(provide (all-from-out ts-battle-arena-avengers/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-battle-arena-avengers/katas
         )


(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a BATTLE ARENA GAME."  
               "In ONE HOUR."
               "Including: a HERO, VILLAINS, POWERS, VILLAIN POWERS, and PLANET DESIGNS.")))
