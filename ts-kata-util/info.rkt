#lang info
(define collection "ts-kata-util")
(define deps '("base" "lang-file" "rsvg"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/ts-kata-util.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))

(define compile-omit-paths '(
  "badge-maker"))

(define raco-commands
  '(("build-lang-examples" ts-kata-util/raco-build-katas "runs kata-definition files, runs tests, builds documentation" 100)
    ("build-kata-docs" ts-kata-util/raco-build-docs "(re)builds the docs for a kata collection" 100)

))
