#lang racket

(provide duplicate
         begin-job
         keyword-card 
         symbol-card 
         string-card 
         paren-card)

(require pict
         (only-in 2htdp/image image? image-width image-height)
         "../common.rkt")

(define (duplicate n thing)
  (flatten
    (map (thunk* (if (procedure? thing) 
                   (thing)
                   thing))
         (range (floor n)))) )


(define (paren-card)
  (list
    (front-side (text "(")) 
    (back-side (blank))))

(define (keyword-card)
  (define front
    (lt-superimpose
      (vl-append
        (scale (text "keyword") 2)
        (colorize
          (scale (text "#:") 10)
          "brown"))
      (blank-bg)))

  (list
    (front-side (inset front 50))
    (back-side (blank))))

(define (symbol-card)
  (define front
    (lt-superimpose
      (vl-append
        (scale  (text "symbol") 2)
        (colorize
          (scale (text "'") 10)
          "darkgreen"))
      (blank-bg)))

  (list
    (front-side (inset front 50))
    (back-side (blank))))

(define (string-card)
  (define front
    (rb-superimpose
      (colorize
        (scale (text "\"") 10)
        "darkgreen")
      (lt-superimpose
        (vl-append
          (scale (text "string") 2)
          (colorize
            (scale (text "\"") 10)
            "darkgreen"))
        (blank-bg))))

  (list
    (front-side (inset front 50))
    (back-side (blank))))


(define-syntax-rule (begin-job folder
                               (cards [k v] ...)
                               ...)
  (begin
    (displayln "Begining blank job")

    (VERSION "")
    (HEIGHT 800)
    (WIDTH  800)
    (FRONT-META-FUNCTION
      (lambda (i)
        (blank)))

    (TOTAL (/ (length (flatten (append cards ...))) 2))

    (define counter 0)

    (parameterize ([k v] ... 
                   [STARTING-CARD-NUMBER counter])

      (list->folder cards folder)
      
      (set! counter (+ counter
                       (/
                         (length cards)
                         2))))
    ...
    
    ))
