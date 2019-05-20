#lang racket

(provide 
  (struct-out material)
  (struct-out room)
  (struct-out group)
  (struct-out language)
  (struct-out teacher)
  (struct-out student)
  (struct-out tactic)
  (struct-out activity)
  idle?
  active?
  active-groups
  idle-groups
  idle-group?
  active-group?)

(require "./util.rkt")

(module+ test
  (require rackunit))

(module+ test
  (define r
    (room (list (group 'dr-bob 
                       (list 'sally 'jimmy) 
                       'battlearena-farm
                       (activity #f #f #f 0)))
          (list (material 'index-cards 5))))

  (check-equal? 
    (length (active-groups r))
    0)

  (check-equal? 
    (length (idle-groups r))
    1))

;A room is a bunch of student groups, and some shared materials
(struct material (name quantity) #:transparent)
(struct room (groups materials) #:transparent)
(struct group (teacher students language activity) #:transparent)

(struct language (katas) #:transparent)
(struct teacher  (tactics) #:transparent)
(struct student  (katas) #:transparent)

(struct tactic (materials description) #:transparent)


;Definition of activity:
;When a group does a kata activity, 
;  a teacher uses a "tactic"
;  to teach one of the language's "katas", 
;  using some materials,
;  for some amount of time.
(struct activity (kata tactic materials time) #:transparent)
;A special kind of "activity" is the idle activity.
;  It has no kata, tactic, or materials.  But it does take up time.
(define/contract (idle? a)
  (-> activity? boolean?)
  (and (not (activity-kata a))
       (not (activity-tactic a)) 
       (not (activity-materials a))))

(define (active? a) (not (idle? a)))

;Active groups are the ones who are not idle
(define/contract (active-group? g)
  (-> group? boolean?)
  (not (idle? (group-activity g))))

;Idle groups are the ones who are are idle
(define/contract (idle-group? g)
  (-> group? boolean?)
  (idle? (group-activity g)))

;The same is true at the room level
(define/contract (active-groups r)
  (-> room? (listof group?))
  (filter  
    active-group?
    (room-groups r)))

(define/contract (idle-groups r)
  (-> room? (listof group?))

  (filter
    idle-group?
    (room-groups r)))





