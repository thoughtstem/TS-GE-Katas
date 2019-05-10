#lang scribble/manual

@(require ;ts-kata-util/katas/main
          ;ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          (prefix-in f: ts-fundamentals/katas)
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Adventures in Coding and Superheroes: K-2nd}

@k2-superhero2-badges

@table-of-contents[]

@section{Intro Katas}
@(render f:core-values)
@(render intro-kata)

@section{Basic Katas}
@(render day-one)

@section{Power Katas}
@(render day-two)

@section{Power Color Katas}
@(render day-three)

@section{Power-ups Katas}
@(render day-four)

@section{Multi Level Katas}
@(render day-five)

@section{All Hero Katas}
@(render hero)

@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-k2)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)