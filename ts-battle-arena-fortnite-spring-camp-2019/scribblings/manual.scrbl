#lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day 5}
@larger[@larger{Coding for Fornite Fans}]

 
@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@section{Hero Katas}
@(render hero-katas)

@section{Enemy Katas}
@(render enemy-katas)

@section{Weapon Katas}
@(render selected-weapon-katas)

@section{Enemy Weapons Katas}
@(render enemy-weapon-katas)

@section{Background Katas}
@(render background-katas)

@(include-section ts-camp-materials/scribblings/full-day-schedule)
@(include-section ts-camp-materials/scribblings/one-day-materials)


@section{Extra Katas}
@(render level-design-katas)
@(render health-katas)
@(render boost-katas)
@(render shield-katas)
@(render force-field-katas)
@(render armor-katas)
@(render lava-pit-katas)
@(render spike-mine-katas)

@(include-section battlearena-fortnite/scribblings/assets-library)
