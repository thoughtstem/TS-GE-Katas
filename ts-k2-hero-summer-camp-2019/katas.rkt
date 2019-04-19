#lang racket

(provide (all-from-out ts-k2/katas))

(require ts-kata-util/katas/main
         ts-k2/katas)

(define-kata-collection day-one
  (take (kata-collection-katas hero) 9) )

(define-kata-collection day-two
  (take (drop (kata-collection-katas hero) 9) 9))

(define-kata-collection day-three
  (take (drop (kata-collection-katas hero) 18) 7))

(define-kata-collection day-four
  (take (drop (kata-collection-katas hero) 25) 4))

(define-kata-collection day-five
  (drop (kata-collection-katas hero) 29))