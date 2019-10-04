#lang racket

(provide collection->Desktop
         FRONT-FG-COLOR
         FRONT-TITLE
         begin-job)

(require ts-kata-util/katas/rendering/pict
         (only-in ts-kata-util syntax->pict)
         (except-in ts-kata-util/katas/main read))

(require pict 
         (only-in slideshow para current-font-size)
         (only-in 2htdp/image 
                  color?
                  color-alpha
                  color-red
                  color-green
                  color-blue)
         (only-in racket/draw color% make-color))

(require "../common.rkt")

(define FRONT-FG-COLOR (make-parameter "white"))
(define FRONT-TITLE    (make-parameter (blank)))

(define (kata->front-side k)
  (define content
    (expression-data (stimulus-data (kata-stimulus k))))

  (define content-pict
    (parameterize ([current-font-size 46])
      (para content)))

  (define blank-card-bg
    (blank-bg))

  (define text-bg
    (filled-rectangle (WIDTH) (+ 4 (pict-height content-pict))
                      #:color (pictify 
                               (FRONT-FG-COLOR))
                      ;#:border-color (make-color 105 105 105 0.4)
                      ;#:border-width 8
                      #:draw-border? #f
    ))

  (define main
    (cc-superimpose
      blank-card-bg
      (cc-superimpose
        text-bg 
        content-pict)))

  (define with-title
    (pin-over main
              0
              ;(- (/ (WIDTH) 2)
              ;   (/ (pict-width 
              ;        (FRONT-TITLE)) 2))
              (FRONT-MARGIN) 
              (cc-superimpose
               (filled-rectangle (WIDTH) 40 
                                 #:color (make-color 255 255 255 0.4)
                                 ;#:border-color (make-color 255 255 255 0.4)
                                 ;#:border-width 8
                                 #:draw-border? #f
                                 )
               (FRONT-TITLE)
               )
              ))

  (front-side #:fit-mode 'crop
    with-title))

(define (kata->back-side k)
  (local-require slideshow pict/code)

  (define content
    (expression-data
      (response-data (kata-response k))))

  ;Gotta turn whatever our kata response data was into a pict that
  ; appropriately renders on a card.  
  ;The two cases below handle the vast majority of our katas.  
  (define content-pict 
    (cond 
      [(string? content) ;Works for 3rd-5th katas

       (syntax->pict 
         (kata->syntax k))
       #;
       (codeblock-pict #:keep-lang-line? #t   
                       (reformat-program content))]
      [else ;For now, assume it's a K-2
       (extract-code-image content)]))

  (back-side content-pict))


(define/contract (extract-code-image kata-data)
  (-> list? pict?) ;k2 kata datas happen to be structured as lists.  Putting this contract here so that it breaks when we inevitably decide to change that...

  ;But I'll try to make it somewhat general, so it doesn't matter where the pict is in the list, or how many there are.  (Currently, just one.)

  (define extracted-lang 
    (text
      (first-line 
        (expression-data 
          (first kata-data)))))

  (apply vl-append 20 extracted-lang (filter pict? kata-data)))

(define (first-line s)
  (first (string-split s "\n")))


(define (kata->card k)
  (list (kata->front-side k)
        (kata->back-side k)))


(define (collection->Desktop kc folder-path)
  (define ks (kata-collection-katas kc))

  (list->folder 
    (flatten
      (map kata->card ks))
    folder-path))


(define (make-rounded-bg pict)
  (cc-superimpose
   (filled-rectangle (WIDTH) 60 
                     #:color (make-color 255 255 255 0.4)
                     ;#:border-color (make-color 255 255 255 0.4)
                     ;#:border-width 8
                     #:draw-border? #f
                     )
    pict
    ))

(define-syntax-rule (begin-job folder 
                      (collection [k v] ...) 
                      ...)
  (begin
    (displayln (~a "Staring job " folder))

    (VERSION git-hash)

    (FRONT-META-FUNCTION
      (lambda (i)
        (make-rounded-bg (vc-append (default-meta i)
                                    (text folder)))))

    ;Need a crazy margin to make it work with
    ; the hex cards.
    (FRONT-MARGIN 250)
    (BACK-MARGIN 500)
    ;Gets the backs in the right place,
    ;   messes up the location of the metas...

    (TOTAL (length 
             (flatten
               (list
                 (kata-collection-katas collection) 
                 ...))))


    (define counter 0)

    (parameterize ([k v] ...
                         [STARTING-CARD-NUMBER counter] )
      (displayln (~a "Processing deck " 'collection))
      (collection->Desktop collection folder)
      (set! counter (+ counter 
                       (length 
                         (kata-collection-katas collection))))) 
    ...))



