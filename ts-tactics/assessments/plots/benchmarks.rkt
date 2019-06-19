#lang racket

(provide compare-first-years
         compare-second-years 
         compare-third-years 
         compare-k-2-years 
         compare-3rd-5th-years 
         compare-6th-8th-years 
         compare-9th-12th-years 

         k-2-year-1
         k-2-year-2
         k-2-year-3

         3rd-5th-year-1 
         3rd-5th-year-2 
         3rd-5th-year-3 

         6th-8th-year-1 
         6th-8th-year-2 
         6th-8th-year-3 

         9th-12th-year-1 
         9th-12th-year-2 
         9th-12th-year-3 
         9th-12th-year-4
         
         total-novice
         bad-expert-coder)

(require "./lang.rkt")

(define (bad-expert-coder)
  (student-data
    #:langs 1
    #:coder expert
    #:communicator novice
    #:collaborator novice
    #:leader novice
    #:teacher novice
    #:architect novice))

(define (total-novice)
  (student-data
    #:langs 0
    #:coder novice
    #:communicator novice
    #:collaborator novice
    #:leader novice
    #:teacher novice
    #:architect novice))

(define (k-2-year-1)
  (student-data
    #:langs 3
    #:coder advanced-beginner
    #:communicator advanced-beginner
    #:collaborator advanced-beginner
    #:leader novice
    #:teacher novice
    #:architect novice))

(define (k-2-year-2)
  (student-data
    #:langs 6
    #:coder competent
    #:communicator competent
    #:collaborator advanced-beginner
    #:leader novice
    #:teacher novice
    #:architect novice))

(define (k-2-year-3)
  (student-data
    #:langs 9
    #:coder competent
    #:communicator competent
    #:collaborator competent
    #:leader novice
    #:teacher novice
    #:architect novice))

(define (3rd-5th-year-1)
  (student-data
    #:langs 3
    #:coder advanced-beginner
    #:communicator advanced-beginner
    #:collaborator advanced-beginner
    #:leader advanced-beginner
    #:teacher advanced-beginner
    #:architect novice))

(define (3rd-5th-year-2)
  (student-data
    #:langs 6
    #:coder competent
    #:communicator competent
    #:collaborator competent
    #:leader advanced-beginner
    #:teacher advanced-beginner
    #:architect novice))

(define (3rd-5th-year-3)
  (student-data
    #:langs 9
    #:coder competent
    #:communicator competent
    #:collaborator competent
    #:leader advanced-beginner
    #:teacher advanced-beginner
    #:architect novice))

(define (6th-8th-year-1)
  (student-data
    #:langs 3
    #:coder competent
    #:communicator competent
    #:collaborator competent
    #:leader competent
    #:teacher competent
    #:architect novice))

(define (6th-8th-year-2)
  (student-data
    #:langs 6
    #:coder proficient
    #:communicator proficient
    #:collaborator proficient
    #:leader competent
    #:teacher competent
    #:architect novice))

(define (6th-8th-year-3)
  (student-data
    #:langs 9
    #:coder proficient
    #:communicator proficient
    #:collaborator proficient
    #:leader competent
    #:teacher competent
    #:architect novice))

(define (9th-12th-year-1)
  (student-data
    #:langs 3
    #:coder proficient
    #:communicator proficient
    #:collaborator proficient
    #:leader proficient
    #:teacher proficient
    #:architect novice))

(define (9th-12th-year-2)
  (student-data
    #:langs 6
    #:coder expert
    #:communicator expert
    #:collaborator expert
    #:leader proficient
    #:teacher proficient
    #:architect novice))

(define (9th-12th-year-3)
  (student-data
    #:langs 9
    #:coder expert
    #:communicator expert
    #:collaborator expert
    #:leader proficient
    #:teacher proficient
    #:architect novice))

(define (9th-12th-year-4)
  (student-data
    #:langs 12
    #:coder expert
    #:communicator expert
    #:collaborator expert
    #:leader expert
    #:teacher expert
    #:architect advanced-beginner))



(define (compare-k-2-years)
  (compare-three
    #:title "K-2nd"
    #:labels '("Kinder" "1st" "2nd")
    (k-2-year-1)
    (k-2-year-2)
    (k-2-year-3)))

(define (compare-3rd-5th-years)
  (compare-three
    #:title "3rd-5th"
    #:labels '("3rd" "4th" "5th")
    (3rd-5th-year-1)
    (3rd-5th-year-2)
    (3rd-5th-year-3)))

(define (compare-6th-8th-years)
  (compare-three
    #:title "6th-8th"
    #:labels '("6th" "7th" "8th")
    (6th-8th-year-1)
    (6th-8th-year-2)
    (6th-8th-year-3)))

(define (compare-9th-12th-years)
  (compare-four
    #:title "9th-12th"
    #:labels '("9th" "10th" "11th" "12th")
    (9th-12th-year-1)
    (9th-12th-year-2)
    (9th-12th-year-3)
    (9th-12th-year-4)))

(define (compare-first-years)
  (compare-four
    #:title "First Years, Different Ages"
    #:labels '("Kinder" "3rd" "6th" "9th")
    (k-2-year-1)
    (3rd-5th-year-1)
    (6th-8th-year-1)
    (9th-12th-year-1)))

(define (compare-second-years)
  (compare-four
    #:title "Second Years, Different Ages"
    #:labels '("1st" "4th" "7th" "10th")
    (k-2-year-2)
    (3rd-5th-year-2)
    (6th-8th-year-2)
    (9th-12th-year-2)))

(define (compare-third-years)
  (compare-four
    #:title "Third Years, Different Ages"
    #:labels '("2nd" "5th" "8th" "11th")
    (k-2-year-3)
    (3rd-5th-year-3)
    (6th-8th-year-3)
    (9th-12th-year-3)))

(module+ test
  (plot-new-window? #t)
 
  (compare-first-years)
  (compare-second-years)
  (compare-third-years)

  )







