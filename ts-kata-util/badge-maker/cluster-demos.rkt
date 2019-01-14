#lang racket

(require "util.rkt" pict)

(define (safe f)
  (lambda (l)
    (with-handlers ([exn:fail? (thunk* (last l))])
      (f l))))

(define (sequence f1 f2 f3 #:fgs fg-colors #:bgs bg-colors)
  (define fg fg-colors)
  (define bg bg-colors)
  
  (triad
   (normal-badge (f1 1 ((safe first) fg))
                 ((safe first) bg))
   
   (normal-badge (f2 1 ((safe second) fg))
                 ((safe second) bg))
   
   (normal-badge (f3 1 ((safe third) fg))
                 ((safe third) bg))))

(define (sequence2 f1 f2 f3 #:fgs fg-colors #:bgs bg-colors)
  (define fg fg-colors)
  (define bg bg-colors)
  
  (triad
   (two-tone-badge (f1 1 ((safe first) fg))
                   ((safe first) bg)
                   ((safe second) bg)
                   )
   
   (two-tone-badge (f2 1 ((safe second) fg))
                   ((safe second) bg)
                   ((safe third) bg))
   
   (two-tone-badge (f3 1 ((safe third) fg))
                   ((safe third) bg)
                   ((safe fourth) bg))))

(define (on-hoodie #:left-chest (s (ghost (circle 1)))
                   #:right-chest (s2 (ghost (circle 1))))

  (pin-over
   (pin-over (scale hoodie 5)
             170 250
             (scale-to-fit #:mode 'preserve/max
                           s 50 50))

   260 250
   (scale-to-fit s2 50 50)))

(define (school-name t)
  (define t-image (text t))

  (frame
   (cc-superimpose
    
    (colorize
     (filled-rectangle (+ 20 (pict-width t-image))
                       (+ 10 (pict-height t-image)))
     "lightgray")
    t-image)))



(module+ test

  (pict->bitmap
   (on-hoodie
    #:right-chest (school-name "Albert Einstein")
    #:left-chest
    (vc-append
     (sequence2 #:fgs (list "black")
                #:bgs pallet3

            
                (thunk* angry-bird1)
                (thunk* angry-bird2)
                (thunk* angry-bird3))

     (sequence2 #:fgs (list "black")
                #:bgs pallet1

                potion-icon
                mace-icon
                sword-icon))
    )))

#;(module+ test

  (sequence #:fgs (list "black")
            #:bgs (list "lightgray")

            
            (thunk* angry-bird1)
            (thunk* angry-bird2)
            (thunk* angry-bird3))

  
  (sequence #:fgs (list "black")
            #:bgs (list "lightgray")

            potion-icon
            mace-icon
            sword-icon)


  
  (sequence #:fgs (list "white")
            #:bgs (list "lightgray")

            potion-icon
            mace-icon
            sword-icon)

  

  (sequence #:fgs (list "black")
            #:bgs (reverse pallet1)

            potion-icon
            mace-icon
            sword-icon)

  (sequence #:fgs (list "black")
            #:bgs (reverse pallet3)

            potion-icon
            mace-icon
            sword-icon)

  (sequence #:fgs (list "white")
            #:bgs (reverse pallet1)

            potion-icon
            mace-icon
            sword-icon)

  (sequence #:fgs (list "white")
            #:bgs (reverse pallet3)

            potion-icon
            mace-icon
            sword-icon)
  )



