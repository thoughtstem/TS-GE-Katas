#lang racket

;NOTE: If you add more colors, please document them in ts-kata-util/scribblings/badge-maker.scrbl
(provide
  pallet1
  bright
  googly
  googly-yellow
  googly-red
  googly-blue
  googly-green

  bright-red
  bright-orange
  bright-yellow
  bright-green
  bright-blue
  bright-purple)

(require 
   (only-in 2htdp/image make-color))

(define pallet1
  (list
   (make-color 195 244 145 255)
   (make-color 233 204 116 255)
   (make-color 203 144 77 255)
   (make-color 160 99 129 255)
   (make-color 81 163 163 255)))

(define bright
  (list
   "red"
   "orange"
   "yellow"
   "green" 
   "cyan" 
   "purple"))

(define bright-red    (list-ref bright 0))
(define bright-orange (list-ref bright 1))
(define bright-yellow (list-ref bright 2))
(define bright-green  (list-ref bright 3))
(define bright-blue   (list-ref bright 4))
(define bright-purple (list-ref bright 5))

(define googly
  (list
   (make-color 255 191 0 255)
   (make-color 232 63 111 255)
   (make-color 43 146 206 255)
   (make-color 64 188 143 255)
   ))

(define googly-yellow
  (list-ref googly 0))
(define googly-red
  (list-ref googly 1))
(define googly-blue
  (list-ref googly 2))
(define googly-green
  (list-ref googly 3))



