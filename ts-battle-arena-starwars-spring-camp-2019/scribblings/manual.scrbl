#lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day 2}
@larger[@larger{Coding for Fornite Fans}]

 
@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@section{Hero Katas}
@(render hero-katas)

@section{Villain Katas}
@(render villain-katas)

@section{Lightsaber Katas}
@(render lightsaber-katas)

@section{Villain Weapons Katas}
@(render villain-weapon-katas)

@section{Planet Katas}
@(render planet-katas)

@(include-section ts-camp-materials/scribblings/full-day-schedule)
@(include-section ts-camp-materials/scribblings/one-day-materials)


@section{Extra Katas}
@(render level-design-katas)
@(render health-katas)
@(render boost-katas)
@(render shield-katas)
@(render force-field-katas)
@(render lava-pit-katas)
@(render spike-mine-katas)
@(render lightsaber-droid-katas)
@(render blaster-droid-katas)
@(render lightsaber-armor-katas)
@(render blaster-armor-katas)

@(include-section battlearena-starwars/scribblings/assets-library)
