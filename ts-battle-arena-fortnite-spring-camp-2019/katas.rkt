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
               "Including: a HERO, ENEMIES, WEAPONS, ENEMY WEAPONS, and BACKGROUND DESIGNS.")))

(define-kata-collection powerup-katas
  (first (kata-collection-katas health-katas))
  (second (kata-collection-katas shield-katas))
  (first (kata-collection-katas boost-katas)))

(define-kata-collection selected-armor-katas
  (first (kata-collection-katas armor-katas))
  (second (kata-collection-katas armor-katas))
  (third (kata-collection-katas armor-katas)))