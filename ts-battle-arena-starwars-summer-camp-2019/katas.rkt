#lang racket

(provide katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (prefix-in ts-bas: ts-battle-arena-starwars/katas))

(define katas
  (merge-collections
    (kata-collection (list core-values))

    ts-bas:katas))


