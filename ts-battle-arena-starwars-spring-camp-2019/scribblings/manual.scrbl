#lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day 2}
@larger[@larger{Coding for Star Wars Fans}]

 
@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@section{Rebel Katas}
@(render rebel-katas)

@section{Imperial Katas}
@(render imperial-katas)

@section{Weapon Katas}
@(render weapon-katas)

@section{Powerup Katas}
@(render powerup-katas)

@section{Imperial Weapons Katas}
@(render imperial-weapon-katas)

@(include-section ts-camp-materials/scribblings/full-day-schedule)
@(include-section ts-camp-materials/scribblings/one-day-materials)


@section{Extra Katas}
@(render planet-katas)
@(render level-design-katas)
@(render boost-katas)
@(render shield-katas)
@(render lava-pit-katas)
@(render spike-mine-katas)
@(render lightsaber-droid-katas)
@(render blaster-droid-katas)
@(render lightsaber-armor-katas)
@(render blaster-armor-katas)

@(include-section battlearena-starwars/scribblings/assets-library)
