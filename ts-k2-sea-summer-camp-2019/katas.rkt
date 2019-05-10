#lang racket

(provide (all-from-out ts-k2/katas))

(require ts-kata-util/katas/main
         ts-k2/katas)

(define-kata-collection intro-kata
  (first (kata-collection-katas sea)))

(define-kata-collection food-katas
  (take (drop (kata-collection-katas sea) 1) 6))

(define-kata-collection enemy-katas
  (take (drop (kata-collection-katas sea) 7) 6))

(define-kata-collection more-enemy-katas
  (take (drop (kata-collection-katas sea) 13) 6))

(define-kata-collection friend-katas
  (take (drop (kata-collection-katas sea) 19) 6))

(define-kata-collection more-friend-katas
  (drop (kata-collection-katas sea) 25))