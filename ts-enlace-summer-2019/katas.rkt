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


(define-sub-collections katas
                        data-sci-pict
                        data-sci-plots
                        data-sci-histograms
                        data-sci-3d-histograms
                        data-sci-data-stories
                        (data-sci-data (not/c (curryr name-contains? "stories")))
                        func-defs 
                        images)




