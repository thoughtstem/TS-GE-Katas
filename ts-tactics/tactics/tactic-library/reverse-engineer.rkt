#lang racket

(provide reverse-engineer)

(require "../lang.rkt")

(define (reverse-engineer coach 
                          students
                          coach-computer
                          team-computers
                          challenge-card
                          kata-website 
                          whiteboard
                          markers
                          timer)

  (list
    (tactic-key "1+" "15-25" "K+" "4/5" "10+" "lvl 2")
    (supplies coach-computer
              team-computers
              whiteboard
              markers
              challenge-card
              timer)
    (tactic-section 'ACTIONS
                    (list (phase 'deconstruct-the-game
                                 (list
                                  (instruction coach  
                                               (type-up
                                                (code-of challenge-card)
                                                coach-computer))
                                  (instruction coach
                                               (body-action "run the game and show it to the players, while hiding the code"))
                                  (tell students
                                        (hand-write "a list of all the elements in the game" whiteboard))
                                  (tell students
                                        (body-action "mark any elements they have forgotten or don't know how to code"))))
                          (phase 'match-elements-to-code
                                 (list
                                  (instruction coach
                                               (give-to students challenge-card))
                                  (tell students
                                        (body-action "match each element on their list to the code that creates that element and to also add any missing elements"))
                                  (tell students
                                        (hand-write "any hints for the unknown elements" whiteboard))
                                  (instruction coach
                                               (take-back challenge-card))))
                          (phase 'round-1
                                 (list
                                  (instruction coach
                                               (set-timer-for "as many minutes as there are lines of code" timer))
                                  (tell students
                                        (body-action "type the code using just the list with hints"))
                                  (instruction coach
                                               (erase-some "hints" whiteboard))
                                  (tell students
                                        (erase-all-code-from team-computers))))
                          (phase 'repeat!
                                 (list
                                  (instruction coach
                                               (body-action "Repeat 'Round 1' until no hints remain and the players succeed!"))))))
    run-kata-challenge))

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
