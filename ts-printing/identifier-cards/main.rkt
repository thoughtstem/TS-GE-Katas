#lang racket

(require pict
         (only-in 2htdp/image image? image-width image-height)
         (only-in pict/code codeblock-pict)
         (only-in game-engine animated-sprite? render)
         "../challenge-cards/main.rkt"
         "../k2-identifier-cards/double-size.rkt"
         "./util.rkt")

(define HEIGHT 600)
(define WIDTH HEIGHT)

(define MARGIN 200)

;Use this design: https://www.makeplayingcards.com/design/custom-small-square-cards.html

(define bg (colorize (filled-rectangle WIDTH HEIGHT) "white"))
(define (front-side i) (cc-superimpose bg i))
(define (back-side i)

  (define final-i
    (if (or (pict? i)
            (and (image? i)
                 (or (> (image-width i) 200)
                     (> (image-height i) 200))))
        i ;Picts and large assets are unchanged
        (double-size
         (double-size i)) ;Better way of scaling bitmap assets
        ))
  
  (cc-superimpose bg
                  (scale-to-fit final-i
                                (- WIDTH MARGIN)
                                (- HEIGHT MARGIN)))) 

(define (id->thing id)
  (dynamic-require (CURRENT-LANGUAGE) id))

(define (is-form? id)
  (with-handlers ([exn:fail? (lambda (e) 
                               #t)])
                 
    ;Will fail on forms like 'define.  We use
    ;the exception thrown to detect forms...
    ;There's probably some kind of cleaner way, but it works fine.
    (dynamic-require (CURRENT-LANGUAGE) id)
    #f))

(define (is-asset? id)
  ((or/c image? animated-sprite?) (id->thing id)))

(define (is-procedure? id)
  (procedure?  (id->thing id)))

(define (form->back id)
  (list id "FORM"))


(define (asset->back id)
  (define thing (id->thing id))
  (define image
    (cond 
      [(image? thing) thing]
      [(animated-sprite? thing) (render thing)]
      [else (raise (~a "What was that? " id ))]))
  
  (back-side image))

(define (procedure->back id)
  (define thing (id->thing id))
  (define arity (procedure-arity thing)) 
  (define-values 
    (req-kws kws)   (procedure-keywords thing)) 

  (define kw-dummies
    (apply ~a
           (map (lambda (kw)
                  (~a "\n  " kw " ___")
                  #; ;This is maybe more Rackety, but since almost every keyword in our languages is optional, this is less visually noisy
                  (if (member kw req-kws)
                      (~a "\n  " kw " ___")
                      (~a "\n  [ " kw " ___ ]")))
                (or kws '()))))

  (define normal-dummies
    (apply ~a
           (cond
             [(number? arity)
              (map (const (~a "\n  ___" ))
                   (range arity))]
             [(arity-at-least? arity)
              (append
               (map (const (~a "\n  ___" ))
                   (range (arity-at-least-value arity)))
               (list "\n  ..."))]
             [((listof number?) arity)
              (map (const (~a "\n  ___" ))
                   (range (apply max arity)))]
             #;
             [else (raise
                    (~a "Not sure how to render the back of a card for a procedure with arity: " arity " " id))])))
 
  (back-side
   (codeblock-pict #:keep-lang-line? #f
                   (~a "#lang racket\n"
                       "(" id
                         kw-dummies
                         normal-dummies ;Usually, these are just extra components -- nice consistent quirk of how we designed our languages
                       ")")))) 
(define (id->back id)
  (cond
    [(is-form? id)      (form->back id)]
    [(is-asset? id)     (asset->back id)]
    [(is-procedure? id) (procedure->back id)]
    [else (raise (~a "What was that? " id))]))


(define (test)
  (local-require battlearena-avengers/examples)
  
  (map id->back 
       (map
         identifier-id
         (get-ids-with-frequency)))
  
  )


(parameterize ([CURRENT-LANGUAGE 'battlearena-avengers])
  (test)

  #;
  (map id->back
       (map first
            (test)))    

  #;
  (total-cards
    (test)))

