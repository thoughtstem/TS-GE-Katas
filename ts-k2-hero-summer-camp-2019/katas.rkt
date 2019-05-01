#lang racket

(provide (all-from-out ts-k2/katas))

(require ts-kata-util/katas/main
         ts-k2/katas)

(define-kata-collection intro-kata
  (first (kata-collection-katas hero)))

(define-kata-collection day-one
  (take (drop (kata-collection-katas hero) 1) 6))

(define-kata-collection day-two
  (take (drop (kata-collection-katas hero) 7) 6))

(define-kata-collection day-three
  (take (drop (kata-collection-katas hero) 13) 6))

(define-kata-collection day-four
  (take (drop (kata-collection-katas hero) 19) 6))

(define-kata-collection day-five
  (drop (kata-collection-katas hero) 25))