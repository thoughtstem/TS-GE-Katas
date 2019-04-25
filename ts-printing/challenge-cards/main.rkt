#lang racket

(provide collection->Desktop
         FRONT-FG-COLOR
         begin-job)

(require ts-kata-util/katas/rendering/pict
         (except-in ts-kata-util/katas/main read))

(require pict 
         (only-in slideshow para current-font-size)
         (only-in 2htdp/image 
                  color?
                  color-alpha
                  color-red
                  color-green
                  color-blue)
         (only-in racket/draw color%))

(require "../common.rkt")

(define FRONT-FG-COLOR (make-parameter "white"))

(define (kata->front-side k)
  (define content
    (expression-data (stimulus-data (kata-stimulus k))))

  (define content-pict
    (parameterize ([current-font-size 46])
      (para content)))

  (define bg
    (colorize
      (filled-rectangle (WIDTH) (pict-height content-pict))
      (pictify 
        (FRONT-FG-COLOR))))

  (front-side 
    (cc-superimpose
      bg 
      content-pict)))

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


(define (collection->Desktop kc folder-path)
  (define ks (kata-collection-katas kc))

  (list->folder 
    (flatten
      (map kata->card ks))
    folder-path))




(define-syntax-rule (begin-job folder 
                      (collection [k v] ...) 
                      ...)
  (begin
    (define counter 0)

    (parameterize ([k v] ...
                         [STARTING-CARD-NUMBER counter]
                         #;
                         [EXTRA-META (text folder)])
      (collection->Desktop collection folder)
      (set! counter (+ counter 
                       (length 
                         (kata-collection-katas collection))))) 
    ...))



#;
(require ts-k2-hero-summer-camp-2019/katas)
#;
(show-pict
  (kata->back-side (first (kata-collection-katas farm))))


