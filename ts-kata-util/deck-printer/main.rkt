#lang racket

;Does this work?  Can we make a package in the same directory?
(require ts-kata-util/katas/rendering/pict
         (except-in ts-kata-util/katas/main read))

(require ts-battle-arena/katas
         pict
         (only-in slideshow para current-font-size))



(define HEIGHT 1200)
(define WIDTH HEIGHT
  #;
  (* HEIGHT 1.4))

(define MARGIN 550)
(define PADDING 10)

(define ROUNDING 5)

(define BACK-COLOR "white")
(define FRONT-COLOR "aquamarine")
(define FRONT-COLOR-FG "palegreen")

(define bg
  (filled-rectangle (+ WIDTH PADDING)
                    (+ HEIGHT PADDING)))

(define (front-side p)
  (define adj-p
    (rotate 
      (scale-to-fit (cc-superimpose 
                      (colorize
                        (filled-rectangle WIDTH (+ MARGIN (pict-height p)))
                        FRONT-COLOR-FG
                        )
                      p)
                    (- WIDTH MARGIN)
                    (- HEIGHT MARGIN)) 
      (/ pi 3)))

  (cc-superimpose
    bg
    (colorize (filled-rounded-rectangle WIDTH HEIGHT ROUNDING)
              FRONT-COLOR)
    
    adj-p
    (cc-superimpose 
      adj-p)))

(define (back-side p)
  (define adj-p
    (rotate 
      (scale-to-fit p
                    (- WIDTH MARGIN)
                    (- HEIGHT MARGIN)) 
      (/ pi 3)))

  
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

#;
(save-pict (standard-fish 200 200) "fish.png" 'png)


(define (list->folder path ls)
  (make-directory* path)
  (make-directory* (build-path path "fronts"))
  (make-directory* (build-path path "backs"))

  (for ([l ls]
        [i (in-naturals)])

    (define name 
      (~a "card-" (~a #:width 3 #:align 'right #:left-pad-string "0" i) ".png"))

    (define dest
      (if (even? i)
          (build-path path "fronts" name)
          (build-path path "backs" name)))

    (save-pict l dest 'png)))


(define (collection->folder kc folder-path)
  (define ks (kata-collection-katas kc))

  (list->folder folder-path
                (flatten
                  (map kata->card ks))))

(collection->folder battle-arena-katas 
                    (build-path (find-system-path 'home-dir)
                                "Desktop"
                                "battle-arena-katas"))

;Use this: https://www.makeplayingcards.com/design/small-custom-hex-cards.html


