#lang racket

(provide reverse-engineer)

(require "../lang.rkt")

;WIP
(define (reverse-engineer coach 
                           students
                           coach-computer
                           kata-website 
                           whiteboard 
                           markers)

  (list
    (phase 'Setup
           (list
             (instruction coach  
                          (copy-paste 
                            "code" ;from challenge card? 
                            kata-website
                            coach-computer))
             (instruction coach
                          (body-action "run the game")))) 

    (phase 'Main
           (list
              (instruction coach
                           (body-action "show the running game to the team"))
            
              (instruction coach
                           (discuss "the elements in the game"))
            ))))

(module+ test
  (print-tactic
   (reverse-engineer 'Coach
                     'Team
                     'Coach-Computer
                     'the-kata-page
                     'the-whiteboard
                     'the-markers)))
