#lang racket

(provide special-image-for)

(require pict)
(require pict/code)

(define (define->image)
    (code
      (define (my-thing ...)
        ...)))

;Define other special form functions here.


(define-namespace-anchor a)
(define ns (namespace-anchor->namespace a))

(define (special-image-for id)
  (with-handlers ([exn:fail? (thunk*

                               (displayln (~a "You need to define a function to handle how that special form is displayed on a card (" id ").  Returning blank."))
                               
                               (blank)
                               )])
                 (eval
                   `(,(string->symbol (~a id "->image")))
                   ns)))


