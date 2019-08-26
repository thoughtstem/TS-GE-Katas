#lang racket

(provide my-tactic)

(require "../lang.rkt"
         racket/runtime-path
         pict)

(define-runtime-path code-labels-3-6 "./img/code-anatomy-3-6.png")
(define-runtime-path code-labels-k-2 "./img/code-anatomy-K-2.png")

(define (my-tactic tactics-master 
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
   (tactic-key "1+" "10-15" "K+" "2/5" "<10" "lvl 1" #:players-string players-str) ; this will float to the right
   (supplies (supply-item computers (~a " (1 per " player-str ")"))
             (supply-item whiteboard ", or a piece of paper") ; supply-item with a clause
             markers
             challenge-card
             timer)
   (tactic-section 'ACTIONS
     (list (phase 'phase-1
                  (list (instruction tactics-master  
                                     (hand-write 
                                      (code-of challenge-card) whiteboard)
                                     #:figure (vl-append (text "Example of whiteboard code")
                                                         (text "inside a figure box       ")))  ;this optional figure can be any pict
                        (vl-append (text "This pict will get a numbered bullet point")
                                   (text "since it's part of a phase list"))
                        (instruction tactics-master  
                                     (body-action (~a "Label and define the parts of the code with help from the " players-str)))
                        ))
           (image-group (tactic-image code-labels-3-6 #:scale 0.40) ;image-groups will place images side by side if possible
                        (tactic-image code-labels-k-2 #:scale 0.40))
           (phase 'phase-2
                  (list (tell players
                              (type-up (code-of challenge-card) computers)) ; tell takes a subject and any instruction
                        ))
           ))
   (run-kata-challenge #:players-string players-str)))

(module+ test
  (print-tactic
    (my-tactic 'the-tactics-master
               'the-players
               'the-chromebooks
               'the-challenge-card
               'the-whiteboard
               'the-markers
               'the-timer)))
