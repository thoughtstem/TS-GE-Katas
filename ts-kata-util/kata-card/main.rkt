#lang racket

(require 2htdp/image
         (prefix-in p: pict)
         (only-in game-engine tint-img
                              change-img-hue
                              mask-pixel
                              name->color))

(provide iconify-img
         rainbow-set
         kata-card)

(define camera
  (bitmap "img/camera-icon.png"))

(define bg
  (bitmap "img/card-bg.png"))

(define default-icon
  (bitmap "img/laptop-icon.png"))


;======= FUNCTIONS =========


;useful function! provide out or put elsewhere
;creates silhouettes of an image -- turning every pixel
;that is not 100% transparent to one solid color
(define (iconify-img img [t-color 'black])
  
  (define target-color (if (color? t-color)
                           t-color
                           (name->color t-color)))
  
  (define (maybe-color-pixel original-color)
  (mask-pixel original-color target-color))
  
  (define original-list (image->color-list img))
  (define final-list (map maybe-color-pixel original-list))
  (color-list->bitmap final-list (image-width img) (image-height img)))


;takes one image and returns a list of 10 versions of that image, each a different color
(define/contract (rainbow-set img #:pastel? [pastel? #f])
  (->* (image?) (#:pastel? boolean?) (listof image?))
  (define base
    (if pastel?
        (iconify-img img 'white)
        (iconify-img img 'red)))

  (if pastel?
      (list (tint-img 'red         base)
            (tint-img 'orange      base)
            (tint-img 'yellow      base)
            (tint-img 'greenyellow base)
            (tint-img 'limegreen   base)
            (tint-img 'deepskyblue base)
            (tint-img 'blue        base)
            (tint-img 'indigo      base)
            (tint-img 'purple      base)
            (tint-img 'magenta     base))
      (list base
            (change-img-hue 36  base)
            (change-img-hue 50  base) 
            (change-img-hue 108 base)
            (change-img-hue 165 base)
            (change-img-hue 180 base)
            (change-img-hue 216 base)
            (change-img-hue 270 base)
            (change-img-hue 288 base)
            (change-img-hue 324 base))))

;turns all images into picts :(
(define/contract (shrink-to-icon img)
  (-> (or/c image? p:pict?) p:pict?)
  (p:scale-to-fit img 80 80))


(define/contract (place-icons ls
                              #:camera? [camera? #f])
  (->* ((listof (or/c image? p:pict?)))  (#:camera? boolean?) p:pict?)
  (define background
    (if camera?
        bg-camera
        bg))
  (p:pin-over
   (p:pin-over
    (p:pin-over
     (p:pin-over
      (p:pin-over
       (p:pin-over
        (p:pin-over
         (p:pin-over
          (p:pin-over
           (p:pin-over background 45 35 (first ls))
           145 35 (second ls))
          245 35 (third ls))
         345 35 (fourth ls))
        445 35 (fifth ls))
       155 370 (sixth ls))
      255 370 (seventh ls))
     355 370 (eighth ls))
    455 370 (ninth ls))
   555 370 (tenth ls))
  )

(define bg-camera
  (p:pin-over bg 35 380 (p:scale-to-fit camera 70 70)))


(define/contract (kata-card [icon default-icon]
                            #:pastel? [pastel? #f]
                            #:camera? [camera? #t])
  (->* () (image? #:pastel? boolean? #:camera? boolean?) p:pict?)
  
  (define rainbowed-icons
    (rainbow-set icon #:pastel? pastel?))
  
  (define shrunk-icons (map shrink-to-icon rainbowed-icons))

  (place-icons shrunk-icons #:camera? camera?))

;======= TESTS =======

"default test"
(kata-card)

"another icon test"
(kata-card camera)

"pastel test"
(kata-card #:pastel? #t)

"no camera icon test"
(kata-card #:camera? #f)
