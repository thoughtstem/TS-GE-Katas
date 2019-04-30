#lang racket

(provide begin-identifier-job
         begin-asset-job
         lang->list
         ID->CODE-PICT 
         ID->SUMMARY
         CURRENT-LANGUAGE-EXAMPLES
         CURRENT-LANGUAGE
         FILTER-BY-COLLECTION)

(require pict
         (only-in 2htdp/image image? image-width image-height)
         (only-in pict/code codeblock-pict)
         (only-in game-engine animated-sprite? render)
         "../common.rkt"
         "./util.rkt"
         "./special-forms.rkt")


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

  (back-side (special-scale image)) )


;Good for scaling pixel art.  Sharper edges.
(define (special-scale i)
  ;Doubling the size of small images is safe... Not larger ones!  If we need to parameterize the 200 we can...
  (if (or (< (image-width i) 200)
          (< (image-height i) 200))
    (scale-to-fit
      (double-size
        (double-size i))
      (back-w)
      (back-h))
    i))

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
             [else (error
                    (~a "Not sure how to render the back of a card for a procedure with arity: " arity " " id))])))
 
  (back-side
   (codeblock-pict #:keep-lang-line? #f
                   (~a "#lang racket\n"
                       "(" id
                         kw-dummies
                         normal-dummies ;Usually, these are just extra components -- nice consistent quirk of how we designed our languages
                       ")")))) 


(define (id->summary id)
  (cond
    [(is-form? id)      (form->back id)]
    [(is-procedure? id) (procedure->back id)]
    [(is-asset? id)     (asset->back id)]
    [else 
        (begin
          (displayln "That wasn't a procedure, form, or asset")
          (displayln id)
          (blank))]))

(define (id->back id)
  (back-side ((ID->SUMMARY) id)))

(define (id->front id)
  (define blank-card-bg
    (blank-bg))

  (define content
    ((ID->CODE-PICT) id))

  ;We want all of these to be the same size (normal font size scaled by 4),
  ;  so we only scale down if it happens to be too big.  Most of the identifiers are short, though, and will fit fine.
  (define scaled-content
    (if (or (> (pict-width content) (front-w))
            (> (pict-height content) (front-h)))
      (scale-to-fit content w h)
      (scale content 6)))

  (front-side 
    (cc-superimpose blank-card-bg
                    scaled-content)))


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



(define-syntax-rule (begin-identifier-job folder
                                          (lang [k v] ...)
                                          ...)
  (begin
    (displayln "Begining identifier job")
    (displayln (~a "Output to: " folder))
    (VERSION git-hash)
    (HEIGHT 800)
    (WIDTH  800)
    (FRONT-META-FUNCTION
      (lambda (i)
        (colorize
          (vc-append (default-meta i)
                     (text (~a "#lang " (CURRENT-LANGUAGE)))
                     (text folder))
          "gray")))

    (define card-hash
      (make-hash 
        (list
          (cons 
            'lang 
            (parameterize ([k v] ...
                           [CURRENT-LANGUAGE 'lang])
              (displayln "Adding to hash...")
              (displayln 'lang)
              (lang->list 'lang)))
          ...)))

    (TOTAL (/ (length (flatten (hash-values card-hash)))
              2))

    (define counter 1)

    (parameterize ([k v] ...
                   [CURRENT-LANGUAGE 'lang]
                   [STARTING-CARD-NUMBER counter])
      (define cards (hash-ref card-hash 'lang))

      (list->folder cards folder)
      
      (set! counter (+ counter
                       (/
                         (length
                           cards)
                         2))))
    ...))

(define-syntax-rule (begin-asset-job folder
                                     (lang [k v] ...)
                                     ...)
  (begin
    (VERSION git-hash)
    (HEIGHT 800)
    (WIDTH  800)
    (FRONT-META-FUNCTION
      (lambda (i)
        (colorize
          (vc-append (default-meta i)
                     (text (~a "#lang " (CURRENT-LANGUAGE)))
                     (text folder))
          "gray")))

    (define card-hash
      (make-hash 
        (list
          (cons 
            'lang 
            (parameterize ([CURRENT-LANGUAGE 'lang] 
                           [k v] ...)
              (lang->asset-list 'lang)))
          ...)))

    (TOTAL (/ (length (flatten (hash-values card-hash)))
              2))

    (define counter 1)

    (parameterize ([k v] ...
                   [CURRENT-LANGUAGE 'lang]
                   [STARTING-CARD-NUMBER counter])
      (define cards (hash-ref card-hash 'lang))

      (list->folder cards folder)
      
      (set! counter (+ counter
                       (/ (length cards)
                          2))))
    ...))


(define ID->SUMMARY
  (make-parameter
    id->summary))

(define ID->CODE-PICT
  (make-parameter
    (lambda (id)
      (codeblock-pict
        (~a id)))))

