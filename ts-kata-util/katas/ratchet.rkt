#lang racket

(provide add-ratchet-output-to-response
         define-ratchet-katas)

(require ratchet
         ts-kata-util
         ts-kata-util/inline-stimuli
         ts-kata-util/katas/main
         syntax/parse/define
         (for-syntax racket/syntax))

(define (add-ratchet-output-to-response k)
  (define code-string (expression-data (response-data (kata-response k))))
  (define lang
    (string->symbol
     (second
      (regexp-match #px"#lang (\\S*)" code-string))))

  (define vis-lang
    (dynamic-require
     `(submod ,lang ratchet) 'vis-lang))



  (struct-copy kata k
               [response
                (write-code ;Feels a bit hacky, but whatever...
                 #:lang 'English
                 (list
                  (response-data (kata-response k))
                  "In Ratchet:"
                  (render-syntax
                   (convert-syntax-string vis-lang
                                          code-string))))]))

(define-syntax (define-ratchet-katas stx)
  (syntax-parse stx
    [(_ id langs ...)
     (with-syntax ([lang/examples (map 
                                    (lambda (l) 
                                      (list 'extract-stimuli (format-id stx "~a/examples" l)))
                                     (syntax->datum #'(langs ...)))])
       #`(begin
           (define proto-katas
             (merge-collections
               (lang->kata-collection 'langs) ...))

           (define the-stimuli (append #,@#'lang/examples))

           (define katas-with-stimuli
             (apply fill-in-stimuli proto-katas the-stimuli))

           (define id (katas-map add-ratchet-output-to-response katas-with-stimuli))))]))
