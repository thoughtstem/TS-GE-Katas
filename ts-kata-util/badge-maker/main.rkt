#lang racket

(provide (all-from-out "./util.rkt")
         tri-badge)

(require "./cluster-demos.rkt")
(require "./util.rkt")

(define (tri-badge a b c #:bgs (bgs pallet3))
  (sequence2 #:fgs (list "black")
             #:bgs bgs

             a
             b
             c))

(require pict)

(define (save-pict the-pict name kind)
  (define bm (pict->bitmap the-pict))
  (send bm save-file name kind))


(module+ test
  (tri-badge potion-icon sword-icon mace-icon)



  (save-pict
   (tri-badge #:bgs (shuffle pallet3)
              double-swords-icon
              carrot-icon
              coins-icon)
   "batch2.png"
   'png)

  )