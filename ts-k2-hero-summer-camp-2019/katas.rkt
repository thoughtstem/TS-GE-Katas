#lang racket

(provide (all-from-out ts-k2/katas))

(require ts-kata-util/katas/main
         ts-k2/katas)

(define-kata-collection intro-kata
  (first (kata-collection-katas hero)))

(define-kata-collection day-one
  (take (drop (kata-collection-katas hero) 1) 9))

(define-kata-collection day-two
  (take (drop (kata-collection-katas hero) 10) 9))

(define-kata-collection day-three
  (take (drop (kata-collection-katas hero) 19) 7))

(define-kata-collection day-four
  (take (drop (kata-collection-katas hero) 26) 4))

(define-kata-collection day-five
  (drop (kata-collection-katas hero) 30))