#lang scribble/manual

@(require ;ts-kata-util/katas/main
          ;ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          (prefix-in f: ts-fundamentals/katas)
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventures in Coding and Animals: K-2nd}

@k2-animal-badges

@table-of-contents[]

@section{Intro Katas}
@(render f:core-values)
@(render intro-kata)

@section{Food Katas}
@(render day-one)

@section{More Food Katas}
@(render day-two)

@section{Coin Katas}
@(render day-three)

@section{More Coin Katas}
@(render day-four)

@section{Enemy Katas}
@(render day-five)

@include-section["k2-game-jam.scrbl"]

@;section{All Animal Katas}
@;(render animal)

