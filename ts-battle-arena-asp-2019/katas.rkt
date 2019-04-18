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
  (second (kata-collection-katas sword-katas))
  (third (kata-collection-katas spear-katas))
  (second (kata-collection-katas fire-magic-katas))
  (fourth (kata-collection-katas fire-magic-katas))
  (first (kata-collection-katas single-shot-katas))
  (second (kata-collection-katas spread-shot-katas))
  (third (kata-collection-katas homing-repeater-katas)))

(define-kata-collection powerup-katas
  (first (kata-collection-katas health-katas))
  (second (kata-collection-katas shield-katas))
  (take  (kata-collection-katas boost-katas) 2)
  (first (kata-collection-katas size-katas))
  (drop (kata-collection-katas force-field-katas) 1))
  
