#lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day 3}
@larger[@larger{Coding for Marvel Fans}]

This is your resource for your @bold{Coding for Marvel Fans}
Fleet Spring Camp! Here you can find:

@itemlist[@item{The 5 main kata topics for the day}
          @item{Extra katas}
          @item{Day's schedule with details, hints and reccomendations}
          @item{The list of materials needed to run this camp}
          @item{Assets to use in katas and game jam}]

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
