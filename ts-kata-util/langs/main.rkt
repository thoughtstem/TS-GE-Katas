#lang racket

(provide get-example-code
         get-example-names)

(define (syntax->program-string stx)
  (define lang
    (third (syntax->datum stx)))
  
  (string-append
   (~a "#lang " lang "\n\n")
   (string-join
    (map (compose (curryr substring 1)
                  (curryr pretty-format 50))
         (drop (syntax->datum stx) 3) )
    "\n\n")))


(define (get-example-code pkg-name kata-name)
  (define stx
    (dynamic-require (string->symbol
                     (~a pkg-name "/examples"))
                    (string->symbol
                     (~a "syntax:" kata-name))))
  (syntax->program-string stx))



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



