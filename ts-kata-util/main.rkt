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

      ;   define-mapping
         define-mappings-from
      ;   define-run:*
         define-run:

         reprovide-all-from)

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
  #;(define to-map
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
         ;  #,to-map
           
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


(define-syntax (define-mappings-from stx)
  (datum->syntax stx
   `(define-syntax (battle-arena-game stx)
      (syntax-case stx (battle-arena-game)
        [(battle-arena-game)          #'(starwars-game)]
        [(battle-arena-game expr ...) #'(starwars-game expr ...)])
      ))


  #;(syntax-case stx ()
    [(_ module-path)
     #`(begin
         (require  (prefix-in map: module-path))

         (mappings (mapping-module->mappings 'module-path))

         body
         ...
         )])

  )


(define-syntax (define-example-code/from* stx)
  (define lang        (second (syntax->datum stx)))
  (define target-lang (third  (syntax->datum stx)))

  (define example-ids
    (get-example-names lang))

  (define (from id)
    `(define-example-code/from ,lang ,target-lang ,id))

  (define froms
    (map from example-ids))

  (define lang/examples (string->symbol
                         (~a lang "/examples")))

  (datum->syntax stx
                 `(begin
                    (local-require (prefix-in other: ,lang/examples))
                    ,@froms)
                 stx))



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

#;(define-syntax (define-run:* stx)
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
  (define d (syntax->datum stx))
  (define lang        (second d))
  (define target-lang (third d))
  (define kata-name   (fourth d))
  
  (define other-example-syntax
    (dynamic-require (string->symbol
                      (~a lang "/examples"))
                     (string->symbol
                      (~a "syntax:" kata-name))))

  (define converted-example-syntax other-example-syntax)
  
  (syntax-case stx ()
    [(_ lang target-lang kata-name)
     (with-syntax ([text (get-example-code (syntax->datum #'lang)
                                           (syntax->datum #'kata-name))]
                   
                   [other:run:kata-name    (format-id #'kata-name "other:run:~a" #'kata-name)]
                   [other:syntax:kata-name (format-id #'kata-name "other:syntax:~a" #'kata-name)]
                   [run:kata-name          (format-id #'kata-name "run:~a" #'kata-name)]
                   [syntax:kata-name       (format-id #'kata-name "syntax:~a" #'kata-name)])

       #`(begin

           (define (run:kata-name)
               #,@(drop (syntax-e other-example-syntax) 3)) 

           (define syntax:kata-name
             (syntax #,other-example-syntax)) 

           ))]))



(define-syntax (capture-as-module stx)
  (syntax-case stx ()
    [(_ (define-example-code lang id expr ...))
     #'(syntax (module id lang expr ...))]))

(define-syntax (define-example-code stx)

  (syntax-case stx ()
    [(define-kata-code lang kata-name expr ... (run-game-with entity ...))
     (with-syntax ([run:kata-name (format-id #'kata-name "run:~a" #'kata-name)]
                   [syntax:kata-name (format-id #'kata-name "syntax:~a" #'kata-name)]
                   [full stx])


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


