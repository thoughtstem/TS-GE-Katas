#lang racket

(provide my-tactic)

(require "../lang.rkt"
         racket/runtime-path
         pict)

(define-runtime-path code-labels-3-6 "./img/code-anatomy-3-6.png")
(define-runtime-path code-labels-k-2 "./img/code-anatomy-K-2.png")

(define (my-tactic tactics-master
                   players computers
                   challenge-card 
                   whiteboard markers
                   timer)
  (define player-str (unpluralize players))
  (define players-str (remove-the-from players))
  (define computer-str (unpluralize computers))
  (define computers-str (remove-the-from computers))
  
  (list
   ; ==== TACTICS KEY ====   | This will float to the right of the supplies
   (tactic-key "1+" "10-15" "K+" "2/5" "<10" "lvl 1" #:players-string players-str)
   
   ; ==== SUPPLIES ==== | This should be made using the passed in parameters
   (supplies (supply-item computers (~a " (1 per " player-str ")"))
             (supply-item whiteboard ", or a piece of paper") ; supply-item with a clause
             markers
             challenge-card
             timer)
   
   ; ==== ACTIONS ====
   (tactic-section 'ACTIONS
     (list (phase 'phase-1 ; Phase takes a phase-name symbol and a list of instructions
                  (list (instruction tactics-master  
                                     (hand-write 
                                      (code-of challenge-card) whiteboard)
                                     #:figure (vl-append (text "Example of whiteboard code")
                                                         (text "inside a figure box       ")))
                        (vl-append (text "This pict will get a numbered bullet point")
                                   (text "since it's part of a phase list")) ; These can be any pict
                        (instruction tactics-master  
                                     (body-action (~a "Label and define the parts of the code with help from the " players-str)))
                        ))
           (image-group (tactic-image code-labels-3-6 #:scale 0.40)
                        (tactic-image code-labels-k-2 #:scale 0.40)) ;side-by-side images if possible
           (phase 'phase-2 ;Phases with only 1 instruction will get a non numbered bullet
                  (list (tell players     ; tell takes a subject and any instruction
                              (type-up (code-of challenge-card) computers)) 
                        ))
           ))
   ; ==== KATA CHALLENGE ====
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
