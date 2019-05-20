#lang racket

(provide make-texture)

(require pict
         (prefix-in h: 2htdp/image))

(define (make-texture  i (t 0.25))
  (define bm (if (h:image? i)
                 i
                 (pict->bitmap i)))
  
  (bitmap
   (fade-to
    (image->b+w bm)
    t)))

(define (fade-to i amount)
  (map-pixels i (curryr fade-color-to amount)))

(define (image->b+w i)
  (map-pixels i color->b+w))

(define (map-pixels bm f)


  (define colors 
    (h:image->color-list bm))

  (h:color-list->bitmap
    (map f colors)
    (h:image-width bm)
    (h:image-height bm)))


(define (color->b+w c)
  (match-define 
    (h:color r g b a) c)

  (h:make-color 
    (max r g b) 
    (max r g b) 
    (max r g b) 
    a))


(define (fade-color-to c amount)
  (match-define 
    (h:color r g b a) c)

  (h:make-color 
    r g b
    (exact-floor (* 255 amount))))
