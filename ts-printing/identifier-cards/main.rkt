#lang racket

(provide begin-identifier-job
         begin-asset-job)

(require pict
         (only-in 2htdp/image image? image-width image-height)
         (only-in pict/code codeblock-pict)
         (only-in game-engine animated-sprite? render)
         "../challenge-cards/main.rkt"
         "../k2-identifier-cards/double-size.rkt"
         "./util.rkt"
         "./special-forms.rkt")

(define HEIGHT 600)
(define WIDTH HEIGHT)

(define MARGIN 200)

;Use this design: https://www.makeplayingcards.com/design/custom-small-square-cards.html

(define bg (colorize (filled-rectangle WIDTH HEIGHT) "white"))

(define (front-side i)
  (define scaled-i (scale i 4)) ;Magic number works for most identifiers...
  (define w (- WIDTH MARGIN))
  (define h (- WIDTH MARGIN))
  
  (define final-i
    (if (or (> (pict-width scaled-i) w)
            (> (pict-height scaled-i) h))
        (scale-to-fit scaled-i w h)
        scaled-i))
  
  (cc-superimpose bg final-i))

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
                 
    ;dynamic-require fails on forms like 'define.  We use
    ;the exception thrown to detect forms...
    ;There's probably a cleaner way, but it works fine.
    (dynamic-require (CURRENT-LANGUAGE) id)
    #f))

(define (is-asset? id)
  ((or/c image? animated-sprite?) 
   (id->thing id)))

(define (is-procedure? id)
  (procedure?  (id->thing id)))

(define (form->back id)
  (back-side
   (special-image-for id)))


(define (asset->back id)
  (define thing (id->thing id))
  (define image
    (cond 
      [(image? thing) thing]
      [(animated-sprite? thing) (render thing)]
      [else 
        (begin
          (displayln "That wasn't a procedure, form, or asset")
          (displayln id)
          (blank))]))
  
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
    [(is-procedure? id) (procedure->back id)]
    [(is-asset? id)     (asset->back id)]
    [else 
        (begin
          (displayln "That wasn't a procedure, form, or asset")
          (displayln id)
          (back-side (blank)))]))

(define (id->front id)
  (front-side
   (codeblock-pict
    (~a id))))


(define (explode-by-frequency l)
  (define (explode x)
    (define f (identifier-frequency x))
    (if (= 1 f)
        x
        (map (const x) (range f))))
  (flatten (map explode l)))

(define (lang->list l)
  (parameterize ([CURRENT-LANGUAGE l])
    (define freqs (get-ids-with-frequency))

    (define exploded
      (explode-by-frequency freqs))

    (define backs
      (map (compose
            id->back
            identifier-id)
           exploded))

    (define fronts
      (map (compose
            id->front
            identifier-id)
           exploded))

    (flatten (map list fronts backs))))

(define (lang->asset-list l)
  (parameterize ([CURRENT-LANGUAGE l])
    (define ids (get-asset-ids))
    (define backs (map id->back ids))
    (define fronts (map id->front ids))
    
    (flatten (map list fronts backs))))


(define (list->Desktop l folder)
  (list->folder
   (build-path (find-system-path 'home-dir) "Desktop" folder)
   l))

(define-syntax-rule (begin-identifier-job folder
                                          (lang [k v] ...)
                                          ...)
  (begin
    (define counter 0)

    (parameterize ([k v] ...
                   [STARTING-CARD-NUMBER counter]
                   [META-TRANSFORM (curryr colorize "gray")]
                   [EXTRA-META     (text (~a "#lang " 'lang))])
      (define cards (lang->list 'lang))

      (list->Desktop cards folder)
      
      (set! counter (+ counter
                       (length
                        cards))))
    ...))

(define-syntax-rule (begin-asset-job folder
                                     (lang [k v] ...)
                                     ...)
  (begin
    (define counter 0)

    (parameterize ([k v] ...
                   [STARTING-CARD-NUMBER counter]
                   [META-TRANSFORM (curryr colorize "gray")]
                   [EXTRA-META    (text (~a "#lang " 'lang))])
      (define cards (lang->asset-list 'lang))

      (list->Desktop cards folder)
      
      (set! counter (+ counter
                       (length
                        cards))))
    ...))


;Combine the above jobs??  Not sure yet.

#;
(begin-asset-job "ba-test"
                 (battlearena-avengers))

#;
(begin-identifier-job "ba-test"
                      (battlearena-avengers))



;Do docs: Include justifications for
;  Number printed
;  Ordering
;  What's on the back

;  Intended use-case: one deck can do any kata in the collection -- and any
;     new kata -- as long as it doesn't require more of any identifier than appears in
;     some kata in the collection.

;  Asset card extras.  Print separately -- but maybe in the same job...


; Order cards

;Tomorrow: Shared decks




