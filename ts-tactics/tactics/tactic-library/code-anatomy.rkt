#lang racket

(provide code-anatomy)

(require "../lang.rkt")

(define (code-anatomy coach 
                             students computers
                             challenge-card 
                             whiteboard 
                             markers)

  (list
    (instruction coach  
                 (hand-write 
                   (contents-of 
                     (back-of challenge-card)) 
                   (bottom-half-of whiteboard)))

    (instruction coach  
                 (body-action "label the lang line"))

    (instruction coach
                 (body-action "label all definitions"))


    (instruction coach
                 (body-action "label all non-definition code"))

    (instruction coach
                 (body-action "circle all key-words")) 

    (instruction coach
                 (body-action "write the total number of key words")) 

    (instruction coach
                 (body-action "put a dot at the beginning of all parenthesized expressions"))

    (instruction coach
                 (body-action "write up the total number of expressions"))

    (instruction coach
                 (body-action "above each expression dot, write the expression's depth level"))

    ))

(module+ test
  (print-tactic
    (code-anatomy 'Coach
                  'Team
                  'Team-Computers
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers)))
