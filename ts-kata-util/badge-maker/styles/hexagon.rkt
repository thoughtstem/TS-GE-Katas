#lang racket

(provide normal-badge
         gridify
         triad
         colored-hexagon
         hexagon-badge
         hexagon-triad 
         hexagon-badges
         )

(require (only-in "../icons/main.rkt" hexagon)
         (prefix-in h: 2htdp/image)
         racket/runtime-path
         (only-in 2htdp/image make-color regular-polygon make-pen line)
         pict)

(define (hexagon-badges i1 i2 i3 
                       c1 c2 c3)

  (list
    (hexagon-badge i1 c1 c2)
    (hexagon-badge i2 c2 c3)
    (hexagon-badge i3 c3 c1)))

(define (hexagon-triad i1 i2 i3 
                       c1 c2 c3)

  (apply triad 
         (hexagon-badges i1 i2 i3 c1 c2 c3)))

(define (hexagon-badge i
                       (bg-color  "cyan")
                       (bg-color2 "orange"))

  (normal-badge #:scale .75
                (normal-badge i bg-color) 
                bg-color2))

(define (normal-badge #:scale (s 0.5) 
                      i
                      (bg-color "cyan")
                      (secondary-color "black"))
  (define bg (colored-hexagon bg-color) )
  (cc-superimpose bg (scale-to-fit i (scale bg s))))

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


