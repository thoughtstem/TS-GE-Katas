#lang racket

(provide 
  starting-player
  person-right-of
  person-left-of
  owner-of
  rounds-completed
  configure-for-circle-play-around
  transfer-ownership-of)

(require "../base/base.rkt"
         "./basic-actions.rkt")

(define starting-player 'The-Starting-Player)

(define (configure-for-circle-play-around dealer (starting-player-label starting-player))
  (body-action (~a "arrange yourselves in a circle (the person to the right of " "[" dealer "] shall be " "[" starting-player-label "])")))

(define (transfer-ownership-of thing original-owner new-owner)
  (list
    #; ;So formal!
    (instruction original-owner
                 (directed-action
                   (announce (~a "I hereby transfer ownership of the " thing " to you"))
                   "to"
                   new-owner))

    (instruction original-owner
                 (give-to new-owner thing)) ))


(define (rounds-completed n)
  (predicate (~a "has had at least " n " turn(s)")
             "everyone in the circle"))


(define (owner-of thing)
  (adjective "the owner of"
             thing))

(define (person-right-of thing)
  (adjective "the person to the right of"
             thing))

(define (person-left-of thing)
  (adjective "the person to the left of"
             thing))


