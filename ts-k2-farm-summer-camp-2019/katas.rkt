#lang racket

(provide (all-from-out ts-k2/katas))

(require ts-kata-util/katas/main
         ts-k2/katas)

(define-kata-collection intro-kata
  (first (kata-collection-katas farm)))

(define-kata-collection day-one
  (take (drop (kata-collection-katas farm) 1) 6))

(define-kata-collection day-two
  (take (drop (kata-collection-katas farm) 7)  6))

(define-kata-collection day-three
  (take (drop (kata-collection-katas farm) 13) 6))

(define-kata-collection day-four
  (take (drop (kata-collection-katas farm) 17) 6))

(define-kata-collection day-five
  (drop (kata-collection-katas farm) 25)) 