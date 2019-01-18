#lang racket

(provide survival-katas
         survival-proto-katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt")

;Katas start as examples in some langauge.
;  "Proto katas" we could call them.
(define survival-proto-katas
  (lang->kata-collection 'survival))

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
;  for this kata collection.
(define survival-katas survival-proto-katas

  ;When we have stimuli, apply them here
  #;(apply fill-in-stimuli survival-proto-katas stimuli))


;Now we just slice up the kata collection in a bunch of ways
;  Gives us a variety of ways to present the information later
(define-sub-collections survival-katas
  avatar-katas
  food-katas
  coin-katas
  enemy-katas
  crafter-katas
  day-night-katas
  starvation-rate-katas
  game-jam-katas)

