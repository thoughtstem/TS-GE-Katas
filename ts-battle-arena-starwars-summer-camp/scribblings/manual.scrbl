#lang scribble/manual

@(require ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Star Wars Summer Camp}
@larger[@larger{Coding for Star Wars Fans}]

@starwars-badges

@table-of-contents[]

@section{Intro Katas}
@(render code-of-awesomeness-katas)
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

@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-starwars)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section battlearena-starwars/scribblings/assets-library)