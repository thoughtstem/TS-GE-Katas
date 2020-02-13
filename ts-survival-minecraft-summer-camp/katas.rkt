#lang racket

(provide (all-from-out  ts-survival-minecraft/katas)
         (all-from-out  ts-fundamentals/katas)
         )

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (prefix-in og: ts-survival-minecraft/katas)
         )

(define-kata-collection code-of-awesomeness-katas
  (kata-collection-katas og:code-of-awesomeness-katas))

(define-kata-collection hello-world-katas
  (kata-collection-katas og:hello-world-katas))

(define-kata-collection custom-skin-katas
  (first (kata-collection-katas og:custom-skin-katas))
  (third  (kata-collection-katas og:custom-skin-katas))
  (fourth (kata-collection-katas og:custom-skin-katas))
  (sixth  (kata-collection-katas og:custom-skin-katas)))

(define-kata-collection food-and-crafter-katas
  (drop  (kata-collection-katas og:food-katas) 2)
  (third (kata-collection-katas og:crafter-katas)))

(define-kata-collection mob-and-entity-katas
  (third  (kata-collection-katas og:mob-katas))
  (fourth (kata-collection-katas og:mob-katas))
  (fifth  (kata-collection-katas og:mob-katas))
  (third  (kata-collection-katas og:entity-katas))
  (fifth  (kata-collection-katas og:entity-katas)))

(define-kata-collection ore-and-weapon-crafter-katas
  (second (kata-collection-katas og:ore-katas))
  (third  (kata-collection-katas og:ore-katas))
  (fourth (kata-collection-katas og:ore-katas))
  (drop   (kata-collection-katas og:crafter-katas) 5))

(define-kata-collection biome-and-sky-katas
  (drop  (kata-collection-katas og:biome-katas) 3)
  (kata-collection-katas og:sky-katas))