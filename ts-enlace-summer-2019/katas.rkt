#lang racket

(provide katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt"
         ts-fundamentals/katas
         (prefix-in fundamentals: (submod fundamentals/examples stimuli))
         (prefix-in data-sci: (submod data-sci/examples stimuli))
         )


(define proto-katas
  (merge-collections
    (lang->kata-collection 'fundamentals)
    (lang->kata-collection 'data-sci)))

(define katas
  (apply fill-in-stimuli
         (apply fill-in-stimuli
                (apply fill-in-stimuli proto-katas data-sci:stimuli)
                fundamentals:stimuli)
         stimuli))

(define data-sci-katas
  (apply fill-in-tips katas tips))


(define-sub-collections data-sci-katas
                        data-sci-pict
                        data-sci-plots
                        data-sci-histograms
                        data-sci-3d-histograms
                        data-sci-data-stories
                        (data-sci-data (not/c (curryr name-contains? "stories")))
                        data-sci-real-data
                        func-defs 
                        images)




