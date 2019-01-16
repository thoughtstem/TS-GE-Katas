#lang racket

(require ts-kata-util/katas/main
         ts-fundamentals/katas)

(define-kata teaching-core-values-1
  (coach core-values
         #:with-materials
         '(whiteboard)))

(define-kata teaching-hello-world-1
  (coach (first (kata-collection-katas fundamentals))
         #:with-materials
         '(whiteboard)))

(define-kata teaching-hello-world-2
  (coach (first (kata-collection-katas image->code-katas))
         #:with-materials
         '(index-cards)))

(define-kata-collection teaching-katas
  teaching-core-values-1
  teaching-hello-world-1
  teaching-hello-world-2)



