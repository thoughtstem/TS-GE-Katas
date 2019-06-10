#lang racket

(provide next-minute next-minutes)

(require "./base.rkt" 
         "./util.rkt"
         "./activity.rkt"
         "./material.rkt"
         threading)

(module+ test
  (require rackunit)

  (define coach-bob 'dr-bob)

  ;Students
  (define sally 'sally)
  (define jimmy 'jimmy)

  ;Languages
  (define battlearena-farm 'battlearena-farm)

  ;Groups
  ;Materials...
  (define empty-table '())

  (define (index-cards n) 
    (material 'index-cards n))

  (define room-start
    (room (list (group coach-bob
                       (list sally jimmy)
                       battlearena-farm 
                       start-idle))
          (list (index-cards 50))))

  (check-equal?
    (activity-time
      (group-activity
        (first
          (room-groups
            (next-minute room-start)))))
    1
    )
  
  (check-equal?
    (activity-time
      (group-activity
        (first
          (room-groups
            (next-minutes 3 room-start)))))
    3))

(define/contract (next-minutes m r)
  (-> number? room? room?)

  (foldl
    (lambda (minute current-room)
      (next-minute current-room))
    r
    (range m)))

;Let's begin to model the passage of time.
;  Suppose a minute passes, how might the simulation change?
(define/contract (next-minute r)
  (-> room? room?)

  ;Model the passage of one minute for each group in the room
  ;Do it for all groups "at once" by folding all the changes together
  (foldl 
    (lambda (next-group current-room)
      (next-minute-for-group-in-room 
        current-room 
        next-group))
    r
    (room-groups r)))

;For a particular group, model the passage of one minute of time 
(define/contract (next-minute-for-group-in-room r g)
  (-> room? group? room?)

  (define new-g (next-minute-group r g))

  ;If the group begins or ends an activity in this minute, the room's materials may change 
  (define new-materials 
    (adjust-materials (room-materials r) g new-g))

  (room (replace-in-list (room-groups r) g new-g)
        new-materials))

;Adjust materials based on whether a group became active or idle
(define/contract (adjust-materials m before after)
  (-> (listof material?) group? group? (listof material?)) 

  (cond
    ;Easy case: Materials do not change if the group continues to be idle
    [(and (idle-group? before) 
          (idle-group? after)) m] 

    ;Easy case: Materials do not change if the group continues to be active on the same activity
    [(and (active-group? before) 
          (active-group? after)) m]

    ;If a group becomes idle, their materials can return to the pool
    [(and (active-group? before)
          (idle-group? after))
     (release-materials m 
                        (group-activity before))]

    ;If a group becomes active, they may claim materials from the pool
    [(and (idle-group? before)
          (active-group? after))
     (deplete-materials m (group-activity after))]))


(define/contract (next-minute-group r g)
  (-> room? group? group?)

  ;For now, we'll just model the state of the activity.
  ;  We'll assume that the teacher and students don't change state.
  ;  (Later, we can model things like students earning badges, etc.)
  (struct-copy group g
               [activity (next-minute-activity r g (group-activity g))]))


;Changes to a new activity if the current one has gone longer than its estimated completion time.
(define/contract (next-minute-activity r g a)
  (-> room? group? activity? activity?)

  (define new-a (tick-activity a))

  (if (activity-finished? new-a)
    (next-activity r g a) 
    new-a))

(define/contract (release-materials m a)
  (-> (listof material?) activity? (listof material?)) 
  
  (add-materials (activity-materials a) m))

(define/contract (deplete-materials m a)
  (-> (listof material?) activity? (listof material?)) 

  (sub-materials m
                 (activity-materials a)))







