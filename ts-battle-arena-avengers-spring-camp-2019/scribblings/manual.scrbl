#lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day #}
@larger[@larger{Coding for Avengers Fans}]

 
@table-of-contents[]

@section{Hero Katas}
@(render hello-world-katas)
@(render hero-katas)

@section{Villain Katas}
@(render villain-katas)

@section{Power Katas}
@(render power-katas)

@section{Villain Power Katas}
@(render villain-power-katas)

@section{Planet Design Katas}
@(render planet-katas)
@(render level-design-katas)

@(include-section ts-camp-materials/scribblings/full-day-schedule)
@(include-section ts-camp-materials/scribblings/one-day-materials)

