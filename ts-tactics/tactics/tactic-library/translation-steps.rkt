#lang racket

(provide translation-steps)

(require "../lang.rkt")

;needs editing before use -- replaced by translation-challenge

(define (translation-steps coach 
                           students
                           computers
                           challenge-card 
                           whiteboard 
                           markers)

  (list
    (phase 'Setup
             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (front-of challenge-card)) 
                            (top-half-of whiteboard))))

    (phase 'Main
           (list
              (instruction team
                           (body-action "translate abstract prompt into specific instructions"))
              (instruction coach
                           (hand-write
                            "specific instructions"
                            whiteboard))
                           
              (instruction team
                           (body-action "translate specific instructions into pseudo code"))
              (instruction coach
                           (hand-write
                            "pseudo code"
                            whiteboard))
                           
              (instruction team
                           (body-action "translate pseudo code into code"))
              (instruction coach
                           (hand-write
                            "code"
                            whiteboard))
                           
              (instruction team
                           (type-up "code" computers))
              (instruction team
                           (body-action "debug code as needed"))
            ))))

(module+ test
  (print-tactic
   (translation-steps 'Coach
                      'Team
                      'Team-Computers
                      'the-challenge-card
                      'the-whiteboard
                      'the-markers)))



