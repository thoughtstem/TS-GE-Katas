#lang racket

(provide pallet1
         pallet2
         pallet3
         bronze/silver/gold
         icons
         normal-badge
         demo-grid
         gridify
         random-color
         triad
         colored-hexagon
         two-tone-badge
         (all-from-out "./icon-generators.rkt"))

(require "./rgb-hsb.rkt"
         "./image-dir-loader.rkt"
         "./icon-generators.rkt"
         (prefix-in h: 2htdp/image)
         racket/runtime-path
         (only-in 2htdp/image make-color regular-polygon make-pen line)
         pict)

(define-runtime-path images "images")
(define (local-bitmap s)
  (bitmap (~a (path->string images) "/" s)))

(def-icons "./images" local-bitmap)


(define icons
  (list
   potion
   bow
   heal
   sword
   sword2
   sword3
   mace
   helmet
   pacman
   angry-bird1
   angry-bird2
   angry-bird3
   hoodie))

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
   "green"
   "cyan"))

(define pallet3
  (list
   (make-color 255 191 0 255)
   (make-color 232 63 111 255)
   (make-color 43 146 206 255)
   (make-color 64 188 143 255)
   ))

(define bronze/silver/gold
  (list
   "brown"
   "silver"
   "gold"))

(define (random-color colors)
  (list-ref colors
            (random (length colors))))


(define (two-tone-badge i
                        (bg-color  (random-color pallet1))
                        (bg-color2 (random-color pallet2)))

  (normal-badge (scale (normal-badge i bg-color) 0.75)
                bg-color2)

  )

(define (normal-badge i
                      (bg-color (random-color pallet1))
                      (secondary-color "black"))
  (cc-superimpose 
                  
                  (colored-hexagon bg-color)
                  i))

(define (colored-hexagon c)
  (cc-superimpose
   (rotate
    (regular-polygon 95 6 'solid c)
    33)
   hex-bg))

(define hex-bg
  (scale hexagon 1.75))

(define (display-pallet colors)
  (apply (curry vl-append 10)
         (map (λ(c)
                (h:circle 10 'solid c)) colors))
  )

(define (triad a b c)
  (vc-append c
             (hc-append a b)))

(define (gridify l (row-size 4) (toggle #f))
  (if (< (length l) row-size)
      (apply hc-append l)
      (let ()
        (define row
          (apply hc-append (take l row-size)))
        
        (vl-append
         (if toggle row (hc-append (ghost (rectangle 105 105)) row))
         (gridify (drop l row-size) row-size (not toggle))))))


(define (demo-grid badge-function color-pallet (color-pallet2 '("black")))
  (define main-grid
    (gridify
     (map (λ(i)
            (badge-function i
                            (random-color color-pallet)
                            (random-color color-pallet2))) icons)))

  (frame
    (inset
     (ht-append 10
                (display-pallet color-pallet)
                (display-pallet color-pallet2)
                main-grid)
     10)))