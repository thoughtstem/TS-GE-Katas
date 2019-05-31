#lang racket

(require "lang.rkt"
         "printing.rkt")

;TODO: Finish mafia instructions (add in discussion phase?)

;TODO: Begin organizing helper code (e.g. randomly select members)
;      Copy card to whiteboard... 
;      Other common sequences...

;TODO: Move mafia and disintegrating-code into their own files
;      Add docs

;TODO: Phases within a sequence don't print with step numbers (Should they?)
;TODO: Until's test case doesn't print well yet.
;TODO: Get rid of need for flatten (e.g. in phase constructor)

;TODO: Visually distinguish between Phase: and Subject: 
;TODO: Visually distinguish between Jail: and Coach: ("people in [Jail]:" is much better)
;TODO: Consider removing "Step N)"  Visually cluttering and maybe not necessary if we have clear syntactic sigils for phases and instructions


;Design guidelines:
;  1) Avoid relay-instructions.  E.g. instead of an instruction to the coach to "tell the students to do X", instruct them directly with (instruction students X) 
;  2) Exception to above: "The following vote will deside..." or "When I tap your head, it means ..."  These are forward-pointing instructions that augment a later instruction with new meaning or consequences.  They are necessary when everyone needs to be in sync and in agreement about what is about to happen.  It can be used in place of giving an instruction to a group -- especially when that group is being "acted upon" rather than acting...

(define (disintegrating-code coach 
                             students computers
                             challenge-card 
                             whiteboard 
                             markers)

  (list
    (phase 'Setup
           (list
             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (back-of challenge-card)) 
                            (bottom-half-of whiteboard)))

             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (front-of challenge-card)) 
                            (top-half-of whiteboard))))) 

    (phase 'Main
           (list
             (until (blank? (bottom-half-of whiteboard))  
                    (list

                      (instruction students
                                   (erase-all-from computers))

                      (instruction students
                                   (type-up 
                                     (contents-of (bottom-half-of whiteboard))
                                     computers))

                      (instruction coach  
                                   (remove-some-identifiers
                                     (contents-of 
                                       (bottom-half-of whiteboard))))))))))


(define (mafia coach 
               team computers
               challenge-card 
               whiteboard 
               markers
               timer)

  (list
    (phase 'Setup
           (list
             (instruction coach  
                          (tell-story 
                            "You're a game development company.  The big realease is a few days away!  The code keeps breaking in the night..."))

             (phase 'Select-Hackers
                    (select-secret-subgroup coach team 'Hackers))

             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (back-of challenge-card)) 
                            whiteboard))

             (instruction coach  
                          (announce 
                            (contents-of 
                              (front-of challenge-card))))))

    (until 
      (either 
        (group-fully-contains?  'Jail 'Hackers)
        (group-has-points? 'Hackers 2))

      (list
        (phase 'Night
               (list
                 (instruction 'Hackers
                              (introduce-subtle-bugs 
                                (contents-of whiteboard)))))
        (phase 'Day
               (flatten
                 (list
                   (instruction coach
                                (set-timer-for 5 timer))

                   (until
                     (timer-beeps timer)
                     (list
                       (instruction team
                                    (debug 
                                      (contents-of
                                        (front-of whiteboard)))))))))

        (phase 'End-of-Day
               (list
                 (instruction coach
                              (branching-verb
                                (is-bug-free?
                                  (contents-of
                                    (front-of whiteboard)))
                                (award-points 0 'Hackers)
                                (award-points 1 'Hackers)))

                 (vote-into-group
                   coach
                   (not-in 'Jail)
                   'Jail)))))

    (phase 'Scoring
           (list
             (instruction coach
                          (branching-verb (group-fully-contains?  'Jail 'Hackers)
                                          (shake-hands-with (not-in 'Hackers))
                                          (shake-hands-with 'Hackers)))))))


(define (select-secret-subgroup selector main-group sub-group-name)
  (list
    (instruction main-group
                 (close-eyes))

    (instruction selector
                 (announce (~a "If I tap your head, you are in the group: " sub-group-name)))

    (instruction selector
                 (tap-heads
                   (random-members-of main-group)))))

;Specifically for when a group is chosing one of its own members to join another group
(define (vote-into-group announcer 
                         voting-group 
                         target-group)
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



(module+ test
  (print-tactic
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers))
  (print-tactic
    (mafia 'Coach
           'Team
           'Team-Computers
           'the-challenge-card
           'the-whiteboard
           'the-markers
           'the-timer)))



