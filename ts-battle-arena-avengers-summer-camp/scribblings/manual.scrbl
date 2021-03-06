#lang scribble/manual


@(require ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Marvel Summer Camp}
@larger[@larger{Coding for Marvel Fans}]

@avengers-badges

@table-of-contents[]

@section{Intro Katas}
@(render code-of-awesomeness-katas)
@(render hello-world-katas)

@section{Hero Katas}
@(render hero-katas)

@section{Planet Design Katas}
@(render planet-design-katas)

@section{Villain Katas}
@(render villain-with-power-katas)

@section{Power Katas}
@(render hero-power-katas)

@section{Power-Up Katas}
@(render powerup-katas)

@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-avengers)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section battlearena-avengers/scribblings/assets-library)