#lang racket

(provide mafia
         collaboratively-debug)

(require "../lang.rkt")

(define (collaboratively-debug)
  (instruction coach
               (set-timer-for 5 timer))

  (until
    (timer-beeps timer)
    (list
      (instruction team
                   (debug 
                     (contents-of
                       (front-of whiteboard)))))))

(define (mafia coach 
               team
               computers
               challenge-card 
               whiteboard 
               markers
               timer)

  (list
    (phase 'Setup
           (list
             (instruction coach  
                          (tell-story 
                            "You're a game development company.  The big release is a few days away!  The code keeps breaking in the night..."))

             (sub-routine (select-secret-subgroup 'Hackers))  
             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (back-of challenge-card)) 
                            whiteboard))

             (instruction coach  
                          (announce 
                            (contents-of 
                              (front-of challenge-card))))))

    (phase 'Hack-and-Defend
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
                 (sub-routine (collaboratively-debug)))

          (phase 'End-of-Day
                 (list
                   (instruction coach
                                (branching-verb
                                  (is-bug-free?
                                    (contents-of
                                      (front-of whiteboard)))
                                  (award-points 0 'Hackers)
                                  (award-points 1 'Hackers)))

                   (sub-routine
                     (vote-member-into-new-group
                       (not-in 'Jail)
                       'Jail)))))))

    (phase 'Meta-Cognition
           (list
             (instruction coach
                          (branching-verb (group-fully-contains?  'Jail 'Hackers)
                                          (discuss "What are some strategies for when you get picked as a hacker?")
                                          (discuss "What are some strategies for debugging code?")))))))

(module+ test
  (print-tactic
    (mafia 'Coach
           'Team
           'Team-Computers
           'the-challenge-card
           'the-whiteboard
           'the-markers
           'the-timer)))



