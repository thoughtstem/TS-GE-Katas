#lang racket

(provide
  points-for
  award-points
  group-has-points?)

(require "../base/base.rkt")

(define (group-has-points? group num-points)
  (predicate (~a "have exactly " num-points " points")
             group))

(define (award-points n group)
  (change (~a "add " n " to")
          (points-for group)))

(define (points-for g)
  (adjective "current points for"
             g))

