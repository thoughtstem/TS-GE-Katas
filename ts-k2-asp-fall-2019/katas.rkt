#lang racket

(provide (all-from-out ts-k2/katas))

(require ts-kata-util/katas/main
         ts-k2/katas)

(define-kata-collection intro-kata
  (first (kata-collection-katas animal)))

(define-kata-collection day-one
  (take (drop (kata-collection-katas animal) 1) 5))

(define-kata-collection day-two
  (take (drop (kata-collection-katas animal) 6)  5))

(define-kata-collection day-three
  (take (drop (kata-collection-katas animal) 11) 5))

(define-kata-collection day-four
  (take (drop (kata-collection-katas animal) 16) 5))

(define-kata-collection day-five
  (drop (kata-collection-katas animal) 20))
