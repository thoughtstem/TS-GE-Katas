#lang racket

;Does this work?  Can we make a package in the same directory?
(require ts-kata-util/katas/rendering/pict
         (except-in ts-kata-util/katas/main read))

(require ts-battle-arena/katas
         pict)



(define HEIGHT (* 2.5 300))
(define WIDTH  (* 3.5 300))

(define MARGIN 10)
(define PADDING 20)

(define ROUNDING 5)

(define BACK-COLOR "white")
(define FRONT-COLOR "aquamarine")

(define bg
  (filled-rectangle (+ WIDTH PADDING)
                    (+ HEIGHT PADDING)))

(define (front-side p)
  (cc-superimpose
    bg
    (colorize (filled-rounded-rectangle WIDTH HEIGHT ROUNDING)
              FRONT-COLOR)
    (scale-to-fit p (- WIDTH MARGIN)
                  (- HEIGHT MARGIN)))

  )

(define (back-side p)
  (define maybe-rotated-p
    (if (> (pict-height p)
           (pict-width p))
        (rotate p (/ pi 2))
        p))
  
  (cc-superimpose
    bg
    (colorize (filled-rounded-rectangle WIDTH HEIGHT ROUNDING)
              BACK-COLOR)
    (scale-to-fit maybe-rotated-p (- WIDTH MARGIN)
                  (- HEIGHT MARGIN))))


(define (kata->front-side k)
  (define content
    (stimulus-data (kata-stimulus k)))

  (define content-pict
    (kata-data->pict content))

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



(define ks
  (kata-collection-katas battle-arena-katas))

(define (save-pict the-pict name)
    (define bm (pict->bitmap the-pict))
      (send bm save-file name 'png))

(for ([p (flatten
           (map kata->card ks))]
      [i (in-naturals)])
  (save-pict p (~a "./output/card-" (~a i #:min-width 3 #:left-pad-string "0" #:align 'right) ".png")))




