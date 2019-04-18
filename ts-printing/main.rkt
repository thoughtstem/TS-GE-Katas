#lang racket

(provide collection->folder
         collection->Desktop
         FRONT-TITLE
         FRONT-COLOR
         FRONT-COLOR-FG
         STARTING-CARD-NUMBER
         begin-job)

(require ts-kata-util/katas/rendering/pict
         (except-in ts-kata-util/katas/main read))

(require (except-in pict colorize)
         (rename-in pict 
                    [colorize pict-colorize])
         (only-in slideshow para current-font-size)
         (only-in 2htdp/image 
                  color?
                  color-alpha
                  color-red
                  color-green
                  color-blue)
         (only-in racket/draw color%))

(define FRONT-COLOR          (make-parameter "aquamarine"))
(define FRONT-COLOR-FG       (make-parameter "palegreen"))
(define STARTING-CARD-NUMBER (make-parameter 0))
(define FRONT-TITLE          (make-parameter (blank)))


(define HEIGHT 1200)
(define WIDTH HEIGHT)

(define MARGIN 550)
(define PADDING 10)

(define ROUNDING 5)

(define BACK-COLOR "white")

(define (colorize i c)
  (define new-c 
    (if (color? c)
      (make-object color% 
                   (color-red c)
                   (color-green c)
                   (color-blue c)
                   (/ (color-alpha c) 255))
      c)) 

  (pict-colorize i new-c))

(define bg
  (filled-rectangle (+ WIDTH PADDING)
                    (+ HEIGHT PADDING)))

(define (color-bg i)
  (cc-superimpose 
    (colorize
      (filled-rectangle WIDTH 
                        (+ 10 (pict-height i)))
      (FRONT-COLOR-FG))
    i))



(define (front-side p)
  (define adj-p
    (color-bg (scale-to-fit p
                            (- WIDTH MARGIN)
                            (- HEIGHT MARGIN))))

  (pin-over
    (cc-superimpose
      bg
      (colorize (filled-rounded-rectangle WIDTH HEIGHT ROUNDING)
                (FRONT-COLOR))

      adj-p
      (cc-superimpose 
        adj-p))

    (- (/ WIDTH 2) (/ (pict-width (FRONT-TITLE)) 2))
    200 ;Magic number to get the meta to be on the hex cards.

    (FRONT-TITLE)))


(define (back-side p)
  (define adj-p
    (scale-to-fit p
                  (- WIDTH MARGIN)
                  (- HEIGHT MARGIN)))


  (cc-superimpose
    bg
    (colorize (filled-rounded-rectangle WIDTH HEIGHT ROUNDING)
              BACK-COLOR)
    adj-p))


(define (kata->front-side k)
  (define content
    (expression-data (stimulus-data (kata-stimulus k))))

  (define content-pict
    (parameterize ([current-font-size 46])
      (para content)))

  (front-side content-pict))

(define (kata->back-side k)
  (local-require slideshow pict/code)

  (define content
    (response-data (kata-response k)))

  (define program (reformat-program (expression-data content)))

  (define content-pict
    ;Not always this simple, but can start with this...
    (codeblock-pict #:keep-lang-line? #t program))

  (back-side content-pict))


(define (kata->card k)
  (list (kata->front-side k)
        (kata->back-side k)))

(define (reformat-program s)

  (define ss (string-split s "\n"))

  (define lang-line (first ss))

  (define program (string-join (rest ss) "\n\n"))

  (define reformatted-program (reformat-string program))

  (fix-indentation
    (~a lang-line "\n" reformatted-program)))

(define (reformat-string s)
  (define formatted (pretty-format-datum
                      (read (open-input-string (~a "(begin" s ")")))))

  (define (trim-nonsense s)
    (substring s
               7
               (sub1 (string-length s))))

  (trim-nonsense formatted))


(define (fix-indentation s)
  (local-require framework)

  (define t (new racket:text%))
  (send t insert s)
  (send t tabify-all)
  (send t get-text))

(define (pretty-format-datum d)
  (define too-many-line-breaks (pretty-format d 0))

  (define (fix-line-breaks s)
    (regexp-replace* #px"(#:\\S*)\\s*" s "\\1 "))

  (fix-indentation (fix-line-breaks too-many-line-breaks)))


(define (save-pict the-pict name kind)
  (define bm (pict->bitmap the-pict))
  (send bm save-file name kind))


(define git-hash 
  (with-output-to-string 
    (thunk
      (system "git rev-parse --short HEAD"))))

(define (add-meta p i)
  (define meta 
    (scale
      (text (~a "#" (~r i #:precision 0) " " git-hash))
      2))

  (pin-over p 
            (- (/ WIDTH 2) (/ (pict-width meta) 2))
            (- HEIGHT 200) ;Magic number to get the meta to be on the hex cards.
            meta))

(define (list->folder path ls)
  (make-directory* path)
  (make-directory* (build-path path "fronts"))
  (make-directory* (build-path path "backs"))

  (define front? #t)
  (for ([l ls]
        [i (range (* 2 (STARTING-CARD-NUMBER)) ;Double cus we number both front and back separately... But should we???
                  (* 2 (+ (length ls) 
                          (STARTING-CARD-NUMBER))))])

    (define name 
      (~a "card-" (~a #:width 3 #:align 'right #:left-pad-string "0" i) ".png"))

    (define dest
      (if front?
        (build-path path "fronts" name)
        (build-path path "backs" name)))

    (define final-pict
      (if front?
        (add-meta l (/ i 2))
        l))

    (save-pict final-pict 
               dest 'png)

    (set! front? (not front?))))


(define (collection->folder kc folder-path)
  (define ks (kata-collection-katas kc))

  (list->folder folder-path
                (flatten
                  (map kata->card ks))))



(define (collection->Desktop kc folder-name)
  (collection->folder kc 
                      (build-path (find-system-path 'home-dir)
                                  "Desktop"
                                  folder-name)))


(define-syntax-rule (begin-job folder 
                      (collection [k v] ...) 
                      ...)
  (begin
    (define counter 0)

    (parameterize ([k v] ...
                         [STARTING-CARD-NUMBER counter])
      (collection->Desktop collection folder)
      (set! counter (+ counter 
                       (length 
                         (kata-collection-katas collection))))) 
    ...))



