#lang racket

(provide (all-from-out ts-battle-arena-starwars/katas)
         (all-from-out ts-fundamentals/katas)
         )

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
  (second (kata-collection-katas old:imperial-weapon-katas))
  (third (kata-collection-katas old:imperial-weapon-katas)))
  
(define-kata-collection weapon-katas
  (kata-collection-katas lightsaber-katas)
  (drop (kata-collection-katas blaster-katas) 1))

(define-kata-collection powerup-katas
  (kata-collection-katas health-katas)
  (kata-collection-katas force-field-katas))

(define-kata-collection trap-weapon-katas
  (take (kata-collection-katas spike-mine-katas) 2)
  (first (kata-collection-katas lightsaber-droid-katas))
  (third (kata-collection-katas lightsaber-droid-katas))
  (second (kata-collection-katas blaster-droid-katas)))