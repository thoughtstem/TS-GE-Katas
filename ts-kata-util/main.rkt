#lang racket

(require (for-syntax racket/syntax racket "./langs/main.rkt")
         scribble/manual
         2htdp/image
         "./langs/main.rkt")

(provide define-example-code
         (rename-out [define-example-code define-kata-code])
         define-example-code/from
         define-example-code/from*
         
         get-example-code
         get-example-names
        
         define/contract/doc

         define-mapping
         with-mappings-from
         define-run:*
         define-run:

         reprovide-all-from)

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
  (define to-map
    (syntax-parse stx
      [(_ (f-name args ... )
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
         #,to-map
           
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
           #,to-map
           
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


(define-syntax (with-mappings-from stx)
  (syntax-case stx ()
    [(_ module-path body ...)
     #`(begin
         (require (prefix-in map: module-path))
         (parameterize ([mappings (mapping-module->mappings 'module-path)])
           body ...)
         )]))


(define-syntax (define-example-code/from* stx)
  (define lang        (second (syntax->datum stx)))
  (define target-lang (third  (syntax->datum stx)))

  (define example-ids
    (get-example-names lang))

  (define (from id)
    `(define-example-code/from ,lang ,target-lang ,id))

  (define froms
    (map from example-ids))

  (datum->syntax stx
                 `(begin
                    
                    ,@froms
                    )
                 stx
                 ))

(define-syntax (define-run: stx)
  (define id (second (syntax->datum stx)))
  (define body (third (syntax->datum stx)))

  
  (define run:id (string->symbol (~a "run:" id)))
  (datum->syntax stx
   `(begin
      (define (,run:id)
        ,@body)
      (module+ test
        (require rackunit game-engine)
        (let ()
          (displayln (~a "Running (" ,run:id ") as a test"))
          
          (define g
            (with-handlers ([exn:fail? (thunk*
                                        (error (~a "Game did not start:\n\n"
                                                   (pretty-format ',body 20)
                                                   "\n\n")))])
                (headless
                 (,run:id))))

          (define ticked-g  ;Catches a LOT of errors just by running the game for a bit
            (with-handlers ([exn:fail? (thunk*
                                        (error (~a "Game did not start:\n\n"
                                                   (pretty-format ',body 20)
                                                   "\n\n")))])
                (tick g #:ticks 10)))

          (check-equal? #t (game? ticked-g)) ;Can add something more meaningful here if necessary
          )))))

(define-syntax (define-run:* stx)
  (define root (compiled-examples-data-path stx))
  
  (define (file->kata-name f)
    (string->symbol
     (string-replace (~a f)
                     ".rkt"
                     "")))

  (define (file->kata-body f)
    (define lines
      (string-split (file->string (build-path root f))
                    "\n"))

    (define body-string (~a "("
                            (string-join (rest lines) "\n")
                            ")"))

    (define body (read (open-input-string body-string)))

    body)

  (make-directory* root)

  (define files
    (directory-list root))
  
  (define example-ids
    (map file->kata-name files))

  (define example-bodies
    (map file->kata-body files))

  (datum->syntax stx
                 `(begin ,@(map (λ(i b) `(define-run: ,i ,b))
                                example-ids
                                example-bodies)))

  )


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







(define-syntax (define-example-code/from stx)
  
  
  (syntax-case stx ()
    [(_ lang target-lang kata-name)
     (with-syntax ([text (get-example-code (syntax->datum #'lang)
                                           (syntax->datum #'kata-name))]
                   [save-path (compiled-examples-data-path stx)]
                   [run:kata-name (format-id #'kata-name "run:~a" #'kata-name)]
                   #;[run-def (datum->syntax (read (open-input-string text)))])

       #`(begin
           
           (make-directory* save-path)
             
           (define f-name
             (build-path save-path
                         (~a (symbol->string 'kata-name) ".rkt")))

           ;(displayln (~a "Writing out " 'kata-name " from " 'lang))

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


(define-syntax (capture-as-module stx)
  (syntax-case stx ()
    [(_ (define-example-code lang id expr ...))
     #'(syntax (module id lang expr ...))]))

(define-syntax (define-example-code stx)

  (syntax-case stx ()
    [(define-kata-code lang kata-name expr ... (run-game-with entity ...))
     (with-syntax ([run:kata-name (format-id #'kata-name "run:~a" #'kata-name)]
                   [syntax:kata-name (format-id #'kata-name "syntax:~a" #'kata-name)]
                   [lang-req (format-id #'lang "~a/jam-lang" #'lang)]
                   [full stx]
                   [save-path (compiled-examples-data-path stx)])


       #`(begin

           (provide run:kata-name
                    syntax:kata-name)

           (define syntax:kata-name (capture-as-module full))

           (define (run:kata-name)            
            (convert-require-if-necessary expr) ...
            (run-game-with entity ...))



           ))])
  )





(define-syntax (reprovide-all-from stx)
  (define root-parts (explode-path
                      (syntax-source stx)))
  (define root (apply build-path
                (take root-parts (sub1 (length root-parts)))))
  (define path (second (syntax->datum stx)))
  (define full (build-path root path))

  (define files (filter
                 (λ(f) (string-suffix? (~a f) ".rkt"))
                 (directory-list full)))

  (define (req/prov f)
    (define file-path (~a path f))
    `(begin
       (require ,file-path)
       (provide (all-from-out ,file-path))))

  (datum->syntax stx
   `(begin
      (provide ids)
      (define ids '(,@(map (compose string->symbol
                                  (curryr string-replace ".rkt" "")
                                  ~a)
                         files)))
      ,@(map req/prov files))))


