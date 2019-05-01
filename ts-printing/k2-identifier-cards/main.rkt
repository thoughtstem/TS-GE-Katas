#lang racket

(provide begin-k2-identifier-job
         FILTER-BY-COLLECTION
         CURRENT-LANGUAGE-EXAMPLES)

(require ratchet
         pict 
         "../identifier-cards/main.rkt"
         "../common.rkt")


;Keep current visual language...
(define CURRENT-VISUAL-LANGUAGE
  (make-parameter #f))

(define (lookup-mapping id)
  (findf (lambda (im)
           (eq? id (identifier-mapping-main im)))
         (visual-language-mappings (CURRENT-VISUAL-LANGUAGE))))

(define (lookup-icon id)
  (define m (lookup-mapping id))

  (when (not m)
    (displayln (CURRENT-VISUAL-LANGUAGE))
    (error (~a "No mapping found for: " id)))

  (define p 
    (identifier-mapping-original m)) 

  (scale-to-fit
    (double-size
      (double-size
        (pict->bitmap p))) 
    100 100))


(define-syntax-rule (begin-k2-identifier-job folder
                                          (lang [k v] ...)
                                          ...)
  (begin
    (ID->CODE-PICT lookup-icon)
    (ID->SUMMARY   (const (blank)))
    (VERSION git-hash)
    (HEIGHT 800)
    (WIDTH  800)
    (FRONT-MARGIN 100)
    (BACK-MARGIN 100)

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
                           [CURRENT-LANGUAGE-EXAMPLES 'k2/examples]    
                           [CURRENT-VISUAL-LANGUAGE
                             (dynamic-require '(submod lang ratchet) 'vis-lang)]
                           [k v] ...)
              (lang->list 'lang)))
          ...)))

    (TOTAL (/ (length (flatten (hash-values card-hash)))
              2))

    (define counter 0)

    (parameterize ([k v] ...
                   [CURRENT-LANGUAGE 'lang] 
                   [STARTING-CARD-NUMBER counter])

      (define cards (hash-ref card-hash 'lang))

      (displayln (~a "Printing job: " folder))
      (displayln 'lang)
      (displayln (~a "(" (/ (length cards) 2) " cards)"))

      (list->folder cards folder)
      
      (set! counter (+ counter
                       (/
                         (length
                           cards)
                         2))))
    ...)
  
  )



