#lang racket

(provide translation-challenge)

(require "../lang.rkt")


(define (translation-challenge coach 
                               students
                               computers
                               challenge-card 
                               whiteboard 
                               markers
                               time-limit
                               timer)

  (list
    (phase 'Setup
             (instruction coach  
                          (hand-write 
                            (contents-of 
                              (front-of challenge-card)) 
                            (top-half-of whiteboard))))

    (phase 'Translation
           
           (instruction coach
                        (announce "Your goal is to all write the EXACT same code on your own computer, silently and independently."))


           (instruction coach
                        (announce "Before you start, we can translate this prompt into very specific instructions -- but only in English, NO CODE!"))

           (until (predicate "feels they can achieve the goal" team)
                  (instruction team
                               (hand-write "more specific instructions" whiteboard))))
    
    (phase 'Code
           (instruction coach
                        (announce "There is NO talking from now until the timer goes off."))
           
           (instruction coach
                        (directed-action
                         (directed-action
                          (verb "set")
                          "" timer)
                         "for" time-limit))

           (until (predicate "beeps" timer)
                  (instruction team
                        (directed-action
                         (directed-action
                          (write-code)
                          "independently on" computers)
                         "using" (contents-of whiteboard))))
           )

    (phase 'Assess
           (instruction team
                        (directed-action
                         (verb "compares")
                         "" (contents-of computers)))
           )

    (phase 'Metacognition
           (instruction coach
                        (branching-verb (predicate "all wrote exact same code" team)
                                          (directed-action (verb "congratulate") "" team)
                                          (discuss "How could we get more specific in our pre-code translation?"))))
    ))

(module+ test
  (print-tactic
   (translation-challenge 'Coach
                          'Team
                          'Team-Computers
                          'the-challenge-card
                          'the-whiteboard
                          'the-markers
                          'five-minutes
                          'timer)))
