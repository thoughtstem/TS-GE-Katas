#lang racket

(provide reverse-engineer)

(require "../lang.rkt")

(define (reverse-engineer tactics-master 
                          players
                          master-computer
                          player-computers
                          challenge-card
                          kata-website 
                          whiteboard
                          markers
                          timer)
  (define tactics-master-str (string-titlecase (remove-the-from tactics-master)))
  (define player-str (unpluralize players))
  (define players-str (remove-the-from players))
  (define computer-str (unpluralize player-computers))
  (define computers-str (remove-the-from player-computers))
  
  (list
    (tactic-key "1+" "15-25" "K+" "4/5" "10+" "lvl 2" #:players-string players-str)
    (supplies (supply-item master-computer (~a " (1 for the " tactics-master-str ")"))
              (supply-item player-computers (~a " (1 per " player-str ")"))
              (supply-item whiteboard " and Markers")
              challenge-card
              timer)
    (tactic-section 'ACTIONS
                    (list (phase 'deconstruct-the-game
                                 (list
                                  (instruction tactics-master  
                                               (type-up
                                                (code-of challenge-card)
                                                master-computer))
                                  (instruction tactics-master
                                               (body-action (~a "run the game and show it to the " players-str ", while hiding the code")))
                                  (tell players
                                        (hand-write "a list of all the elements in the game" whiteboard))
                                  (tell players
                                        (body-action "mark any elements they don't know or have forgotten how to code"))))
                          (phase 'match-elements-to-code
                                 (list
                                  (instruction tactics-master
                                               (give-to players challenge-card))
                                  (tell players
                                        (body-action "match each element on their list to the code that creates that element and to also add any missing elements to their list"))
                                  (tell players
                                        (hand-write "any hints for the unknown elements" whiteboard))
                                  (instruction tactics-master
                                               (take-back challenge-card))))
                          (phase 'round-1
                                 (list
                                  (instruction tactics-master
                                               (set-timer-for "as many minutes as there are lines of code" timer))
                                  (tell players
                                        (body-action "type the code using just the list with hints"))
                                  (instruction tactics-master
                                               (erase-some "hints" whiteboard))
                                  (tell players
                                        (erase-all-code-from player-computers))))
                          (phase 'repeat!
                                 (list
                                  (instruction tactics-master
                                               (repeat 'round-1 (~a " until no hints remain and the " players-str " succeed")))))))
    (run-kata-challenge #:players-string players-str)))

(module+ test
  (print-tactic
   (reverse-engineer 'the-tactics-master
                     'the-players
                     'the-master-chromebook
                     'the-player-chromebooks
                     'the-challenge-card
                     'the-kata-page
                     'the-whiteboard
                     'the-markers
                     'the-timer)))
