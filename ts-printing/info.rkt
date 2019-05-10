#lang info

(define collection "ts-printing")

(define deps '("base"
               "ts-kata-util"
               "ts-battle-arena"
               "ts-battle-arena-asp-2019"
               "ts-battle-arena-avengers-summer-camp-2019"
               "ts-battle-arena-fortnite-summer-camp-2019"
               "ts-battle-arena-starwars-summer-camp-2019"
               "ts-survival-asp-2019"
               "ts-survival-minecraft-summer-camp-2019"
               "ts-survival-pokemon-summer-camp-2019"
               "ts-k2-farm-summer-camp-2019"
               "ts-k2-sea-summer-camp-2019"
               "ts-k2-hero-summer-camp-2019"
               ))

(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/manual.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))

(define compile-omit-paths '())
