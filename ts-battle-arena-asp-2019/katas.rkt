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

(define-kata-collection weapon-katas
  (first (kata-collection-katas single-shot-katas))
  (first (kata-collection-katas spread-shot-katas))
  (first (kata-collection-katas homing-repeater-katas))
  (first (kata-collection-katas sword-katas))
  (first (kata-collection-katas spear-katas))
  (first (kata-collection-katas paint-thrower-katas)))

(define-kata-collection powerup-katas
  (first (kata-collection-katas health-katas))
  (first (kata-collection-katas shield-katas))
  (take  (kata-collection-katas boost-katas) 2)
  (first (kata-collection-katas size-katas)))
  