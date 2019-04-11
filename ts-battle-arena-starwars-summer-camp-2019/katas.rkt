#lang racket

(provide (all-from-out ts-battle-arena-starwars/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (except-in ts-battle-arena-starwars/katas
                    imperial-katas
                    imperial-weapon-katas)
         (prefix-in old: (only-in ts-battle-arena-starwars/katas
                                  imperial-katas
                                  imperial-weapon-katas))
         )

(define-kata-collection imperial-katas
  (first (kata-collection-katas old:imperial-katas))
  (third (kata-collection-katas old:imperial-katas))
  (fourth (kata-collection-katas old:imperial-katas))
  (kata-collection-katas old:imperial-weapon-katas))
  
(define-kata-collection weapon-katas
  (kata-collection-katas lightsaber-katas)
  (kata-collection-katas blaster-katas))

(define-kata-collection powerup-katas
  (kata-collection-katas health-katas)
  (kata-collection-katas force-field-katas))

(define-kata-collection trap-weapon-katas
  (kata-collection-katas spike-mine-katas)
  (kata-collection-katas lightsaber-droid-katas))


(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building a BATTLE ARENA GAME."  
               "In ONE HOUR."
               "Including: a HERO, VILLAINS, LIGHTSABERS, VILLAIN WEAPONS, and PLANET DESIGNS.")))