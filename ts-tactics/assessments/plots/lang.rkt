#lang racket

(provide 
  compare-two
  compare-three
  compare-four

  student-data
  report 
  skill-plot
  novice
  advanced-beginner
  competent
  proficient
  expert
  (all-from-out plot))

(require plot
         pict)

(define novice 1)
(define advanced-beginner 2)
(define competent 3)
(define proficient 4)
(define expert 5)

(struct data 
  (num-langs skill-levels))

(define (student-data 
          #:langs (langs 1)
          #:coder (code novice)
          #:communicator (comm novice)
          #:collaborator (colab novice)
          #:leader (lead novice)
          #:teacher (teach novice)
          #:architect (arch novice))

  (data
    langs
    (list (vector 'Coder code) 
          (vector 'Communicator comm) 
          (vector 'Collaborator colab) 
          (vector 'Leader lead) 
          (vector 'Teacher teach) 
          (vector 'Architect arch))
    ))

(define (report student-data
                #:color (c 2)
                #:x-min (x-min 0)
                #:skip (skip 1)
                #:label (label #f))

  (list

    (discrete-histogram (data-skill-levels student-data)
                        #:line-color 0
                        #:y-min   0
                        #:y-max   5
                        #:invert? #t 
                        #:color   c
                        #:x-min   x-min
                        #:skip skip
                        #:label label)

    (point-pict 
      #:anchor 'right
      (vector 
        (vector-ref (first (data-skill-levels student-data)) 1)
        ;Unclear, make getters with better names
        (+ 0.5
           x-min))
      (text (~a "langs: " (data-num-langs student-data))))))


(define (skill-plot #:title (title #f) . charts)
  (plot 
    #:title title
    #:legend-anchor 'top-right
    #:y-label "Skill"
    #:x-label "Level" 
    #:width 350
    #:height 350
    charts))

(define (compare-two 
          #:title (title #f)
          #:labels (labels (list #f #f)) 
                     a b)
  (skill-plot
    #:title title
    (report
      #:color 1
      #:x-min 1
      #:skip 2.5
      #:label  (first labels)
      a)

    (report
      #:color 2
      #:x-min 0
      #:skip 2.5
      #:label  (second labels)
      b)))

(define (compare-three 
          #:title (title #f)
          #:labels (labels (list #f #f #f))  
          a b c)
  (skill-plot
    #:title title
    (report
      #:color 1
      #:x-min 2
      #:skip 3.5
      #:label  (first labels)
      a)

    (report
      #:color 2
      #:x-min 1
      #:skip 3.5
      #:label  (second labels)
      b)

    (report
      #:color 3
      #:x-min 0
      #:skip 3.5
      #:label  (third labels)
      c)))

(define (compare-four 
          #:title (title #f)
          #:labels (labels (list #f #f #f #f))  
          a b c d)
  (skill-plot
    #:title title
    (report
      #:color 1
      #:x-min 3
      #:skip 4.5
      #:label  (first labels)
      a)

    (report
      #:color 2
      #:x-min 2
      #:skip 4.5
      #:label  (second labels)
      b)

    (report
      #:color 3
      #:x-min 1
      #:skip 4.5
      #:label  (third labels)
      c)

    (report
      #:color 4
      #:x-min 0
      #:skip 4.5
      #:label  (fourth labels)
      d)))


(module+ test
  (plot-new-window? #t)

  (compare-two
    (student-data
      #:coder 1 
      #:communicator 2
      #:collaborator 1 
      #:leader 1 
      #:teacher 1 
      #:architect 1)

    (student-data
      #:coder 1 
      #:communicator 1
      #:collaborator 1 
      #:leader 1 
      #:teacher 1 
      #:architect 1)))
