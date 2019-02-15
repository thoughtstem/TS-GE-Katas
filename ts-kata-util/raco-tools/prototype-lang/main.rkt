#lang at-exp racket

(module reader syntax/module-reader
   LANGUAGE-NAME)

(provide (all-from-out "./lang.rkt")
         (all-from-out "./assets.rkt"))

(require "./lang.rkt")
(require "./assets.rkt")
