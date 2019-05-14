#lang racket

(provide activity-finished?
         next-activity
         tick-activity
         start-idle)
(require "./base.rkt")


;We can enhance this later to take into account things like teacher and/or student skill level, or even our own measurements in the field. 
;That's why this is in its own file.  We may want to play with lots of ways of estimating this. 

;We may even want to parameterize this and run simulations with various estimations to get different ranges of material costs, etc.


;Can also enhance activity to have its own simulation state, and base the completion of an activity on its own stated completion conditions.  Each activity is like a sub-game, and we can model those if we need the simulation to be more detailed.

(define/contract (activity-finished? a)
  (-> activity? boolean?)

  ;Assume 5 minutes now. 
  ;  Probably should, at minimum, take into account:
  ;    kata difficulty
  ;    tactic specifics 
  
  ;If idle, shorter.
  (>= (activity-time a) 5))


(define/contract (next-activity r g a)
  (-> room? group? activity? activity?)
  (if (active? a)
    start-idle
    (start-random-activity g)))


(define/contract (tick-activity a)
  (-> activity? activity?)

  ;At minimum, we tick the time.
  ;Later, we can tick a sub-simulation if we need that level of detail.
  (struct-copy activity a
               [time (add1 (activity-time a))]))


(define start-idle (activity #f #f #f 0))
(define/contract (start-random-activity g) 
  (-> group? activity?)

  (activity 'some-kata    ;Pull from real katas
            'some-tactic  ;Pull from real tactics
            '()           ;Make based on kata and tactic
            0))



