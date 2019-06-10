#lang racket

(provide
  vote-on
  finger-vote
  begin-the-vote
  finish-the-vote
  vote-member-into-new-group)

(require "../base/base.rkt"
         "./basic-things.rkt" 
         "./basic-actions.rkt")

(define (finger-vote new-group-name)
  (body-action (~a "point at who must go in [" new-group-name "]")))

(define (begin-the-vote)
  (announce "I will now count down from 3 to 1.  You must vote on 1."))

(define (finish-the-vote)
  (body-action "count the votes and take any implied actions"))

;Specifically for when a group is chosing one of its own members to join another group
(define (vote-member-into-new-group 
                                    voting-group 
                                    target-group

                                    (announcer coach))

  (phase 'Vote
         (list

           ;TODO: Discussion phase?

           (instruction announcer
                        (announce (~a "The upcoming \"finger vote\" will decide who goes in [" target-group"].")))

           (instruction voting-group
                        (place-hands-on-head))

           (instruction announcer
                        (announce (~a "Everyone freeze.  I now will count down from 3 to 1.  On 1, you must point at someone who currently has their hands on their head.  3... 2... 1!")))

           (instruction voting-group
                        (finger-vote target-group))

           (instruction announcer
                        (finish-the-vote)))))

(define (vote-on on)
  (directed-action
    (body-action "vote")
    "on"
    on))

