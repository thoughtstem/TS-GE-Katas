#lang racket

(provide katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (prefix-in ts-sba: ts-starwars-battle-arena/katas))

(define katas
  (merge-collections
    (kata-collection (list core-values))

    ts-sba:katas))


