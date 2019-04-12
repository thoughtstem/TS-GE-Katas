#lang racket

(provide (all-from-out ts-battle-arena-fortnite/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-battle-arena-fortnite/katas
         )

(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a BATTLE ARENA GAME."  
               "In ONE HOUR."
               "Including: a AVATAR, ENEMIES, WEAPONS, POWER-UPS, and TOWER WEAPONS.")))

(define-kata-collection powerup-katas
  (first (kata-collection-katas health-katas))
  (second (kata-collection-katas shield-katas))
  (first (kata-collection-katas boost-katas))
  (second (kata-collection-katas boost-katas))
  (first (kata-collection-katas size-katas))
  (second (kata-collection-katas size-katas))
  )

(define-kata-collection selected-tower-katas
  (kata-collection-katas spear-tower-katas)
  (kata-collection-katas repeater-tower-katas))

(define-kata-collection selected-enemy-katas
  (first (kata-collection-katas enemy-katas))
  (third (kata-collection-katas enemy-katas))
  (fourth (kata-collection-katas enemy-katas))
  (kata-collection-katas enemy-weapon-katas))