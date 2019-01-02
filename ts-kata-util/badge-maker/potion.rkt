#lang racket


(require "./rgb-hsb.rkt")
(require racket/runtime-path pict)
(require "./image-dir-loader.rkt")
(define-runtime-path images "images")
(define (local-bitmap s)
    (bitmap (~a (path->string images) "/" s)))

(require (prefix-in h: 2htdp/image))

;Loads and defines constants for everything in ./images
(def-icons "./images" local-bitmap)

(define (make-potion sv color)
  (define base (scale potion-liquid sv))
  
  (pin-over
   (scale potion-empty sv)
   (* sv 22) (* sv 39)
   (mask (pict->bitmap base)
         (pict->bitmap
          (h:rectangle (ceiling (pict-width base))
                       (ceiling (pict-height base))
                       'solid color)))))


(make-potion 3 'red)
(make-potion 3 'green)
(make-potion 3 'blue)