#lang racket

(provide disintegrating-code)

(require "../lang.rkt")

(define (disintegrating-code tactics-master 
                             players
                             computers
                             challenge-card 
                             whiteboard 
                             markers
                             timer)
  (define player-str (unpluralize players))
  (define players-str (remove-the-from players))
  (define computer-str (unpluralize computers))
  (define computers-str (remove-the-from computers))
  
  (list
   (tactic-key "1+" "10-20" "K+" "1/5" "< 10" "lvl 1" #:players-string players-str)
   (supplies (supply-item computers (~a " (1 per " player-str ")"))
             (supply-item whiteboard " and Markers")
             challenge-card
             timer)
   (tactic-section 'ACTIONS
                   (list
                    (phase 'prep-&-round-0
                           (list
                            (instruction tactics-master  
                                         (hand-write 
                                          (stimulus-of challenge-card)
                                          whiteboard))
                            (instruction tactics-master  
                                         (hand-write 
                                          (code-of challenge-card)
                                          whiteboard))
                            (instruction tactics-master
                                         (set-timer-for "as many minutes as there are lines of code" timer))
                            (tell players
                                  (type-up (code-from whiteboard) computers))))
                    (phase 'round-1
                           (list
                            (instruction tactics-master  
                                         (erase-some-identifiers
                                          whiteboard))
                            (tell players
                                  (erase-all-code-from computers))
                            (tell players
                                  (body-action "type up the code again, using their memory to fill in the blanks"))))
                    (phase 'repeat!
                           (list
                            (instruction tactics-master
                                         (repeat 'round-1 (~a ", erasing more code each time until you are"
                                                              " left with only symbols; then erase those too")))))
                    ))
   (run-kata-challenge #:players-string players-str)))

(module+ test
  (print-tactic
   (disintegrating-code 'the-tactics-master
                        'the-players
                        'the-chromebooks
                        'the-challenge-card
                        'the-whiteboard
                        'the-markers
                        'the-timer)))
