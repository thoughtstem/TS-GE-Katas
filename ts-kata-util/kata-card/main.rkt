#lang racket

(require 2htdp/image
         (prefix-in p: pict)
         image-coloring
         (only-in racket/draw color%))

(provide rainbow-set
         kata-card
         printable-kata-cards
         ts-logo)

(define camera
  (bitmap "img/camera-icon.png"))

(define default-icon
  (bitmap "img/laptop-icon.png"))

(define am-camp (bitmap "img/sun-am.png"))
(define pm-camp (bitmap "img/sun-pm.png"))

(define blank (bitmap "img/blank.png"))
(define ts-logo (bitmap "img/thoughtstem logo.png"))
(define mc-logo (bitmap "img/metacoders-logo.png"))
(define mc-long-logo (bitmap "img/mc-long-logo.png"))

(define mc-nametag (bitmap "img/mc-nametag.png"))

(define ts-text (bitmap "img/text-TS.png"))
(define mc-text (bitmap "img/text-MC.png"))
(define ts-kc-text (bitmap "img/text-TS-kata-card.png"))
(define mc-kc-text (bitmap "img/text-MC-kata-card.png"))
(define kc-text (bitmap "img/text-kata-card.png"))

;======= HELPER FUNCTIONS =========


;creates a bg with border and logo for the card
(define (make-bg #:height        [h 430]
                 #:width         [w 620]
                 #:border-color  [border-c (make-object color% 20 170 0)]
                 #:border-width  [bw 7.5]
                 #:bg-color      [bg-c "white"] 
                 #:logo          [logo ts-logo]
                 #:center?      [center? #f]
                 #:offset-logo?  [offset-logo? #t])
  (p:cc-superimpose
   (if center?
       (p:cc-superimpose
                      (p:filled-rectangle (+ w (- bw 1))
                                          (+ h (- bw 1))
                                          #:color bg-c
                                          #:draw-border? #f)
                      
                          (edit-logo logo offset-logo?))
       (p:lbl-superimpose
                      (p:filled-rectangle (+ w (- bw 1))
                                          (+ h (- bw 1))
                                          #:color bg-c
                                          #:draw-border? #f)
                      
                          (edit-logo logo offset-logo?)))
   (p:rectangle w h #:border-color border-c
                    #:border-width bw)))

;edits image to be correct size, crop and fade for use as BG of card
(define (edit-logo logo offset?) 
  (define indent-image-width
    (/ (image-width logo) 5))
  
  (define cropped-logo
    (crop indent-image-width
          0
          (- (image-width logo) indent-image-width)
          (image-height logo)
          logo))

  (define faded-logo
    (change-alpha -150 (if offset?
                           cropped-logo
                           logo)))

  (p:scale-to-fit faded-logo 350 350))


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

;this turns all images into picts :(
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
            'kata-card 'mc-long-logo #f)
       p:pict? real? real?
      p:pict?)
  (define text-img
    (cond [(equal? text-type 'thoughtstem) ts-text]
          [(equal? text-type 'thoughtstem-kata-card) ts-kc-text]
          [(equal? text-type 'metacoders) mc-text]
          [(equal? text-type 'metacoders-kata-card) mc-kc-text]
          [(equal? text-type 'kata-card) kc-text]
          [(equal? text-type 'mc-long-logo) mc-long-logo]
          [(equal? text-type #f) (p:ghost (p:rectangle 1 1))]))

  (p:pin-over bg x y text-img))


;============ FINAL FUNCTIONS =========

;creates a single card
(define/contract (kata-card #:icon    [i default-icon]
                            #:pastel? [pastel? #f]
                            #:camera? [camera? #t]
                            #:logo    [logo ts-logo]
                            #:offset-logo? [offset-logo? #t]
                            #:center?      [center? #f]
                            #:card-height  [h 430]
                            #:card-width   [w 620]
                            #:border-color [border-color (make-object color% 20 170 0)]
                            #:border-width [border-width 7.5]
                            #:bg-color     [bg-color "white"]
                            #:text-option  [text 'metacoders-kata-card])
  (->* () (#:icon (or/c #f image?)
           #:pastel? boolean?
           #:camera? boolean?
           #:logo (or/c #f image?)
           #:offset-logo? boolean?
           #:center? boolean?
           #:card-height positive?
           #:card-width positive?
           #:border-color (or/c #f string? (is-a?/c color%))
           #:border-width real?
           #:bg-color (or/c #f string? (is-a?/c color%))
           #:text-option (or/c 'thoughtstem 'thoughtstem-kata-card
                               'metacoders 'metacoders-kata-card
                               'kata-card 'mc-long-logo #f))
       p:pict?)

  (define actual-icon
    (if i
        i
        empty-image))

  (define actual-logo
    (if logo
        logo
        empty-image))

  (define background
    (make-bg #:height h
             #:width  w
             #:border-color  border-color
             #:border-width  border-width
             #:bg-color      bg-color 
             #:logo actual-logo
             #:center? center?
             #:offset-logo? offset-logo?))
  
  (define rainbowed-icons
    (rainbow-set actual-icon #:pastel? pastel?))
  
  (define shrunk-icons (map shrink-to-icon rainbowed-icons))

  (define iconed-bg (place-icons shrunk-icons
                                 background
                                 #:camera? camera?))
  
  (add-title-text text iconed-bg 525 30))

;creates a 3x3 sheet of kata cards for printing
(define (printable-kata-cards #:icon [i default-icon]
                              #:pastel? [pastel? #f]
                              #:camera? [camera? #t]
                              #:logo    [logo ts-logo]
                              #:offset-logo? [offset-logo? #t]
                              #:center?      [center? #f]
                              #:card-height  [h 430]
                              #:card-width   [w 620]
                              #:border-color [border-color (make-object color% 20 170 0)]
                              #:border-width [border-width 7.5]
                              #:bg-color     [bg-color (make-object color% 255 255 255)]
                              #:text-option  [text 'metacoders-kata-card])
  (define img (p:pict->bitmap (kata-card #:icon i
                                         #:pastel? pastel?
                                         #:camera? camera?
                                         #:logo    logo
                                         #:offset-logo? offset-logo?
                                         #:center? center?
                                         #:card-height  h
                                         #:card-width   w
                                         #:border-color border-color
                                         #:border-width border-width
                                         #:bg-color     bg-color )))
  
  (above
   (beside img img img)
   (beside img img img)
   (beside img img img)))

(define (mc-printable-nametags)
  (define img (frame mc-nametag))
  (above
   (beside img img img)
   (beside img img img)
   (beside img img img)))

;======= TESTS =======

(module+ test 
  ;(displayln "default test")
  ;(kata-card #:icon #f
  ;           #:logo blank
  ;           #:center? #t
  ;           #:offset-logo? #f
  ;           #:text-option 'mc-long-logo)

  (kata-card)

  (kata-card #:card-width (* 620 1.25)
             #:card-height (* 430 1.25))

  (scale (kata-card) 1.25)

  ;(printable-kata-cards #:logo mc-logo
  ;                      #:center? #t
  ;                      #:offset-logo? #f)
  ;(printable-kata-cards #:icon pm-camp)
  ;(printable-kata-cards)
  

  ;(displayln "another icon test")
  ;(kata-card camera)

  ;(displayln "pastel test")
  ;(kata-card #:pastel? #t)

  ;(displayln "no camera icon test")
  ;(kata-card #:camera? #f)
  )
  
