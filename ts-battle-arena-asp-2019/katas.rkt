#lang racket

(provide (all-from-out ts-battle-arena/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-battle-arena/katas)

(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a BATTLE ARENA GAME."  
               "In ONE HOUR."
               "Including: an AVATAR, ENEMIES, WEAPONS, and POWERUPS.")))