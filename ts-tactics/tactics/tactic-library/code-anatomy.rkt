#lang racket

(provide code-anatomy)

(require "../lang.rkt"
         racket/runtime-path)

(define-runtime-path code-labels-3-6 "./img/code-anatomy-3-6.png")
(define-runtime-path code-labels-k-2 "./img/code-anatomy-K-2.png")

(define (code-anatomy tactics-master 
                      players computers
                      challenge-card 
                      whiteboard 
                      markers
                      timer)
  (define player-str (unpluralize players))
  (define players-str (remove-the-from players))
  (define computer-str (unpluralize computers))
  (define computers-str (remove-the-from computers))
  
  (list
   (tactic-key "1+" "10-15" "K+" "2/5" "<10" "lvl 1" #:players-string players-str)
   (supplies (supply-item computers (~a " (1 per " player-str ")"))
             (supply-item whiteboard " and Markers")
             challenge-card
             timer)
   (tactic-section 'ACTIONS
     (list (phase 'label-&-define
                  (list (instruction tactics-master  
                                     (hand-write 
                                      (code-of challenge-card) whiteboard))
                        (instruction tactics-master  
                                     (body-action (~a "Label and define the parts of the code with help from the " players-str)))
                        ))
           (image-group (tactic-image code-labels-3-6 #:scale 0.42 #:draw-border? #t)
                        (tactic-image code-labels-k-2 #:scale 0.42 #:draw-border? #t))
           (phase 'fill-in-the-blanks
                  (list (instruction tactics-master
                                     (erase-all-code-from whiteboard #:clause ", leaving the labels," ))
                        (tell players
                              (body-action "write the code back in, working as a team"))
                        (instruction tactics-master
                                     (body-action (~a "Repeat this phase until " players-str " have succeeded without help twice")))))
           (phase 'final-quiz
                  (list (instruction tactics-master
                                     (erase-all-code-from whiteboard #:clause " again, leaving the labels,"))
                        (instruction tactics-master
                                     (set-timer-for "as many minutes as there are lines of code" timer))
                        (tell players
                              (body-action "type up the code independently from memory"))
                        (instruction tactics-master
                                     (body-action "Repeat this phase if needed"))))
           ))
   (run-kata-challenge #:players-string players-str)))

(module+ test
  (print-tactic
    (code-anatomy 'the-tactics-master
                  'the-players
                  'the-chromebooks
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers
                  'the-timer)))
