#lang racket

(provide (all-from-out ts-battle-arena-starwars/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (except-in ts-battle-arena-starwars/katas
                    imperial-katas)
         (prefix-in old: (only-in ts-battle-arena-starwars/katas
                                  imperial-katas))
         )

(define-kata-collection imperial-katas
  (take (kata-collection-katas old:imperial-katas) 4))

(define-kata-collection weapon-katas
  (first (kata-collection-katas lightsaber-katas))
  (third (kata-collection-katas lightsaber-katas))
  (second (kata-collection-katas blaster-katas))
  (third (kata-collection-katas blaster-katas)))

(define-kata-collection powerup-katas
  (first (kata-collection-katas health-katas))
  (drop (kata-collection-katas force-field-katas) 1))

(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a BATTLE ARENA GAME."  
               "In ONE HOUR."
               "Including: a HERO, VILLAINS, LIGHTSABERS, VILLAIN WEAPONS, and PLANET DESIGNS.")))

