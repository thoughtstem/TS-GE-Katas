#lang racket

(provide building-up)

(require "../lang.rkt"
         pict)

(define (tactic-example-pict-1)
  (define content
    (vl-append (text "Example:" 'modern)
               (text "Stimulus: \"Code a game with an NPC who has a quest to fetch their lost spear." 'modern)
               (text "           Give the NPC new dialog after the quest is complete.\"" 'modern)
               (text "Step 1: Code a basic adventure game." 'modern)))
  content)

(define (tactic-example-pict-2)
  (define content
    (vl-append (text "Example Continued:" 'modern)
               (text "Step 1: Code a basic adventure game." 'modern)
               (text "Step 2: Add an avatar." 'modern)
               (text "Step 3: Add an npc." 'modern)
               (text "Step 4: Define a spear item." 'modern)
               (text "Step 5: Give the NPC a fetch quest to find the spear." 'modern)
               ))
  content)

(define (building-up tactics-master 
                     players
                     computers
                     challenge-card
                     whiteboard
                     markers)
  (define player-str (unpluralize players))
  (define players-str (remove-the-from players))
  (define computer-str (unpluralize computers))
  (define computers-str (remove-the-from computers))

  (list
    (tactic-key "1+" "10-20" "3+" "3/5" "10+" "lvl 2" #:players-string players-str)
    (supplies (supply-item computers (~a " (1 per " player-str ")"))
              whiteboard
              markers
              challenge-card)
    (tactic-section 'ACTIONS
                    (list (phase 'define-the-process
                                 (list
                                  (instruction tactics-master
                                               (read-aloud (stimulus-of challenge-card)))
                                  (instruction tactics-master  
                                               (brainstorm "What should be the very first element to code?")
                                               #:figure (tactic-example-pict-1))
                                  (instruction tactics-master
                                               (hand-write "the first step" whiteboard))
                                  (instruction tactics-master
                                               (hand-write "additional steps (until the resulting game would meet the stimulus)" whiteboard)
                                               #:figure (tactic-example-pict-2))
                                  ))
                          (phase 'coding-step-by-step
                                 (list
                                  (tell players
                                        (directed-action (body-action (~a "type up the code using the step-by-step process. Test after each step"
                                                                          " and then write their initials next to the step"))
                                                         "on"
                                                         whiteboard))))
                          ))
    (run-kata-challenge #:players-string players-str)))

(module+ test
  (print-tactic
   (building-up 'the-tactics-master
                'the-players
                'the-chromebooks
                'the-challenge-card
                'the-whiteboard
                'the-markers)))
