#lang racket

(provide add-ratchet-output-to-response
         gamify-coding-kata)

(require ratchet
         ts-kata-util/katas/main)

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

(define gamify-coding-kata
  (compose
   (curryr set-response (do "The social game above as a class until everyone can play accurately and efficiently.  As with all games, the teacher may adjust the rules at any time to customize the game for their class."))
   writing->acting))
