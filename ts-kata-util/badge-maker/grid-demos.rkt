#lang racket

(require racket/runtime-path pict)
(require "./image-dir-loader.rkt"
         "./util.rkt")


(define-runtime-path images "images")
(define (local-bitmap s)
    (bitmap (~a (path->string images) "/" s)))

(require (only-in 2htdp/image make-color regular-polygon make-pen line))
(require (prefix-in h: 2htdp/image))

;Loads and defines constants for everything in ./images
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
   angry-bird3))

(define (random-color colors)
  (list-ref colors
            (random (length colors))))

(define hex-bg
  (scale hexagon 1.75))

(define (display-pallet colors)
  (apply (curry vl-append 10)
         (map (λ(c)
                (h:circle 10 'solid c)) colors))
  )

(define (normal-badge i
                      (bg-color (random-color pallet1))
                      (secondary-color "black"))
  (cc-superimpose 
                  
                  (rotate
                   (regular-polygon 95 6 'solid bg-color)
                   33)
                  hex-bg
                  i))


(define (small-icon-badge i
                          (bg-color (random-color pallet1))
                          (secondary-color "black"))
  (cc-superimpose 
                  
                  (rotate
                   (regular-polygon 95 6 'solid bg-color)
                   33)
                  hex-bg
                  (scale i 0.75)))

(define (parenify i (color "black"))
  (define sv 5)
  (define lparen (colorize (text "(") color))
  (define rparen (colorize (text ")") color))
  
  (hc-append (scale lparen sv)
             i
             (scale rparen sv)))

(define (paren-icon-badge i
                          (bg-color (random-color pallet1))
                          (paren-color (random-color '("black"))))
  (cc-superimpose 
                  
                  (rotate
                   (regular-polygon 95 6 'solid bg-color)
                   33)
                  hex-bg
                  (parenify (scale i 0.75) paren-color)))


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


(module+ test

  (define (title s)
    (scale (text s) 5))

  (pict->bitmap
   (scale
    (vl-append

     (title "Basic, Pallet 1")
     (demo-grid normal-badge pallet1)

     (title "Basic, Pallet 2")
     (demo-grid normal-badge pallet2)

     (title "Basic, Pallet 3")
     (demo-grid normal-badge pallet3)

     (title "Small icons, Pallet 1")
     (demo-grid small-icon-badge pallet1)

     (title "Small icons, Pallet 2")
     (demo-grid small-icon-badge pallet2)

     (title "Small icons, Pallet 3")
     (demo-grid small-icon-badge pallet3)


     (title "With Parens, Pallet 1")
     (demo-grid paren-icon-badge pallet1)

     (title "With Parens, Pallet 2")
     (demo-grid paren-icon-badge pallet2)

     (title "With Parens, Pallet 1, Parens Colored")
     (demo-grid paren-icon-badge pallet1 bronze/silver/gold)

     (title "With Parens, Pallet 2, Parens Colored")
     (demo-grid paren-icon-badge pallet2 bronze/silver/gold))
    0.30))

  
  )





