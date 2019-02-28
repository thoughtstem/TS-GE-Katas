#lang racket

(provide potion-icon
         mace-icon
         sword-icon
         double-swords-icon
         carrot-icon
         coins-icon)

(require "./rgb-hsb.rkt")
(require racket/runtime-path pict)
(require "./image-dir-loader.rkt")
(define-runtime-path images "images")
(define (local-bitmap s)
    (bitmap (~a (path->string images) "/" s)))

(require (prefix-in h: 2htdp/image))

;Loads and defines constants for everything in ./images
(def-icons "./images" local-bitmap)

(define (potion-icon sv color)
  (define base (scale potion-liquid sv))
  
  (pin-over
   (scale potion-empty sv)
   (* sv 22) (* sv 39)
   (mask (pict->bitmap base)
         (pict->bitmap
          (h:rectangle (ceiling (pict-width base))
                       (ceiling (pict-height base))
                       'solid color)))))


(define (mace-icon sv color)
  (define base (scale (colorize (filled-ellipse 40 40) (~a color)) sv))
  
  (pin-over
   (scale mace sv)
   (* sv 61) (* sv 19)
   base))

(define (double-swords-icon sv color)
  (scale double-swords 10))

(define (carrot-icon sv color)
  (scale carrot 10))

(define (coins-icon sv color)
  (scale coins 10))


(define (sword-icon sv color)
  (define base (scale sword-blade (- sv 0.01)))
  
  (pin-under
   (scale sword-hilt sv)
   (* sv 30) (* sv 2)
   (mask (pict->bitmap base)
         (pict->bitmap
          (h:rectangle (ceiling (pict-width base))
                       (ceiling (pict-height base))
                       'solid color)))))


(module+ test
  (sword-icon 1 'red)
  (sword-icon 1 'green)
  (sword-icon 1 'blue)

  (double-swords-icon 10 'cyan))