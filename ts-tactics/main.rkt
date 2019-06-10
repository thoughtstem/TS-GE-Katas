#lang racket

(module reader syntax/module-reader
  ts-tactics/main)

(define-syntax-rule (module-begin expr ...)
  (#%module-begin

   (print-tactic expr)
   ...  ))

(provide 
  (except-out (all-from-out racket/base)
              #%module-begin)
  (rename-out [module-begin #%module-begin])
  (all-from-out
    "./tactics/lang.rkt"
    "./tactics/tactic-library/team-memorize.rkt"))

(require racket/base
         "./tactics/tactic-library/team-memorize.rkt"
         "./tactics/lang.rkt")

