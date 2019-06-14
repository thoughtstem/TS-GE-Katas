#lang racket

(provide reverse-engineer)

(require "../lang.rkt")

;WIP
(define (reverse-engineer coach 
                          students
                          coach-computer
                          team-computers
                          challenge-card
                          kata-website 
                          whiteboard
                          markers)

  (list
    (phase 'Setup
           (list
             (instruction coach
                          (find challenge-card "on" kata-website))
             
             (instruction coach  
                          (copy-paste 
                            "code"
                            kata-website
                            coach-computer))
             
             (instruction coach
                          (body-action "run the game")))) 

    (phase 'Main
           (list
              (instruction coach
                           (body-action "show the running game to the team (hide code)"))
            
              (instruction coach
                           (discuss "What are the code-able features of this game?"))

              (instruction team
                           (hand-write "list of code-able features" whiteboard))

              (instruction team
                            (verb "circle the code-able features they don't know how to code"))

              (until (predicate "has hints for all unknown code-able features" team)
                     (instruction team
                                  (directed-action
                                   (verb "write hint next to unknown code-able features")
                                   "using" (back-of challenge-card))))

              (instruction team
                           (directed-action
                            (body-action "write the code to create the game")
                            "on" team-computers))
            ))))

(module+ test
  (print-tactic
   (reverse-engineer 'Coach
                     'Team
                     'Coach-Computer
                     'Team-Computers
                     'the-challenge-card
                     'the-kata-page
                     'the-whiteboard
                     'the-markers)))
