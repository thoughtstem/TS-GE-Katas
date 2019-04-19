#lang racket

(provide (all-from-out ts-k2/katas))

(require ts-kata-util/katas/main
         ts-k2/katas)

(define-kata-collection day-one
  (take (kata-collection-katas sea) 6))

(define-kata-collection day-two
  (take (drop (kata-collection-katas sea) 6) 6))

(define-kata-collection day-three
  (take (drop (kata-collection-katas sea) 12) 6))

(define-kata-collection day-four
  (take (drop (kata-collection-katas sea) 18) 6))

(define-kata-collection day-five
  (take (drop (kata-collection-katas sea) 24) 6))