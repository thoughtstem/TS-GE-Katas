#lang racket

(provide
  pallet1
  pallet2
  pallet3
  pallet3-yellow
  pallet3-red
  pallet3-blue
  pallet3-green

  pallet2-red
  pallet2-orange
  pallet2-yellow
  pallet2-green
  pallet2-blue
  pallet2-purple)

(require 
   (only-in 2htdp/image make-color))

(define pallet1
  (list
   (make-color 195 244 145 255)
   (make-color 233 204 116 255)
   (make-color 203 144 77 255)
   (make-color 160 99 129 255)
   (make-color 81 163 163 255)))

(define pallet2
  (list
   "red"
   "orange"
   "yellow"
   "green" 
   "cyan" 
   "purple"))

(define pallet2-red    (list-ref pallet2 0))
(define pallet2-orange (list-ref pallet2 1))
(define pallet2-yellow (list-ref pallet2 2))
(define pallet2-green  (list-ref pallet2 3))
(define pallet2-blue   (list-ref pallet2 4))
(define pallet2-purple (list-ref pallet2 5))

(define pallet3
  (list
   (make-color 255 191 0 255)
   (make-color 232 63 111 255)
   (make-color 43 146 206 255)
   (make-color 64 188 143 255)
   ))

(define pallet3-yellow
  (list-ref pallet3 0))
(define pallet3-red
  (list-ref pallet3 1))
(define pallet3-blue
  (list-ref pallet3 2))
(define pallet3-green
  (list-ref pallet3 3))



