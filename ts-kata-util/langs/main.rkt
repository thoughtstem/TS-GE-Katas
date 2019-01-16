#lang racket

(provide kata-file->code-string
         get-example-code
         get-example-names
         example-file-exists?
         get-kata-file)


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


(define/contract (replace* s subs)
  (-> string? (listof (listof string?)) string?)
  (foldl
   (λ(next accum)
     (define find    (first next))
     (define replace (second next))
     (string-replace accum find replace))
   s
   subs))

(define (examples-with-substitutions lang subs)
  (define examples
    (map (curry get-example-code lang)
         (get-example-names lang)))

  (define new-examples
    (map (curryr replace* subs) examples))

  new-examples)




(define (get-example-code pkg-name kata-name)

  (define kata-file (get-kata-file pkg-name kata-name))

  (kata-file->code-string kata-file))


(define (get-example-names pkg-name)
  (define example-folder (get-kata-file pkg-name))

  (map (compose string->symbol
                (curryr string-replace ".rkt" ""))
       (filter (and/c (curryr string-suffix? ".rkt")
                      (not/c (curryr string-suffix? "bak.rkt")))
               (map ~a (directory-list example-folder)))))




(define (get-kata-file pkg-name (kata-name #f))
  
  (local-require pkg/lib)
  (define folder (pkg-directory (~a pkg-name)))

  (and (not folder)
       (error (~a "Couldn't find a folder for language '" pkg-name "'.  Either install it with 'raco pkg install " pkg-name "'.  Or, if you have it on your computer somewhere already (perhaps in TS-Languages/), tell me where it is by navigating to it and running 'raco pkg install'")))
  
  (define kata-file
    (build-path folder "examples" "compiled-example-data" (if kata-name
                                                              (~a kata-name ".rkt")
                                                              ".")))

  kata-file)

