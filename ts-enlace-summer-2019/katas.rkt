#lang racket

(provide katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         ts-fundamentals/katas
         (prefix-in fundamentals: (submod fundamentals/examples stimuli))
         )


(define proto-katas
  (merge-collections
    (lang->kata-collection 'fundamentals)
    (lang->kata-collection 'data-sci)))



(define katas
  (apply fill-in-stimuli
    (apply fill-in-stimuli proto-katas stimuli)
    fundamentals:stimuli))







