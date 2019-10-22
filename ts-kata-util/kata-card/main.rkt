#lang racket

(require 2htdp/image
         (prefix-in p: pict)
         image-coloring
         (only-in racket/draw color%))

(provide rainbow-set
         kata-card
         printable-kata-cards)

(define camera
  (bitmap "img/camera-icon.png"))

(define default-icon
  (bitmap "img/laptop-icon.png"))

(define am-camp (bitmap "img/sun-am.png"))
(define pm-camp (bitmap "img/sun-pm.png"))

(define ts-logo (bitmap "img/thoughtstem logo.png"))

(define ts-text (bitmap "img/text-TS.png"))
(define mc-text (bitmap "img/text-MC.png"))
(define ts-kc-text (bitmap "img/text-TS-kata-card.png"))
(define mc-kc-text (bitmap "img/text-MC-kata-card.png"))

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


;creates a bg with border and logo for the card
(define (make-bg #:height [h 430]
                 #:width  [w 620]
                 #:border-color  [border-c (make-object color% 20 170 0)]
                 #:border-width  [bw 7.5]
                 #:bg-color      [bg-c (make-object color% 255 255 255)] 
                 #:logo [logo ts-logo])
  (p:cc-superimpose
   (p:lbl-superimpose 
                      (p:filled-rectangle (+ w bw)
                                          (+ h bw)
                                          #:color bg-c
                                          #:draw-border? #f)
                      (edit-logo logo))
   (p:rectangle w h #:border-color border-c
                    #:border-width bw)))

;edits image to be correct size, crop and fade for use as BG of card
(define (edit-logo logo) 
  (define indent-image-width
    (/ (image-width logo) 5))
  
  (define cropped-logo
    (crop indent-image-width
          0
          (- (image-width logo) indent-image-width)
          (image-height logo)
          logo)) 
  (define smaller-logo
    (p:scale-to-fit cropped-logo 350 350)) 
  (define faded-logo
    (p:cc-superimpose
     smaller-logo
     (p:filled-rectangle (p:pict-width smaller-logo)
                         (p:pict-height smaller-logo)
                         #:draw-border? #f
                         #:color (make-object color% 255 255 255 .75))
     ))
  faded-logo)



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

;places icons in exact locations
(define/contract (place-icons ls
                              bg
                              #:camera? [camera? #f])
  (->* ((listof (or/c image? p:pict?)) (or/c image? p:pict?))  (#:camera? boolean?) p:pict?)
  (define background
    (if camera?
        (bg-camera bg)
        bg))

  ;to alter where icons show up, edit starting X Y coordinates for top and bottom row here
  (define top-y 15)
  (define top-start-x 20)
  (define bottom-y 350)
  (define bottom-start-x 130)
  
  (p:pin-over
   (p:pin-over
    (p:pin-over
     (p:pin-over
      (p:pin-over
       (p:pin-over
        (p:pin-over
         (p:pin-over
          (p:pin-over
           (p:pin-over background top-start-x top-y (first ls))
           (+ top-start-x 100) top-y (second ls))
          (+ top-start-x 200) top-y (third ls))
         (+ top-start-x 300) top-y (fourth ls))
        (+ top-start-x 400) top-y (fifth ls))
       bottom-start-x bottom-y (sixth ls))
      (+ bottom-start-x 100) bottom-y (seventh ls))
     (+ bottom-start-x 200) bottom-y (eighth ls))
    (+ bottom-start-x 300) bottom-y (ninth ls))
   (+ bottom-start-x 400) bottom-y (tenth ls))
  )

;adds camera icon to a background
(define (bg-camera bg)
  (p:pin-over bg 15 360 (p:scale-to-fit camera 70 70)))

;adds 1 of 4 different text images to the card
;best x and y 525 25
(define (add-title-text text-type bg x y)
  (-> (or/c 'thoughtstem 'thoughtstem-kata-card
                'metacoders 'metacoders-kata-card
                #f)
       p:pict? real? real?
      p:pict?)
  (define text-img
    (cond [(equal? text-type 'thoughtstem) ts-text]
          [(equal? text-type 'thoughtstem-kata-card) ts-kc-text]
          [(equal? text-type 'metacoders) mc-text]
          [(equal? text-type 'metacoders-kata-card) mc-kc-text]
          [(equal? text-type #f) p:blank]))

  (p:pin-over bg x y text-img))

;creates a single card
(define/contract (kata-card #:icon    [i default-icon]
                            #:pastel? [pastel? #f]
                            #:camera? [camera? #t]
                            #:logo    [logo ts-logo]
                            #:card-height  [h 430]
                            #:card-width   [w 620]
                            #:border-color [border-color (make-object color% 20 170 0)]
                            #:border-width [border-width 7.5]
                            #:bg-color     [bg-color (make-object color% 255 255 255)])
  (->* () (#:icon image?
           #:pastel? boolean?
           #:camera? boolean?
           #:logo image?
           #:card-height positive?
           #:card-width positive?
           #:border-color (or/c #f string? (is-a?/c color%))
           #:border-width real?
           #:bg-color (or/c #f string? (is-a?/c color%)))
       p:pict?)

  (define background
    (make-bg #:height h
             #:width  w
             #:border-color  border-color
             #:border-width  border-width
             #:bg-color      bg-color 
             #:logo logo))
  
  (define rainbowed-icons
    (rainbow-set i #:pastel? pastel?))
  
  (define shrunk-icons (map shrink-to-icon rainbowed-icons))

  (place-icons shrunk-icons
               background
               #:camera? camera?))

;creates a 3x3 sheet of kata cards for printing
(define (printable-kata-cards #:icon [i default-icon]
                              #:pastel? [pastel? #f]
                              #:camera? [camera? #t]
                              #:logo    [logo ts-logo]
                              #:card-height  [h 430]
                              #:card-width   [w 620]
                              #:border-color [border-color (make-object color% 20 170 0)]
                              #:border-width [border-width 7.5]
                              #:bg-color     [bg-color (make-object color% 255 255 255)])
  (define img (p:pict->bitmap (kata-card #:icon i
                                         #:pastel? pastel?
                                         #:camera? camera?
                                         #:logo    logo
                                         #:card-height  h
                                         #:card-width   w
                                         #:border-color border-color
                                         #:border-width border-width
                                         #:bg-color     bg-color )))
  
  (above
   (beside img img img)
   (beside img img img)
   (beside img img img)))

;======= TESTS =======

(module+ test 
  ;(displayln "default test")
  ;(kata-card)

  ;(printable-kata-cards am-camp)
  (printable-kata-cards #:icon pm-camp)
  (printable-kata-cards)
  

  ;(displayln "another icon test")
  ;(kata-card camera)

  ;(displayln "pastel test")
  ;(kata-card #:pastel? #t)

  ;(displayln "no camera icon test")
  ;(kata-card #:camera? #f)
  )
  
