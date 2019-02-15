#lang racket

(require (for-syntax racket/syntax racket "./langs/main.rkt")
         scribble/manual
         2htdp/image
         "./langs/main.rkt")

(provide define-example-code
         (rename-out [define-example-code define-kata-code])

         run-example
         eval-example

         language-mappings
         
         get-example-code
         get-example-names
         get-example-syntax

         define/contract/doc

         test-all-examples-as-games)

(require scribble/srcdoc)


(define-for-syntax (extract-defaults arguments)
  (define (keyword? d)
    (string-prefix? (~a d) "#:"))
  
  (define args-datums (syntax->datum arguments))

  (define no-keywords (map second (filter-not keyword? args-datums)))

  (datum->syntax #f no-keywords))


(require (for-syntax syntax/parse))
;For in a TS-Lang.  Automates documentation.
(define-syntax (define/contract/doc stx)

  (define temp/defaults (syntax-parse stx
                          [(_ (f-name args ...) contract doc body ...)
                           (extract-defaults #'(args ...))]
                          [(_ (f-name args ... . rest) contract doc body ...)
                           (extract-defaults #'(args ...))]))
  
  (syntax-case stx ()
    ([_ (f-name args ... . rest) contract doc body ...]
     #`(begin
        (provide (proc-doc
                   f-name
                   contract
                   #,temp/defaults ;Fix this.  docs out...
                   doc)) 
         
         (define/contract (f-name args ... . rest)
           contract
           body ...)))
    ([_ (f-name args ... ) contract doc body ...]
     #`(begin
         (provide (proc-doc
                     f-name
                     contract
                     #,temp/defaults ;Fix this.  docs out...
                     doc)) 
         
           (define/contract (f-name args ... )
             contract
             body ...)))))


(define-for-syntax (not-kw sym)
  (not
   (string-prefix? (~a sym) "#:")))

(define-syntax (language-mappings stx)
  (syntax-case stx ()
    [(_ src-lang tgt-lang [from to] ...)
     (begin
       #`(begin
           (provide (all-from-out src-lang))
           (module+ #,(datum->syntax stx 'mappings )
             (provide mappings)
             (define mappings
               '((src-lang tgt-lang)
                 (from to)
                 ...)))))]))



(provide string-mappings)
(define string-mappings (make-parameter (list )))

(define (replace* s subs)
  (foldl
   (λ(next accum)
     (define find    (first next))
     (define replace (second next))
     (regexp-replace* (regexp (~a "([ \\(])" find "([\\) ])"))
                      accum
                      (~a "\\1" replace "\\2")))
   s
   subs))

(provide transform-mappings)
(define (transform-mappings stx)
  (datum->syntax stx
   (read
    (open-input-string
     (replace* (~s (syntax->datum stx))
               (string-mappings))))))


(define-syntax (run-example stx)
  (syntax-case stx ()
    [(_ kata-name)
     (with-syntax ([syntax:kata-name
                    (format-id #'kata-name "syntax:~a" #'kata-name)])


       #`(begin
           (define-namespace-anchor a)
           (define ns (namespace-anchor->namespace a))
           
           (eval-example syntax:kata-name ns)
           ))]))


(define (eval-example stx ns)

  (with-handlers [(exn:fail?
                   (lambda(e)
                     (error (~a "Error running example! " stx "\n\n" e))))]
    (begin
      (define d (syntax->datum stx))
      (eval `(begin ,@(drop d 3)) ns)))

  )


(define-syntax (define-example-code stx)

  (define captured-module
    (syntax-case stx ()
      [(_ lang kata-name expr ...)
       #'(module kata-name lang expr ...)]))


  (syntax-case stx ()
    [(_ lang kata-name expr ...)
     (with-syntax ([syntax:kata-name
                    (format-id #'kata-name "syntax:~a" #'kata-name)])


       #`(begin

           (provide syntax:kata-name)

           (define syntax:kata-name
             (syntax #,captured-module))))]))


(provide define-example-code/from*)
(define-syntax (define-example-code/from* stx)
  (define d (syntax->datum stx))
  (define lang/examples (second d))

  (define syntax-ids
    (module->example-ids lang/examples))
  
  (define mappings
    (dynamic-require
     '(submod "./lang/main.rkt" mappings) 'mappings))

  (define define/transform/provides
    (map
     (λ(id)
       `(begin
          (provide ,id)
          
          (define ,id
            (parameterize [(string-mappings ',mappings)]
              (transform-mappings ,(string->symbol (~a "other:" id)))))
          (void)))
     syntax-ids))
  
  (datum->syntax stx
                 `(begin
                    (require (prefix-in other: ,lang/examples))

                    ,@define/transform/provides
                    )))




(define-syntax (test-all-examples-as-games stx)
  (define lang-id (second (syntax->datum stx)))
  (datum->syntax stx
                 `(module+ test
                    (require rackunit)
                    (define-namespace-anchor a)
                    (define ns (namespace-anchor->namespace a))
  
                    (define (test id)
                      (define g
                        (headless
                         (eval-example
                          (get-example-syntax ,lang-id
                                              id)
                          ns)))

                      (define ticked-g (tick g #:ticks 10))

                      (check-pred game? ticked-g)

                      )

                    (map test
                         (get-example-names ,lang-id)))))


