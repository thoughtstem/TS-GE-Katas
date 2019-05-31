#lang scribble/manual

@(require ;ts-kata-util/katas/main
          ;ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Star Wars Summer Camp}
@larger[@larger{Coding for Star Wars Fans}]

@starwars-badges

@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render hello-world-katas)

@section{Rebel Katas}
@(render rebel-katas)

@section{Imperial Katas}
@(render imperial-katas)

@section{Weapon Katas}
@(render weapon-katas)

@section{Power-Up Katas}
@(render powerup-katas)

@section{Trap Weapons Katas}
@(render trap-weapon-katas)

@;section{Extra Katas}
@;(render planet-katas)
@;(render level-design-katas)
@;(render boost-katas)
@;(render shield-katas)
@;(render lava-pit-katas)
@;(render blaster-droid-katas)
@;(render lightsaber-armor-katas)
@;(render blaster-armor-katas)

@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-starwars)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section battlearena-starwars/scribblings/assets-library)