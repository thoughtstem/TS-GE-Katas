#lang racket

(provide extract-stimuli
         define-example-code-with-stimuli
         new-stimuli)

(require ts-kata-util
         ts-kata-util/katas/main
         syntax/parse/define)

(define-syntax (new-stimuli stx)
  (syntax-parse stx
    [(_ id text)
     #'(module+ stimuli
         (provide id)
         (define id 
           (list 'id 
                 (read text))))]))

(define-syntax-rule (extract-stimuli module-path)
  (let ()
    (local-require (submod module-path stimuli))

    (define-values (ids idk)
      (module->exports '(submod module-path stimuli)))

    (flatten
        (map
          (curry dynamic-require '(submod module-path stimuli))
          (map first (rest (first ids)))))))

(define-syntax-rule (define-example-code-with-stimuli lang id text stuff ...)
  (begin
    (new-stimuli id text)
    (define-example-code lang id stuff ...)))

