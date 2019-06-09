#lang racket

(provide team-memorize
         pass-and-memorize
         all-correct-post-mortem)

(require "../lang.rkt")

;TODO: Start on docs.  They will help a lot.  Plus, much of that can go directly into the handbook.

(define (pass-and-memorize (time 10))
  (list
    (instruction (owner-of 'the-challenge-card)
                 (within-seconds time
                                 (memorize 
                                   (contents-of
                                     (back-of
                                       'the-challenge-card))))) 

    (transfer-ownership-of 'the-challenge-card
                           (owner-of 'the-challenge-card)
                           (person-right-of you))))   


(define (timer-holder-talks-to-scribe)
  (list
    (instruction (owner-of timer)
                 (set-timer-for-seconds 30 timer))

    (until (timer-beeps timer)
           (instruction 
             (group-add (owner-of timer)
                        (owner-of whiteboard))
             (minding-the-phase-constraints
               (communicate))))

    (transfer-ownership-of timer
                           (owner-of timer)
                           (adjective
                             "(skipping the whiteboard holder)"       
                             (person-right-of you)))))

(define (all-correct-post-mortem)
  (instruction (group-add coach team)

               (branching-verb
                 (is-bug-free?
                   ;Code on?
                   (contents-of computers))
                 (announce "We are the winners!")
                 (discuss "strategy for next time"))))

(define (team-memorize coach 
                       students 
                       computers
                       challenge-card 
                       timer
                       whiteboard
                       markers)

  (list
    (phase 'Strategy
           (instruction coach
                        (announce "In a moment, you must decide which order you will take turns in.  You may also strategize during this phase.  Do this wisely.  After this phase, you will not be allowed to talk freely."))

           (instruction coach
                        (discuss (front-of challenge-card)))

           (instruction students
                        (configure-for-circle-play-around coach)))

    (phase 'Silent
           (instruction coach
                        (announce "The [Silent] phase has begun.  Any talking during this phase will result in penalties and possibly an instant-loss.  Hand signals are permitted.  Looking at the challenge card when you are not the owner is forbidden."))

           (transfer-ownership-of challenge-card
                                  coach
                                  starting-player)

           (until (rounds-completed 1)
                  (sub-routine 
                    (pass-and-memorize 10))))

    (phase 'One-Talker
           (instruction coach
                        (announce "The [One-Talker] phase has begun.  During this phase, you may only speak or gesture if you own the timer.  If you own the whiteboard, you may write or gesture (but you may not speak). All other forms of communication from anyone will result in penalties or an instant loss for the whole team."))

           (instruction coach
                        (hide challenge-card))

           (transfer-ownership-of whiteboard
                                  coach
                                  starting-player)

           ;How to specify that the whiteboard holder doesn't get the timer?

           (transfer-ownership-of timer 
                                  coach
                                  (person-right-of starting-player))

           (until (rounds-completed 1) 
                  (sub-routine 
                    (timer-holder-talks-to-scribe))))

    (phase 'Testing
           (instruction coach
                        (announce "The [Testing] phase has begun.  All communication is forbidden in this phase.  However, you may type on your own computer and look at the whiteboard whenever you want.  By the end of this phase, the goal is to have the same code on all of the computers.  And it must work correctly!  Nod your heads if you understand."))

           (instruction students (nod))

           (instruction coach (announce "You have 5 minutes beginning now."))
           (instruction coach (set-timer-for 5 timer))

           (until (timer-beeps timer)
                  (instruction students 
                               (minding-the-phase-constraints
                                 (write-code)))))

    (phase 'Meta-Cognition
           (instruction coach
                        (announce "The [Scoring] phase has now begun.   If the code on EACH computer is correct, we all win."))

           (sub-routine
             (all-correct-post-mortem)))))

(module+ test
  ;TODO: Note that subroutines need to be printed, which means they need to have been called with all of the same inputs as the calling function (otherwise bindings and labelings and context won't match up).
  ;   ... If we need more control, maybe we can implement functions and give people a mnemonic for figuring out the parameter passing -- i.e. using the whiteboard. (Actually, could already do this on top of subroutines...)

  (displayln "SUB ROUTINE, pass-and-memorize")
  (print-tactic
    (pass-and-memorize 10))

  (displayln "SUB ROUTINE, timer-holder-talks-to-scribe")
  (print-tactic
    (timer-holder-talks-to-scribe))
  (displayln "SUB ROUTINE, all-correct-post-mortem")
  (print-tactic
    (all-correct-post-mortem))
  (displayln "\n")

  (print-tactic
    (team-memorize 
      'Coach
      'Team
      'Team-Computers
      'the-challenge-card
      'the-timer
      'the-whiteboard
      'the-markers)))

