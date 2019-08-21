#lang racket

(provide code-anatomy)

(require "../lang.rkt")

(define (code-anatomy coach 
                      students computers
                      challenge-card 
                      whiteboard 
                      markers
                      timer)
  (list
   (supplies computers
             whiteboard
             markers
             challenge-card
             timer)
   (tactic-section 'ACTIONS
     (list (phase 'label-and-define
                  (list (instruction coach  
                                     (hand-write 
                                      (code-of challenge-card) whiteboard))
                        (instruction coach  
                                     (body-action "Label and define the parts of the code with help from the players"))
                        #|(instruction coach
                                     (body-action "put a box around all definitions"))
                        (instruction coach
                                     (body-action "put a box around all top-level expressions"))
                        (instruction coach
                                     (body-action "circle all key-words")) 

                        (instruction coach
                                     (body-action "write the total number of key words")) 

                        (instruction coach
                                     (body-action "put a dot at the beginning of all parenthesized expressions"))

                        (instruction coach
                                     (body-action "write up the total number of expressions"))

                        (instruction coach
                                     (body-action "above each expression dot, write the expression's nesting depth"))|#
                        ))
           (phase 'fill-in-the-blanks
                  (list (instruction coach
                                     (erase-all-code-from whiteboard #:clause ", leaving the labels," ))
                        (tell students
                              (body-action "write the code back in, working together"))
                        (instruction coach
                                     (body-action "Repeat this phase until players have succedded without help twice"))))
     
           (phase 'final-quiz
                  (list (instruction coach
                                     (erase-all-code-from whiteboard #:clause " again, leaving the labels,"))
                        (instruction coach
                                     (set-timer-for "as many minutes as there are lines of code" timer))
                        (tell students
                              (body-action "type up the code independently from memory"))
                        (instruction coach
                                     (body-action "Repeat this phase if needed"))))
           ))))

(module+ test
  (print-tactic
    (code-anatomy 'the-tactics-master
                  'the-players
                  'the-chromebooks
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers
                  'the-timer)))
