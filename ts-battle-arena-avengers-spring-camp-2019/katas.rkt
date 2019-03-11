#lang racket

(provide (all-from-out  ts-battle-arena-avengers/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-battle-arena-avengers/katas
         )

#;(define katas
  (merge-collections
    ;Many katas begin by pulling in examples
    ; from some TS-Language
    (lang->kata-collection 'fundamentals)

    ;You can also import katas from other kata collections
    (kata-collection
      (list core-values))))


