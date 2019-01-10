#lang info

(define scribblings '(("doc/manual.scrbl" (multi-page))))

(define deps '())

(define compile-omit-paths '(
  "test"))

(define test-omit-paths '("doc" "examples"))

(define test-include-paths '(
  "test"))
