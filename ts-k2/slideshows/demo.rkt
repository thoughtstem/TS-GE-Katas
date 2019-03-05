#lang slideshow

(require "../katas.rkt"
         "./common.rkt"
         ts-kata-util/katas/main
         pict
         racket/runtime-path)

(define-runtime-path here ".")

(define ds (kata-collection-katas demo-games))

(slide 
  (para "We're going to start by playing a game together...  Then, we'll get on the computers and make some games together.")
  (bitmap (build-path here "scratch/are-you-ready.jpg")))

(map ratchet-social-slide ds)

