#lang racket

(require (for-syntax racket/syntax racket "./langs/main.rkt")
         scribble/manual
         2htdp/image
         "./langs/main.rkt")

(provide define-kata-code
         (rename-out [define-kata-code define-example-code])  ;This is technically correct.  Examples are in TS-Languages, Katas are in TS-Kata-Collections
         define-example-code/from
         
         get-example-code
         get-example-names
        
         define/contract/doc
         )

(require scribble/srcdoc)

(define-for-syntax (extract-defaults arguments)
  (define (keyword? d)
    (string-prefix? (~a d) "#:"))
  
  (define args-datums (syntax->datum arguments))

  (define no-keywords (map second (filter-not keyword? args-datums)))

  (datum->syntax #f no-keywords))

;For in a TS-Lang.  Automates documentation.
(define-syntax (define/contract/doc stx)
  (syntax-case stx ()
    ([_ (f-name args ... . rest) contract doc body ...]
     (with-syntax ([temp/defaults (extract-defaults #'(args ...))])
       #'(begin
           (provide (proc-doc
                     f-name
                     contract
                     temp/defaults ;Fix this.  docs out...
                     doc)) 
         
           (define/contract (f-name args ... . rest)
             contract
             body ...))))
    ([_ (f-name args ... ) contract doc body ...]
     (with-syntax ([temp/defaults (extract-defaults #'(args ...))])
       #'(begin
           (provide (proc-doc
                     f-name
                     contract
                     temp/defaults ;Fix this.  docs out...
                     doc)) 
         
           (define/contract (f-name args ... )
             contract
             body ...))))))




(define-syntax (convert-require-if-necessary stx)
  (syntax-case stx (require)
    [(_ (require thing ...))
     #'(local-require thing ...)]
    [(_ not-a-require-expression)
     #'not-a-require-expression]))


(define-syntax (define-example-code/from stx)
  (syntax-case stx ()
    [(_ lang id)
     (with-syntax ([text (get-example-code (syntax->datum #'lang)
                                           (syntax->datum #'id))])
       #`(displayln text))]))


;Need to strip this down a bunch.
;Should do 3 things:
;  * Compile out the text for later scribble inclusion
;  * Create a test that runs when you setup the package
;  * Create a function so you can run your code snippet 
(define-syntax (define-kata-code stx)

  (syntax-case stx ()
    [(define-kata-code lang kata-name expr ... (run-game-with entity ...))
     (with-syntax ([run:kata-name (format-id #'kata-name "run:~a" #'kata-name)]
                   [syntaxes:kata-name (format-id #'kata-name "syntaxes:~a" #'kata-name)]
                   [lang-req (format-id #'lang "~a/jam-lang" #'lang)]
                   [full stx]
                   [save-path (apply build-path
                                     (append
                                      (reverse (rest (reverse (explode-path (syntax-source stx)))))
                                      (list "compiled-example-data")))])


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









