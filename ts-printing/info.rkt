#lang info

(define collection "ts-printing")

(define deps '("base"
               "ts-kata-util"
               "ts-battle-arena"
               "ts-battle-arena-asp-2019"))

(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/manual.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))

(define compile-omit-paths '())
