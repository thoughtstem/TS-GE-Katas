#lang racket

(provide get-example-code
         get-example-names
         module->example-ids

         get-example-syntax)

(define (add-line-breaks str)
  (string-replace str "#:" "\n    #:"))

(define (syntax->program-string stx)
  (define lang
    (third (syntax->datum stx)))
  ;(pretty-print-depth 1)
  (string-append
   (~a "#lang " lang "\n\n")
   ;(~a (syntax->datum stx))
   (string-join
     (map (compose (curryr substring 1)
                   add-line-breaks
                   (curryr pretty-format 'infinity) ; original 50
                   ) 
         (drop (syntax->datum stx) 3) )
    "\n\n")

   ))


(define (module->example-ids m)
  (dynamic-require m #f)
  
  (define-values (raw-example-ids dont-care)
    (module->exports m))

  (define example-ids
    (map first (rest (first raw-example-ids))))
  
  (define syntax-ids
    (filter
     (compose (curryr string-prefix? "syntax:") ~a)
     
     example-ids))

  syntax-ids)

(define (get-example-code pkg-name kata-name)
  (syntax->program-string
   (get-example-syntax pkg-name kata-name)))

(define (get-example-syntax pkg-name kata-name)
  (define stx
    (dynamic-require (string->symbol
                     (~a pkg-name "/examples"))
                    (string->symbol
                     (~a "syntax:" kata-name))))
  stx)

(define (get-example-names pkg-name)

  (dynamic-require (string->symbol
                    (~a pkg-name "/examples"))
                   #f)

  (define-values (important not-important)
    (module->exports (string->symbol
                      (~a pkg-name "/examples"))))

  (define exported-ids
    (map first
         (rest
          (first
           important))))

  (define example-ids
    (filter (compose (curryr string-prefix? "syntax:") ~a) exported-ids))

  (map (compose
        string->symbol
        second
        (curryr string-split ":")
        ~a)
       example-ids))



#;(module+ test
    (get-example-code 'battle-arena 'avatar-3)

    (get-example-names 'battle-arena)
    )



