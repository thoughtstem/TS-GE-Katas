#lang racket 


(provide syntax->pict)

(require pict syntax/parse/define syntax/parse)

(define (get-expr-list stx)
  (syntax-parse stx
     #:datum-literals (syntax)
     [(module id lang stuff ...) 
      (syntax-e #'(stuff ...))]
     ))

(define (syntax->lang-line-pict stx)
  (define current-code-font
    (dynamic-require 'pict/code 'current-code-font))
  (syntax-parse stx
     #:datum-literals (syntax)
     [(module id lang stuff ...) 
      (text (~a "#lang " (syntax->datum #'lang))
            (current-code-font))]
     ))

(define (syntax->pict s)
  (define typeset-code
    (dynamic-require 'pict/code 'typeset-code))
  (apply (curry vl-append 20)
         (syntax->lang-line-pict s)
         (map typeset-code
              (get-expr-list s))))


