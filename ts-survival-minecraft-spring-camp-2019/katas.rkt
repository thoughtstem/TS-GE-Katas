#lang racket

(provide (all-from-out  ts-survival-minecraft/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-survival-minecraft/katas)


#;(define katas
  (merge-collections
    ;Many katas begin by pulling in examples
    ; from some TS-Language
    (lang->kata-collection 'fundamentals)

    ;You can also import katas from other kata collections
    (kata-collection
      (list core-values))))

#;(define hero-kata-collection
  ;(from ts-survival)
  ;hero-1
  ;hero-2
  ;hero-3
  ;(from ts-battle-arena)
  ;avatar-4
  )


