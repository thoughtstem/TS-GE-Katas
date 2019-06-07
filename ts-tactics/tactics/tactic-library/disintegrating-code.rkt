#lang racket

(provide disintegrating-code)

(require "../lang.rkt")

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
                      (instruction coach  
                                   (remove-some-identifiers
                                     (bottom-half-of whiteboard)))

                      (instruction students
                                   (erase-all-from computers))

                      (instruction students
                                   (body-action "write a program that fits the requirements written on the top half of the whiteboard"))

                      ))))))

(module+ test
  (print-tactic
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers)))
