#lang racket

(provide code-anatomy)

(require "../lang.rkt"
         racket/runtime-path)

(define-runtime-path code-labels-3-6 "./img/code-anatomy-3-6.png")
(define-runtime-path code-labels-k-2 "./img/code-anatomy-K-2.png")

(define (code-anatomy coach 
                      students computers
                      challenge-card 
                      whiteboard 
                      markers
                      timer)
  (list
   (tactic-key "1+" "10-15" "K+" "2/5" "<10" "lvl 1")
   (supplies computers
             whiteboard
             markers
             challenge-card
             timer)
   (tactic-section 'ACTIONS
     (list (phase 'label-and-define
                  (list (instruction coach  
                                     (hand-write 
                                      (code-of challenge-card) whiteboard))
                        (instruction coach  
                                     (body-action "Label and define the parts of the code with help from the players"))
                        ))
           (image-group (tactic-image code-labels-3-6 #:scale 0.40)
                        (tactic-image code-labels-k-2 #:scale 0.40))
           (phase 'fill-in-the-blanks
                  (list (instruction coach
                                     (erase-all-code-from whiteboard #:clause ", leaving the labels," ))
                        (tell students
                              (body-action "write the code back in, working together"))
                        (instruction coach
                                     (body-action "Repeat this phase until players have succedded without help twice"))))
           (phase 'final-quiz
                  (list (instruction coach
                                     (erase-all-code-from whiteboard #:clause " again, leaving the labels,"))
                        (instruction coach
                                     (set-timer-for "as many minutes as there are lines of code" timer))
                        (tell students
                              (body-action "type up the code independently from memory"))
                        (instruction coach
                                     (body-action "Repeat this phase if needed"))))
           ))))

(module+ test
  (print-tactic
    (code-anatomy 'the-tactics-master
                  'the-players
                  'the-chromebooks
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers
                  'the-timer)))
