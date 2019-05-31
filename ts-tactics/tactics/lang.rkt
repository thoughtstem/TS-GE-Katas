#lang racket

(provide 
  ;TODO: Organize by part of speech and by "mechanic" -- groups, code stuff, story-telling, etc...

  blank?
  group-fully-contains?
  contents-of
  front-of
  back-of
  top-half-of
  bottom-half-of
  type-up
  hand-write
  remove-some-identifiers
  erase-all-from

  ;Debugging
  introduce-subtle-bugs
  is-bug-free?
  debug

  shake-hands-with
  close-eyes
  place-hands-on-head  
  place-hands-behind-back
  tap-heads
  announce
  random-members-of
  not-in
  tell-story

  ;Timer stuff could be its own module
  ;  Lots of timer mechanics...
  set-timer-for
  timer-beeps


  ;voting (could have its own module), lots of ways of voting
  finger-vote
  begin-the-vote
  finish-the-vote


  ;points could have its own module
  award-points
  group-has-points?

  

  (all-from-out "base.rkt"))

(require "base.rkt")

(define (hand-write info dest)
  (information-move "hand write" info dest))

(define (erase-all-from dest)
  (information-edit "erase all from" 
                    (contents-of dest)))

(define (introduce-subtle-bugs dest)
  (information-edit "introduce subtle bugs" 
                    (contents-of dest)))

(define (is-bug-free? info)
  (predicate "has no bugs"
             info))

(define (debug dest)
  (information-edit "remove bugs from" 
                    (contents-of dest)))

(define (blank? dest)
  (information-check "is blank" 
                     (contents-of dest)))

(define (group-has-points? group num-points)
  (predicate (~a "have exactly " num-points " points")
             group))

(define (award-points n group)
  (change (~a "add " n " to")
          (points-for group)))

(define (points-for g)
  (adjective "current points for"
             g))

(define (timer-beeps timer)
  (predicate
    "is beeping" 
    timer))

(define (group-fully-contains? group other-group )
  (predicate (~a "contains all of the people in [" other-group "]")
             group))

(define (type-up info dest)
  (information-move "type up" info dest))


(define (remove-some-identifiers dest)
  (information-edit "remove some identifiers from" (contents-of dest)))

(define (announce s)
  (directed-action
    (body-action "announce the following")
    "->"
    s))

(define (tell-story s)
  (directed-action
    (body-action "tell the following story in a fun way")
    "->"
    s))

(define (close-eyes)
  (body-action "close eyes"))

(define (place-hands-on-head)
  (body-action "place hands on head"))

(define (place-hands-behind-back)
  (body-action "place hands behind back"))

(define (tap-heads group)
  (directed-action
    (body-action "tap the heads")
    "of"
    group))

(define (set-timer-for n timer)
  (directed-action
    (body-action (~a "set " n " minutes"))
    "on"
    timer))


(define (random-members-of group)
  (object-part
    "random members of"
    group))

(define (not-in group)
  (object-part
    "people not in"
    group))

(define (finger-vote new-group-name)
  (body-action (~a "point at who must go in [" new-group-name "]")))

(define (begin-the-vote)
  (announce "I will now count down from 3 to 1.  You must vote on 1."))

(define (finish-the-vote)
  (body-action "count the votes and take any implied actions"))

(define (contents-of object)
  (object-part "the contents of" object))

(define (back-of object)
  (object-part "the back of" object))

(define (front-of object)
  (object-part "the front of" object))

(define (top-half-of object)
  (object-part "the top half of" object))

(define (bottom-half-of object)
  (object-part "the bottom half of" object))


(define (shake-hands-with group)
  (directed-action
    (body-action "shake hands")
    "with"
    ;TODO: Everyone in??
    group))


