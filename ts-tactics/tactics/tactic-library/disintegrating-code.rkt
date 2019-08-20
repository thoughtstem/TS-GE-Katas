#lang racket

(provide disintegrating-code)

(require "../lang.rkt")

(define (disintegrating-code coach 
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
   (phase 'Actions
          (list
           (instruction coach  
                        (hand-write 
                         (stimuli-of challenge-card)
                         whiteboard))
           (instruction coach  
                        (hand-write 
                         (code-of challenge-card)
                         whiteboard))
           (instruction coach
                        (set-timer-for "as many minutes as there are lines of code" timer))
           (tell students
                 (type-up (code-of whiteboard) computers))
           (instruction coach  
                        (erase-some-identifiers
                         whiteboard))
           (tell students
                 (erase-all-from computers))
           (tell students
                 (body-action "type up the code again, using their memory to fill in the blanks!"))
           (instruction coach
                        (body-action (~a "Repeat steps 5-7, erasing more code each time until you are left with only symbols."
                                         " Then erase those too!")))
           ))))

(module+ test
  (print-tactic
   (disintegrating-code 'Tactics-Master
                        'Players
                        'Team-Computers
                        'the-challenge-card
                        'the-whiteboard
                        'the-markers
                        'the-timer)))
