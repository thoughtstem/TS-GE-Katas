#lang scribble/manual


@(require ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fortnite Summer Camp}
@larger[@larger{Coding for Fortnite Fans}]

@fortnite-badges

@table-of-contents[]

@section{Intro Katas}
@(render code-of-awesomeness-katas)
@(render hello-world-katas)

@section{Avatar Katas}
@(render avatar-katas)

@section{Enemy Katas}
@(render selected-enemy-katas)

@section{Weapon Katas}
@(render selected-weapon-katas)

@section{Power-Up Katas}
@(render powerup-katas)

@section{Tower Katas}
@(render selected-tower-katas)

@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-fortnite)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section battlearena-fortnite/scribblings/assets-library)