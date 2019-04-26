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
         MARGIN
         FRONT-META-FUNCTION
         BACK-META-FUNCTION
         VERSION
         TOTAL
         pictify
         blank-bg
         save-pict
         default-meta
         make-texture
         git-hash
         w h)

(require pict 
         (only-in 2htdp/image 
                  color?
                  color-alpha
                  color-red
                  color-green
                  color-blue)
         (only-in racket/draw color%)
         (only-in 2htdp/image image?)
         "./texture.rkt")

(define HEIGHT  (make-parameter 1200))
(define WIDTH   (make-parameter 1200))
(define MARGIN  (make-parameter 200))
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
                  #:mode 'distort))

  (cc-superimpose solid texture)) 

(define (side #:fit-mode (fit-mode 'scale) main-bg card-fg)
  (define adj-fg
    (if (eq? fit-mode 'scale)
      (scale-to-fit card-fg
                    (- (WIDTH) (MARGIN)) 
                    (- (HEIGHT) (MARGIN)))
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
        my-fg))

(define/contract (back-side #:fit-mode (fit-mode 'scale)
                            (my-fg (blank)))
  (->* () 
       (#:fit-mode (or/c 'scale 'crop)
        (or/c pict? image?))
       pict?)
  (side #:fit-mode fit-mode
        (bg (BACK-BG-COLOR) (BACK-BG-TEXTURE)) 
        my-fg))

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
    (- (HEIGHT) (MARGIN))
    meta))


(define (front-transform p i)
  (add-meta p ((FRONT-META-FUNCTION) i)))

(define (back-transform p i)
  (add-meta p ((BACK-META-FUNCTION) i)))

(define (list->folder ls (folder-name "my-cards") (dest DESKTOP))
  (define path (build-path dest folder-name))

  (make-directory* path)
  (make-directory* (build-path path "fronts"))
  (make-directory* (build-path path "backs"))

  (define front? #t)
  (for ([l ls]
        [i (range (* 2 (STARTING-CARD-NUMBER)) ;Double cus we number both front and back separately
                  (* 2 (+ (length ls) 
                          (STARTING-CARD-NUMBER))))])

    (define name 
      (~a "card-" (~a #:width 3 #:align 'right #:left-pad-string "0" i) ".png"))

    (define dest
      (if front?
        (build-path path "fronts" name)
        (build-path path "backs" name)))

    (define final-pict 
      ((if front?
         front-transform
         back-transform) 
       l 
       (floor (/ i 2))))

    (save-pict final-pict dest 'png)

    (set! front? (not front?))))


(define (save-pict the-pict name kind)
  (define bm (pict->bitmap the-pict))
  (send bm save-file name kind))


(define DESKTOP
  (build-path (find-system-path 'home-dir)
              "Desktop"))


(define (w)
  (- (WIDTH) (MARGIN)))

(define (h)
  (- (HEIGHT) (MARGIN)))

#;
(parameterize ([FRONT-BG-COLOR "green"]
               [BACK-BG-COLOR "red"])
  (list->folder
    (list (front-side 
            (circle 10)
            )
          (back-side))))

