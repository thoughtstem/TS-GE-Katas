#lang racket

(provide survival-minecraft-katas
         survival-minecraft-proto-katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         "./katas/read-code-stimuli.rkt")

#;(define katas
  (merge-collections
    ;Many katas begin by pulling in examples
    ; from some TS-Language
    (lang->kata-collection 'fundamentals)

    ;You can also import katas from other kata collections
    (kata-collection
      (list core-values))))

(define survival-minecraft-proto-katas
  (lang->kata-collection 'survival-minecraft))

(define survival-minecraft-katas
  (apply fill-in-stimuli survival-minecraft-proto-katas stimuli))

(define-sub-collections survival-minecraft-katas
  hero-katas
  food-katas
  ore-katas
  mob-katas
  crafter-katas
  entity-katas
  sky-katas
  starvation-rate-katas
  game-jam-katas)