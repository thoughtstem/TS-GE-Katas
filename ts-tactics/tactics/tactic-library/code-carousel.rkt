#lang racket

(provide code-carousel)

(require "../lang.rkt")

(define (code-carousel tactics-master 
                       players
                       computers
                       challenge-cards
                       whiteboard
                       markers
                       timer)
  (define player-str (unpluralize players))
  (define players-str (remove-the-from players))
  (define computer-str (unpluralize computers))
  (define computers-str (remove-the-from computers))
  
  (list
    (tactic-key "3+" "10-20" "3+" "4/5" "10+" "lvl 2" #:players-string players-str)
    (supplies (supply-item computers (~a " (1 per pair of " players-str ")"))
              whiteboard
              markers
              (supply-item challenge-cards " (3 that do not contradict)")
              )
    (tactic-section 'ACTIONS
      (list (phase 'get-started
                   (list
                    (instruction tactics-master
                                 (hand-write (stimuli-of challenge-cards) whiteboard))
                    (instruction tactics-master
                                 (body-action (~a "Pair up all " players-str
                                                  ". If there are an odd number of " players-str
                                                  ", create a trio or a solo coder")))
                    ))
            (phase 'round-1
                   (list
                    (tell players
                          (body-action (~a "code a game that fits all three stimuli, working together with their partner on one " computer-str)))
                    (instruction tactics-master
                                 (set-timer-for (~a "45 seconds and start it as soon as the " players-str " start coding")
                                                timer))
                    ))
            (phase 'rotate-&-round-2
                   (list
                    (instruction tactics-master
                                 (body-action (~a "Stop all " players-str " from coding as soon as the timer ends")))
                    (tell players
                          (body-action (~a "move to the " computer-str " to their right with their partner")))
                    (tell players
                          (body-action (~a "continue with the code on this new " computer-str)))
                    (instruction tactics-master
                                 (set-timer-for (~a "45 seconds and start it as soon as the " players-str " start coding")
                                                timer))
                    ))
            (phase 'repeat!
                   (list
                    (instruction tactics-master
                                 (repeat 'rotate-&-round-2 (~a " until all " computers-str
                                                               " have a running game that fits the stimuli")))
                    (instruction tactics-master
                                 (body-action (~a "Encourage " players-str " who have a completed game to add extra features until the round is over"
                                                  " or the goal is achieved")))))
            ))
    (run-kata-challenge #:players-string players-str)))

(module+ test
  (print-tactic
   (code-carousel 'the-tactics-master
                  'the-players
                  'the-chromebooks
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers
                  'the-timer)))
