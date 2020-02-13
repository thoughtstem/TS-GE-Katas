#lang racket

(provide (all-from-out ts-survival-pokemon/katas)
         (all-from-out ts-fundamentals/katas)
         )

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (prefix-in og: ts-survival-pokemon/katas)
         )

(define-kata-collection code-of-awesomeness-katas
  (kata-collection-katas og:code-of-awesomeness-katas))

(define-kata-collection hello-world-katas
  (kata-collection-katas og:hello-world-katas))

(define-kata-collection pokemon-katas
  (drop (kata-collection-katas og:pokemon-katas) 1))

(define-kata-collection food-and-crafter-katas
  (drop  (kata-collection-katas og:food-katas) 2)
  (third (kata-collection-katas og:crafter-katas)))

(define-kata-collection stone-katas
  (kata-collection-katas og:stone-katas))

(define-kata-collection friend-and-trainer-katas
  (drop   (kata-collection-katas og:friend-katas) 2)
  (fourth (kata-collection-katas og:trainer-katas))
  (fifth  (kata-collection-katas og:trainer-katas)))

(define-kata-collection town-level-and-sky-katas
  (third (kata-collection-katas og:town-katas))
  (take  (kata-collection-katas og:sky-katas) 2)
  (take  (kata-collection-katas og:level-design-katas) 2))