#lang racket

(provide (all-from-out ts-battle-arena-avengers/katas)
         (all-from-out ts-fundamentals/katas)
         )

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-battle-arena-avengers/katas
         )

(define-kata-collection powerup-katas
  (first (kata-collection-katas health-katas))
  (first (kata-collection-katas size-katas))
  (first (kata-collection-katas boost-katas))
  (second (kata-collection-katas boost-katas))
  (second (kata-collection-katas force-field-katas)))

(define-kata-collection force-field-extra-katas
  (first (kata-collection-katas force-field-katas))
  (third (kata-collection-katas force-field-katas)))

(define-kata-collection planet-design-katas
  (first (kata-collection-katas planet-katas))
  (second (kata-collection-katas planet-katas))
  (fourth (kata-collection-katas planet-katas))
  (first (kata-collection-katas level-design-katas))
  (third (kata-collection-katas level-design-katas)))

(define-kata-collection planet-design-extra-katas
  (fourth (kata-collection-katas planet-katas))
  (fourth (kata-collection-katas level-design-katas)))

(define-kata-collection villain-with-power-katas
  (first (kata-collection-katas villain-katas))
  (third (kata-collection-katas villain-katas))
  (fourth (kata-collection-katas villain-katas))
  (first (kata-collection-katas villain-power-katas))
  (third (kata-collection-katas villain-power-katas)))

(define-kata-collection hero-power-katas
  (drop (kata-collection-katas power-katas) 1)
  (drop (kata-collection-katas drone-katas) 1))