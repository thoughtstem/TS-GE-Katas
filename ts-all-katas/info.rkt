#lang info
(define collection "ts-all-katas")
(define deps '("base"
                "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-battle-arena" 
                "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-battle-arena-avengers" 
                "https://github.com/thoughtstem/TS-Kata-Collections.git?path=ts-battle-arena-avengers-fleet-winter-2018" 
               ))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/ts-all-katas.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))
