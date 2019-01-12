#lang info
(define collection "ts-kata-util")
(define deps '("base" 
               "lang-file" 
               "rsvg" 
               "https://github.com/thoughtstem/TS-HomeSite.git" ;For rebuilding the index page
               ))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/ts-kata-util.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))

(define compile-omit-paths '(
  "badge-maker" 
  "raco-tools/prototype-kata-collection" 
  "raco-tools/prototype-lang"))

(define raco-commands
  '(("build-lang-examples" ts-kata-util/raco-build-katas "runs kata-definition files, runs tests, builds documentation" 100)
    ("build-kata-docs"     ts-kata-util/raco-build-docs "(re)builds the docs for a kata collection" 100)
    ("new-kata-collection" ts-kata-util/raco-tools/raco-new-kata-collection "Creates a new minimal TS-Kata-Collections repo" 100)
    ("new-language"        ts-kata-util/raco-tools/raco-new-language "Creates a new minimal TS-Languages folder" 100)
    ("rebuild-index"       ts-kata-util/raco-tools/rebuild-index "Builds the index page to help people navigate a collection of kata collections" 100)))

