#lang racket


;NOTE: If you add more colors, please document them in ts-kata-util/scribblings/badge-maker.scrbl
(provide
  bright
  googly

  googly-red
  googly-orange
  googly-yellow
  googly-green
  googly-blue
  googly-purple

  bright-red
  bright-orange
  bright-yellow
  bright-green
  bright-blue
  bright-purple)

(require 
  (only-in racket/draw color%)
  (only-in 2htdp/image make-color))

(define bright
  (list
   (make-color 255 9 0 255)     ;bright red
   (make-color 255 127 0 255)   ;bright orange
   (make-color 255 239 0 255)   ;bright yellow
   (make-color 0 241 29 255)    ;bright green
   (make-color 0 121 255 255)   ;bright blue
   (make-color 168 0 255 255))) ;bright purple

(define bright-red    (list-ref bright 0))
(define bright-orange (list-ref bright 1))
(define bright-yellow (list-ref bright 2))
(define bright-green  (list-ref bright 3))
(define bright-blue   (list-ref bright 4))
(define bright-purple (list-ref bright 5))

(define googly
  (list
   (make-color 224 20 13 255) ;red
   (make-color 245 111 2 255) ;orange
   (make-color 255 186 0 255) ;yellow
   (make-color 0 179 69 255)  ;green
   (make-color 0 136 210 255) ;blue
   (make-color 100 93 172 255))) ;purple

(define googly-red    (list-ref googly 0))
(define googly-orange (list-ref googly 1))
(define googly-yellow (list-ref googly 2))
(define googly-green  (list-ref googly 3))
(define googly-blue   (list-ref googly 4))
(define googly-purple (list-ref googly 5))


