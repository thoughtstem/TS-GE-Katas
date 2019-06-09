#lang racket

(provide
  tap-heads
  random-members-of
  not-in
  group-fully-contains?
  select-secret-subgroup)

(require "../base/base.rkt"
         "./basic-things.rkt"
         "./basic-actions.rkt")

(define (group-fully-contains? group other-group )
  (predicate (~a "contains all of the people in [" other-group "]")
             group))

(define (tap-heads group)
  (directed-action
    (body-action "tap the heads")
    "of"
    group))


(define (random-members-of group)
  (object-part
    "random members of"
    group))

(define (not-in group)
  (object-part
    "people not in"
    group))

(define (select-secret-subgroup sub-group-name
                                (main-group team)
                                (selector coach))

  (list
    (instruction main-group
                 (close-eyes))

    (instruction selector
                 (announce (~a "If I tap your head, you are in the group: " sub-group-name)))

    (instruction selector
                 (tap-heads
                   (random-members-of main-group)))))
