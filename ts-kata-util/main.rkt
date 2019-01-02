#lang racket

(module+ test
  (require rackunit))


(module+ test
  ;; Tests to be run with raco test
  )



(require (for-syntax racket/syntax racket)
         scribble/manual
         2htdp/image)

(provide define-kata-code
         (rename-out [define-kata-code define-example-code])  ;This is technically correct.  Examples are in TS-Languages, Katas are in TS-Kata-Collections

         
         show-kata-code
         (rename-out [show-kata-code show-example-code]) ;This is technically correct.  Examples are in TS-Languages, Katas are in TS-Kata-Collections

         
         kata
         side-note
         student-should-translate
         student-should-know-difference-between

         define/contract/doc
         )

(define (student-should-know-difference-between . things)
  (define (show-thing t)
    (item (bold (first t)) ": "
          (second t)))
  
  (list
   (para "Students should be able to recite the following definitions from memory:")
   (apply itemlist (map show-thing things))))



(define (student-should-translate #:english sentence
                                  #:code    kata-code-name
                                  #:lang    lang)

  (list
   (para "Students should be able to translate any sentence of this type:")
   (para (italic sentence))
   (para "To corresponding code of this type:")
   (show-kata-code lang kata-code-name)))

(define difficulties
  (hash 'air    (text "AIR" 24 'cyan)
        'stone    (text "STONE" 24 'gray)
        'bronze (text "BRONZE" 24 'orange)
        'silver (text "SILVER" 24 'darkgray)
        'gold   (text "GOLD" 24 'gold)
        'platnum   (text "PLATNUM" 24 'blue)))

(define (kata #:document-level (level subsubsection)
              #:difficulty (difficulty 'bronze)
              #:title (title "Avatar")

              #:time-limit (time-limit 10)
              . body)

  (define (render-difficulty d)
    (string-titlecase (~a d))
    
    ;Not working
    #;(if (hash-has-key? difficulties d)
        (hash-ref difficulties d)
        (string-titlecase (~a d))))

  (list
   
   (level 
          (~a (render-difficulty difficulty)
              " "
              title
              " Kata "
              "(" time-limit " minutes)"))
   body))


(define (side-note header . body)
  ;@margin-note*{@bold{Review/Introduce:} meaning of #lang ts-camp-jam-1, battle-arena-game, avatar, keyword.}

  (list
   (margin-note* (bold (~a header ": "))
                 body)

   )

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


;Takes something like: 'battle-arena 'rocket-tower-1
(define/contract (show-kata-code pkg-name kata-name)
  (-> symbol? symbol? any/c)

  (local-require pkg/lib)
  (define folder (pkg-directory (~a pkg-name)))
  
  (define kata-file
    (build-path folder "examples" "compiled-kata-data" (~a kata-name ".rkt")))

  (typeset-code #:keep-lang-line? #t (kata-file->code-string kata-file)))

(define example-file-exists?
  (flat-contract-with-explanation
   (λ (val)
     (cond
       [(file-exists? val) #t]
       [else
        (λ (blame)
          (define pkg-name (list-ref (reverse (explode-path val)) 3))
          (define file-name (list-ref (reverse (explode-path val)) 0))

          ;Should we actually run the file and generate the example instead
          ; of just telling peole they need to do it manually?
          
          (define more-information
            (~a "Make sure you've pulled the latest code from " pkg-name
                ".  And either run 'raco setup " pkg-name
                "'.  Or open the file " file-name
                " and run it to generate the missing example file."))
          (raise-blame-error blame val
                             '(expected: "an example file" given: "a path to a file that doesn't exist: ~e"
                                         "\n\n~a")
                             val more-information))])))
  )

(define/contract (kata-file->code-string file)
  (-> example-file-exists? string?)

  (file->string file))

(define-syntax (define-kata-code stx)

  (syntax-case stx ()
    [(define-kata-code lang kata-name expr ... (run-game-with entity ...))
     (with-syntax ([run:kata-name (format-id #'kata-name "run:~a" #'kata-name)]
                   [syntaxes:kata-name (format-id #'kata-name "syntaxes:~a" #'kata-name)]
                   [code-image:kata-name (format-id #'kata-name "code-image:~a" #'kata-name)]
                   [initial-game:kata-name (format-id #'kata-name "initial-game:~a" #'kata-name)]
                   [screenshot:kata-name (format-id #'kata-name "screenshot:~a" #'kata-name)]
                   [lang-req (format-id #'lang "~a/jam-lang" #'lang)]
                   [req #'(require (only-in game-engine tick draw-entities game-entities game-has-entity-named/c))]
                   [full stx]
                   [save-path (apply build-path
                                     (append
                                      (reverse (rest (reverse (explode-path (syntax-source stx)))))
                                      (list "compiled-kata-data")))])
       #`(begin
           (require lang-req)
           req
           
           (provide run:kata-name
                    syntaxes:kata-name
                    code-image:kata-name
                    initial-game:kata-name
                    screenshot:kata-name)

           (define syntaxes:kata-name (drop (syntax-e #,(syntax #'full)) 3) )
           
           (define (code-image:kata-name)
             (local-require pict pict/code )
             (apply (curry vl-append 10)
                    (codeblock-pict (~a "#lang " 'lang))
                    (map typeset-code syntaxes:kata-name)))

           (define (run:kata-name)
             
             expr ...
             (run-game-with entity ...))

           (define (initial-game:kata-name)
             
             expr ...
             (run-game-with #:headless #t
                            entity ...))

           (define (screenshot:kata-name #:after (ticks 20))
             
             (draw-entities
              (game-entities
               (tick #:ticks ticks
                     (initial-game:kata-name)))))



           


           ;And some basic unit testing
           (module+ test
             (require rackunit
                      (only-in 2htdp/image save-image)
                      (only-in pict pict->bitmap))
             

             (check-pred (game-has-entity-named/c "player")
                         (initial-game:kata-name))
             (displayln "Basic test pass")

             
             ;Saves out some data for docs whenever tests pass
             (begin
               (displayln "Saving out compiled data...")
             
               (make-directory* save-path)

               (require syntax/to-string)
             
               (define f-name (build-path save-path (~a (symbol->string 'kata-name) ".rkt")))

               (with-output-to-file f-name #:exists 'replace 
                 (thunk*
                  (displayln (~a "#lang " 'lang))
                  (displayln #;(syntax->string #'full)
                             (string-join (map (compose (λ(s) (~a "(" s ")")) syntax->string)
                                               syntaxes:kata-name) "\n\n"))))))
           
           ))]))









