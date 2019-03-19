#lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day 3}
@larger[@larger{Coding for Avengers Fans}]

 
@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@section{Hero Katas}
@(render hero-katas)

@section{Planet Design Katas}
@(render planet-design-katas)

@section{Villain Katas}
@(render villain-katas)

@section{Power Katas}
@(render power-katas)

@section{Power-Up Katas}
@(render powerup-katas)



@(include-section ts-camp-materials/scribblings/full-day-schedule)
@(include-section ts-camp-materials/scribblings/one-day-materials)


@section{Extra Katas}
@(render shield-katas)
@(render force-field-katas)
@(render droid-katas)
@(render armor-katas)
@(render lava-pit-katas)
@(render spike-mine-katas)

@(include-section battlearena-avengers/scribblings/assets-library)
