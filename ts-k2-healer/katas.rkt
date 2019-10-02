#lang racket

(provide zoo sea farm)

(require 
  ts-kata-util
  ts-kata-util/katas/main
  ts-kata-util/katas/ratchet
  ts-kata-util/inline-stimuli

  ;Consider getting this from somewhere more general.  Not a healer level thing...
  healer-lib/examples-lib
  syntax/parse/define
  (for-syntax racket/syntax))

(define-syntax (define-healer-katas stx)
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

(define-healer-katas zoo 
                     healer-zoo-foods
                     healer-zoo-friends
                     healer-zoo-enemies)
(define-healer-katas sea
                     healer-sea-foods
                     healer-sea-friends
                     healer-sea-enemies)
(define-healer-katas farm
                     healer-farm-foods
                     healer-farm-friends
                     healer-farm-enemies)

