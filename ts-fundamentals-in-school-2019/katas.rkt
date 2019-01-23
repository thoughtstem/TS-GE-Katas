#lang racket


(require ts-kata-util/katas/main
         ts-fundamentals/katas)

(define (last-four x)
  (define backwards-list
    (reverse (kata-collection-katas x)))

  (define backwards-snippet
    (take backwards-list 4))

  (define fixed-snippet
    (reverse backwards-snippet))

  fixed-snippet
  )

(define-kata-collection beside-above-overlay
  (last-four image->code-katas))

#;(define katas
    (merge-collections
     (lang->kata-collection 'fundamentals)

     ;You can also import katas from other kata collections
     (kata-collection
      (list core-values))))


(define-kata-collection day-1-katas
  core-values
  hello-world
  fundamentals-shapes)

(define-kata-collection day-2-katas
  (first (kata-collection-katas image->code-katas))
  (take (kata-collection-katas beside-above-overlay) 3))

(define-kata-collection day-3-katas
  (fourth (kata-collection-katas image->code-katas))
  (last (kata-collection-katas beside-above-overlay)))

(define-kata-collection day-4-katas
  (fifth (kata-collection-katas image->code-katas))
  (first (kata-collection-katas simple-pictures))
  (second (kata-collection-katas simple-pictures)))

(define-kata-collection day-5-katas
  (seventh (kata-collection-katas image->code-katas))
  (third (kata-collection-katas simple-pictures))
  (fourth (kata-collection-katas simple-pictures)))




