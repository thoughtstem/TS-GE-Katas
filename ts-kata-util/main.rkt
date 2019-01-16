#lang racket

(require (for-syntax racket/syntax racket "./langs/main.rkt")
         scribble/manual
         2htdp/image
         "./langs/main.rkt")

(provide define-kata-code
         (rename-out [define-kata-code define-example-code])  ;This is technically correct.  Examples are in TS-Languages, Katas are in TS-Kata-Collections
         define-example-code/from
         define-example-code/from*
         
         get-example-code
         get-example-names
        
         define/contract/doc

         define-mapping
         with-mappings-from
         )

(require scribble/srcdoc)


(define-for-syntax (extract-defaults arguments)
  (define (keyword? d)
    (string-prefix? (~a d) "#:"))
  
  (define args-datums (syntax->datum arguments))

  (define no-keywords (map second (filter-not keyword? args-datums)))

  (datum->syntax #f no-keywords))

(define-syntax (define-mapping stx)
  (define d (syntax->datum stx))
  
  (datum->syntax
   stx
   `(module+ mappings
      (provide ,(second d))
      (define ,(second d) ',(third d)))))

(require (for-syntax syntax/parse))
;For in a TS-Lang.  Automates documentation.
(define-syntax (define/contract/doc stx)
  #;(define to-map
    (syntax-parse stx
      #;[(_ (f-name args ... )
          contract
          doc
          (other-f-name other-args ...))
       #'(define-mapping f-name other-f-name)]
      [else #'(void)]))

  (define temp/defaults (syntax-parse stx
                          [(_ (f-name args ...) contract doc body ...)
                           (extract-defaults #'(args ...))]
                          [(_ (f-name args ... . rest) contract doc body ...)
                           (extract-defaults #'(args ...))]))
  
  (syntax-case stx ()
    ([_ (f-name args ... . rest) contract doc body ...]
     #`(begin
        ; #,to-map
           
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
          ; #,to-map
           
           (provide (proc-doc
                     f-name
                     contract
                     #,temp/defaults ;Fix this.  docs out...
                     doc)) 
         
           (define/contract (f-name args ... )
             contract
             body ...)))))



(define-syntax (convert-require-if-necessary stx)
  (syntax-case stx (require)
    [(_ (require thing ...))
     #'(local-require thing ...)]
    [(_ not-a-require-expression)
     #'not-a-require-expression]))

(define-syntax (define-example-code/from* stx)
  (define lang        (second (syntax->datum stx)))
  (define target-lang (third (syntax->datum stx)))

  (define example-ids
    (get-example-names lang))

  (define (from id)
    `(define-example-code/from ,lang ,target-lang ,id))

  (define froms
    (map from example-ids))

  (datum->syntax stx
                 `(begin ,@froms)
                 stx))


(define mappings (make-parameter (list)))

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


(define (mapping-module->mappings m)
  (define-values
    (exports idk)
    (module->exports m))

  (define tos
    (map first (rest (first exports))))

  (define froms
    (map (λ(f) (dynamic-require m f)) tos))

  (map list
       froms
       tos))


(define-syntax (with-mappings-from stx)

  (syntax-case stx ()
    [(_ module-path body ...)
     #'(begin
         (require (prefix-in map: module-path))
         (parameterize ([mappings (mapping-module->mappings 'module-path)])
           body ...)
         )]))

(define-syntax (define-example-code/from stx)
  
  
  (syntax-case stx ()
    [(_ lang target-lang kata-name)
     (with-syntax ([text (get-example-code (syntax->datum #'lang)
                                           (syntax->datum #'kata-name))]
                   [save-path (compiled-examples-data-path stx)]
                   [run:kata-name (format-id #'kata-name "run:~a" #'kata-name)]
                   #;[run-def (datum->syntax (read (open-input-string text)))])

       #`(begin
           (define (run:kata-name)
             (displayln 'kata-name))

           (make-directory* save-path)
             
           (define f-name
             (build-path save-path
                         (~a (symbol->string 'kata-name) ".rkt")))

           (displayln (~a "Writing out " 'kata-name " from " 'lang))

           (define lang-line (~a "#lang " 'lang))
           (define target-lang-line (~a "#lang " 'target-lang))

           
           
           (with-output-to-file f-name #:exists 'replace 
             (thunk*
              (displayln (replace* text (cons
                                         (list lang-line target-lang-line)
                                         (mappings))))))))]))


(define-for-syntax (compiled-examples-data-path stx)
  (apply build-path
         (append
          (reverse (rest (reverse (explode-path (syntax-source stx)))))
          (list "compiled-example-data"))))

(define-syntax (define-kata-code stx)

  (syntax-case stx ()
    [(define-kata-code lang kata-name expr ... (run-game-with entity ...))
     (with-syntax ([run:kata-name (format-id #'kata-name "run:~a" #'kata-name)]
                   [syntaxes:kata-name (format-id #'kata-name "syntaxes:~a" #'kata-name)]
                   [lang-req (format-id #'lang "~a/jam-lang" #'lang)]
                   [full stx]
                   [save-path (compiled-examples-data-path stx)])


       #`(begin

           (provide run:kata-name
                    #;syntaxes:kata-name)

           (define syntaxes:kata-name (drop (syntax-e #,(syntax #'full)) 3) )

           (define (run:kata-name)            
            (convert-require-if-necessary expr) ...
            (run-game-with entity ...))

           ;And some basic unit testing
           (module+ test
             (require rackunit)
             
             ;Saves out some data for docs whenever tests pass
             (begin
               (displayln "Saving out compiled data...")
             
               (make-directory* save-path)

               (require syntax/to-string)
             
               (define f-name
                 (build-path save-path
                             (~a (symbol->string 'kata-name) ".rkt")))

               (with-output-to-file f-name #:exists 'replace 
                 (thunk*
                  (displayln (~a "#lang " 'lang))
                  (displayln (string-join (map (compose (λ(s) (~a "(" s ")")) syntax->string)
                                               syntaxes:kata-name) "\n\n"))))))))]))









