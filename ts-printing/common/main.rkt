#lang racket

(provide list->folder
         front-side
         back-side
         FRONT-BG-COLOR
         BACK-BG-COLOR
         FRONT-BG-TEXTURE
         BACK-BG-TEXTURE
         STARTING-CARD-NUMBER
         WIDTH
         HEIGHT
         FRONT-META-FUNCTION
         BACK-META-FUNCTION
         VERSION
         TOTAL
         BACK-MARGIN
         FRONT-MARGIN
         pictify
         blank-bg
         border-bg
         save-pict
         default-meta
         make-texture
         git-hash
         double-size
         front-w front-h
         back-w back-h)

(require pict 
         (only-in 2htdp/image 
                  color?
                  color-alpha
                  color-red
                  color-green
                  color-blue)
         (only-in racket/draw color%)
         (only-in 2htdp/image image?)
         "./double-size.rkt" 
         "./texture.rkt")

(define HEIGHT  (make-parameter 1200))
(define WIDTH   (make-parameter 1200))
(define BACK-MARGIN  (make-parameter 200))
(define FRONT-MARGIN  (make-parameter 200))
(define PADDING (make-parameter 10))

(define FRONT-BG-COLOR       (make-parameter "white"))
(define BACK-BG-COLOR        (make-parameter "white"))

(define FRONT-BG-TEXTURE       (make-parameter (blank)))
(define BACK-BG-TEXTURE        (make-parameter (blank)))

(define STARTING-CARD-NUMBER (make-parameter 0))


(define TOTAL   (make-parameter 0))
(define VERSION (make-parameter 0))

(define (default-meta i)
  (text (~a i "/" (TOTAL) " v" (VERSION))))

(define FRONT-META-FUNCTION  (make-parameter default-meta))
(define BACK-META-FUNCTION  (make-parameter (thunk* (blank))))

(define (pictify c) 
  (if (color? c)
    (make-object color%
		 (color-red c)
		 (color-green c)
		 (color-blue c)
		 (/ (color-alpha c) 255))
    c))


(define (bg c t)
  (define solid
    (colorize
      (filled-rectangle (+ (WIDTH)  (PADDING))
                        (+ (HEIGHT) (PADDING)))
      (pictify c)))
 
  (define texture 
    (scale-to-fit t 
                  solid
                  #:mode 'distort ))

  (cc-superimpose solid texture)) 

(define (side #:fit-mode (fit-mode 'scale) main-bg card-fg margin)
  (define adj-fg
    (if (eq? fit-mode 'scale)
      (scale-to-fit card-fg
                    (- (WIDTH) margin)
                    (- (HEIGHT) margin))
      card-fg))

  (refocus
    (cc-superimpose
      main-bg 
      adj-fg)
    main-bg))

(define/contract (front-side #:fit-mode (fit-mode 'scale) 
                    (my-fg (blank)))
  (->* () 
       (#:fit-mode (or/c 'scale 'crop)
        (or/c pict? image?))
       pict?)
  (side #:fit-mode fit-mode
        (bg (FRONT-BG-COLOR) (FRONT-BG-TEXTURE)) 
        my-fg
        (FRONT-MARGIN)
        ))

(define/contract (back-side #:fit-mode (fit-mode 'scale)
                            (my-fg (blank)))
  (->* () 
       (#:fit-mode (or/c 'scale 'crop)
        (or/c pict? image?))
       pict?)
  (side #:fit-mode fit-mode
        (bg (BACK-BG-COLOR) (BACK-BG-TEXTURE)) 
        my-fg
        (BACK-MARGIN)
        ))

(define (border-bg (color "black") (size (FRONT-MARGIN)))
  (filled-rectangle 
    (WIDTH) 
    (HEIGHT)
    #:color "white"
    #:border-color color
    #:border-width size))

(define (blank-bg)
  (blank (WIDTH) (HEIGHT)))

(define git-hash 
  (substring (with-output-to-string 
               (thunk
                 (system "git rev-parse --short HEAD")))
             1 ;removes the # mark 
             ))

(define (add-meta p meta)
  (pin-over
    p
    (-
      (/ (WIDTH) 2)
      (/ (pict-width meta) 2))
    (- (HEIGHT) (FRONT-MARGIN))

    meta))


(define (front-transform p i)
  (add-meta p 
            (scale 
              ((FRONT-META-FUNCTION) i)
              2 ;Magic number should become a parameter if we need to change it.
              )))

(define (back-transform p i)
  (add-meta p 
            (scale 
              ((BACK-META-FUNCTION) i)
              2 ;Magic number should become a parameter if we need to change it. 
              )))

;Ensures all images unique.  Makeplayingcards.com tries to "help" by not
; letting you upload the same image twice.
(define (add-croppable-number i p)
  (rb-superimpose 
    p
    (text (~a i))))

(define (list->folder ls (folder-name "my-cards") (dest DESKTOP))
  (define path (build-path dest folder-name))

  (make-directory* path)
  (make-directory* (build-path path "fronts"))
  (make-directory* (build-path path "backs"))

  (define front? #t)
  (for ([l ls]
        [n (in-naturals)])

    (define i 
      (add1 (+ (STARTING-CARD-NUMBER) 
               (floor (/ n 2)))))

    (define name 
      (~a "card-" (~a #:width 3 #:align 'right #:left-pad-string "0" i) ".png"))

    (define dest
      (if front?
        (build-path path "fronts" name)
        (build-path path "backs" name)))

    (define final-pict 
      (add-croppable-number 
        i 
        ((if front?
           front-transform
           back-transform) 
         l 
         i)))

    (save-pict final-pict dest 'png)

    (set! front? (not front?))))


(define (save-pict the-pict name kind)
  (define bm (pict->bitmap the-pict))
  (send bm save-file name kind))


(define DESKTOP
  (build-path (find-system-path 'home-dir)
              "Desktop"))

(define (front-w)
  (- (WIDTH) (FRONT-MARGIN)))

(define (front-h)
  (- (HEIGHT) (FRONT-MARGIN)))

(define (back-w)
  (- (WIDTH) (BACK-MARGIN)))

(define (back-h)
  (- (HEIGHT) (BACK-MARGIN)))


