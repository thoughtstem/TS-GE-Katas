#lang racket

(require ts-kata-util/katas/main
         ts-fundamentals/katas)

(define-kata stimulus-1
  (within #:seconds 5
          (make-kata
           (read (list "What is this kata's stimulus?"
                       core-values))
           (say "The stimulus is hearing the phrase 'What are our core values?'")
           )))

(define-kata stimulus-2
  (within #:seconds 5
          (make-kata
           (read (list "What is this kata's simulus?"
                       stimulus-1))
           (say "The stimulus is being asked \"What is this kata's simulus?\", and being show the core values kata.")
           )))

(define-kata phases
  (within #:seconds 5
          (recite
           #:in "What are the \"Four Phases of Kata Mastery\"?"
           #:out (list "Encounter"  
                       "Training"
                       "Testing"
                       "Praise"))))

(define-kata encounter-phase
  (within #:seconds 5
          (recite
           #:in "What parts of a kata does a coach show a student during the Encounter phase?"
           #:out (list "Stimulus"  
                       "Response"
                       "Refinements"))))

(define-kata testing-phase
  (within #:seconds 5
          (recite
           #:in "What part of a kata does a coach show a student during the Testing phase?"
           #:out (list "Stimulus only"))))

(define-kata-collection meta-katas
  stimulus-1
  stimulus-2
  phases
  encounter-phase
  testing-phase)
