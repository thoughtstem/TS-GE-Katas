#lang racket

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

(module+ test
  (print-tactic
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers)))
