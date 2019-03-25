#lang scribble/manual


@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Fleet Camp Spring 2019 -- Day 5}
@larger[@larger{Coding for Fortnite Fans}]

This is your resource for your @bold{Coding for Fortnite Fans}
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

@section{Avatar Katas}
@(render avatar-katas)

@section{Enemy Katas}
@(render enemy-katas)

@section{Weapon Katas}
@(render selected-weapon-katas)

@section{Power-Up Katas}
@(render powerup-katas)

@section{Armor Katas}
@(render selected-armor-katas)


@(include-section ts-camp-materials/scribblings/full-day-schedule)
@(include-section ts-camp-materials/scribblings/one-day-materials)


@section{Extra Katas}
@(render background-katas)
@(render level-design-katas)
@;(render health-katas)
@;(render boost-katas)
@(render size-katas)
@(render force-field-katas)
@(render lava-pit-katas)
@(render spike-mine-katas)

@(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section battlearena-fortnite/scribblings/assets-library)
