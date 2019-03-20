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
               "Including: a HERO, VILLAINS, POWERS, PLANET DESIGNS, and POWER-UPS.")))


(define-kata-collection powerup-katas
  (first (kata-collection-katas health-katas))
  (first (kata-collection-katas size-katas))
  (second (kata-collection-katas boost-katas)))

(define-kata-collection planet-design-katas
  (first (kata-collection-katas planet-katas))
  (second (kata-collection-katas planet-katas))
  (first (kata-collection-katas level-design-katas))
  (second (kata-collection-katas level-design-katas)))