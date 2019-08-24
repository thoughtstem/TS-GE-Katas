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
   (tactic-key "1+" "10-20" "K+" "1/5" "<10" "lvl 1")
   (supplies computers
             whiteboard
             markers
             challenge-card
             timer)
   (tactic-section 'ACTIONS
                   (list
                    (phase 'prep-&-round-0
                           (list
                            (instruction coach  
                                         (hand-write 
                                          (stimulus-of challenge-card)
                                          whiteboard))
                            (instruction coach  
                                         (hand-write 
                                          (code-of challenge-card)
                                          whiteboard))
                            (instruction coach
                                         (set-timer-for "as many minutes as there are lines of code" timer))
                            (tell students
                                  (type-up (code-of whiteboard) computers))))
                    (phase 'round-1
                           (list
                            (instruction coach  
                                         (erase-some-identifiers
                                          whiteboard))
                            (tell students
                                  (erase-all-code-from computers))
                            (tell students
                                  (body-action "type up the code again, using their memory to fill in the blanks!"))))
                    (phase 'repeat!
                           (list
                            (instruction coach
                                         (body-action (~a "Repeat 'Round 1', erasing more code each time until you are"
                                                          " left with only symbols. Then erase those too!")))))
                    ))
   run-kata-challenge))

(module+ test
  (print-tactic
   (disintegrating-code 'the-tactics-master
                        'the-players
                        'the-chromebooks
                        'the-challenge-card
                        'the-whiteboard
                        'the-markers
                        'the-timer)))
