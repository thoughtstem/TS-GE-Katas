#lang racket 

(require "./main.rkt"
         threading)

;Teachers
(define coach-t-rex  'coach-t-rex)
(define coach-raptor 'coach-raptor)
(define coach-dactyl 'coach-dactyl)

;Students
(define sally 'sally)
(define jimmy 'jimmy)
(define alan  'alan)
(define becky 'becky)

;Languages
(define battlearena-farm 'battlearena-farm)
(define survival-zoo     'survival-zoo)

;Groups

(define table1
  (group coach-t-rex
         (list sally jimmy)
         battlearena-farm 
         start-idle))

(define table2
  (group coach-raptor
         (list alan)
         survival-zoo
         start-idle))

(define table3
  (group coach-dactyl
         (list becky)
         survival-zoo
         start-idle))

(define (index-cards n) 
  (material 'index-cards n))

(define room-start
  (room (list table1 table2 table3)
        (list (index-cards 50))))

(render-room
 (next-minutes 0 room-start))

(render-room
 (next-minutes 5 room-start))



;TODO: Make a renderer for this, pictures for moments, animation for sim?






;TODO: The current model calculates materials from katas / tactics / etc. for a single room

; REMEMBER:
;   To that calculation, we'll still need to add the cost of the kata cards and tactic cards themselves
;     (as well as an aditional algorithm for knowing how many of those are necessary based on the groups' langs)
;   But we're saving that for later, since the hard part is calculating all the other materials besides those.







