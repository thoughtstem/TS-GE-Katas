#lang racket

(provide list->folder
         front-side
         back-side
         FRONT-BG-COLOR
         BACK-BG-COLOR
         STARTING-CARD-NUMBER
         FRONT-TITLE
         WIDTH
         HEIGHT
         pictify
         save-pict)

(require pict 
         (only-in 2htdp/image 
                  color?
                  color-alpha
                  color-red
                  color-green
                  color-blue)
         (only-in racket/draw color%))

(define HEIGHT  (make-parameter 1200))
(define WIDTH   (make-parameter 1200))
(define MARGIN  (make-parameter 200))
(define PADDING (make-parameter 10))

(define FRONT-BG-COLOR       (make-parameter "white"))
(define BACK-BG-COLOR        (make-parameter "white"))
(define STARTING-CARD-NUMBER (make-parameter 0))

(define FRONT-TITLE       (make-parameter (blank)))

(define (pictify c) 
  (if (color? c)
    (make-object color%
		 (color-red c)
		 (color-green c)
		 (color-blue c)
		 (/ (color-alpha c) 255))
    c))


(define (bg c)
  (colorize
    (filled-rectangle (+ (WIDTH)  (PADDING))
                      (+ (HEIGHT) (PADDING)))
    (pictify c))) 

(define (side main-bg card-fg)
  (define adj-fg
    (scale-to-fit card-fg
                  (- (WIDTH) (MARGIN)) 
                  (- (HEIGHT) (MARGIN))))

  (cc-superimpose
      main-bg 
      adj-fg))

(define (front-side (my-fg (blank)))
  (side (bg (FRONT-BG-COLOR)) 
        my-fg))

(define (back-side (my-fg (blank)))
  (side (bg (BACK-BG-COLOR)) 
        my-fg))

(define git-hash 
  (with-output-to-string 
    (thunk
      (system "git rev-parse --short HEAD"))))

(define (front-transform p i)
  (pin-over
    p
    (- (WIDTH) (MARGIN))
    (- (HEIGHT) (MARGIN))
    (text (~a i))))

(define (back-transform p i)
  (pin-over
    p
    (- (WIDTH) (MARGIN))
    (- (HEIGHT) (MARGIN))
    (text (~a i))))

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
       i))

    (save-pict final-pict dest 'png)

    (set! front? (not front?))))

(define (save-pict the-pict name kind)
  (define bm (pict->bitmap the-pict))
  (send bm save-file name kind))


(define DESKTOP
  (build-path (find-system-path 'home-dir)
              "Desktop"))

(parameterize ([FRONT-BG-COLOR "green"]
               [BACK-BG-COLOR "red"])
  (list->folder
    (list (front-side 
            (circle 10)
            )
          (back-side))))

