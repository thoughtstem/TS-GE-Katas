#lang racket

(provide (all-from-out "./util.rkt")
         tri-badge

         survival-badges
         k2-superhero-badges
         battle-arena-badges)

(require "./cluster-demos.rkt" "./image-dir-loader.rkt" racket/runtime-path)
(require "./util.rkt")

(define-runtime-path images "images")
(define (local-bitmap s)
  (bitmap (~a (path->string images) "/" s)))

(def-icons "./images" local-bitmap)

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

(define survival-badges
  (triad
   (two-tone-badge (potion-icon 1 "black") pallet3-yellow pallet3-red)
   (two-tone-badge (sword-icon 1 "black") pallet3-blue pallet3-green)
   (two-tone-badge (carrot-icon 1 "black") pallet3-yellow pallet3-green)
   ))

(define battle-arena-badges
  (triad
   (two-tone-badge (double-swords-icon 1 "black") pallet3-red pallet3-yellow)
   (two-tone-badge (mace-icon 1 "black") pallet3-red pallet3-blue)
   (two-tone-badge (coins-icon 1 "black") pallet3-green pallet3-blue)))

(define k2-superhero-badges
  (triad
   (two-tone-badge play pallet2-red pallet2-yellow)
   (two-tone-badge thor pallet2-yellow pallet2-blue)
   (two-tone-badge superhero pallet2-blue pallet2-orange)))


(module+ test
  survival-badges
  battle-arena-badges
  k2-superhero-badges

  #;(tri-badge  (list pallet3-red pallet3-yellow
                    pallet3-blue pallet3-green)
              potion-icon sword-icon carrot-icon)

  )
