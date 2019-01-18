#lang racket

(require (for-syntax racket/syntax racket "./langs/main.rkt")
         scribble/manual
         2htdp/image
         "./langs/main.rkt")

(provide define-example-code
         (rename-out [define-example-code define-kata-code])

         run-example

         language-mappings
         
         get-example-code
         get-example-names
        
         define/contract/doc)

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



(define-syntax (language-mappings stx)
  (syntax-case stx ()
    [(_ src-lang tgt-lang [from to] ...)
     #`(begin
         (provide (except-out (all-from-out src-lang)
                              from ...))
         (module+ #,(datum->syntax stx 'mappings )
           (provide mappings)
           (define mappings
             '((from to)
               ...))))]))



(provide string-mappings)
(define string-mappings (make-parameter (list )))

(define (replace* s subs)
  (foldl
   (λ(next accum)
     (define find    (first next))
     (define replace (second next))
     (string-replace accum
                     (~a find)
                     (~a replace)))
   s
   subs))

(provide transform-mappings)
(define (transform-mappings stx)
  (datum->syntax stx
   (read
    (open-input-string
     (replace* (~a (syntax->datum stx))
               (string-mappings))))))

(provide define-example-code/from*)
(define-syntax (define-example-code/from* stx)
  (define d (syntax->datum stx))
  (define lang/examples (second d))

  (dynamic-require lang/examples #f)

  (define-values (raw-example-ids dont-care)
    (module->exports lang/examples))

  (define example-ids
    (map first (rest (first raw-example-ids))))

  (define syntax-ids
    (filter
     (compose (curryr string-prefix? "syntax:") ~a)
     example-ids))
  
  (define mappings
    (dynamic-require
     '(submod "./lang/main.rkt" mappings) 'mappings))

  (define define/transform/provides
    (map
     (λ(id)
       `(begin
          (provide ,id)
          
          (define ,id
            (parameterize [(string-mappings (cons '(" battle-arena" " battle-arena-starwars") ',mappings))]
              (transform-mappings ,(string->symbol (~a "other:" id)))))
          (void)))
     syntax-ids))
  
  (datum->syntax stx
                 `(begin
                    (require (prefix-in other: ,lang/examples))
                    

                    ,@define/transform/provides
                    ))
  )

(define (run-example example-syntax)
  (define d (syntax->datum example-syntax))
  (eval (append
         d
         `(dynamic-require ',(second d) #f))))

(define-syntax (capture-as-module stx)
  (syntax-case stx ()
    [(_ (define-example-code lang id expr ...))
     #'(syntax (module id lang expr ...))]))

(define-syntax (define-example-code stx)

  (syntax-case stx ()
    [(define-kata-code lang kata-name expr ... (run-game-with entity ...))
     (with-syntax ([syntax:kata-name (format-id #'kata-name "syntax:~a" #'kata-name)]
                   [full stx])


       #`(begin

           (provide syntax:kata-name)

           (define syntax:kata-name (capture-as-module full))

           ))])
  )






