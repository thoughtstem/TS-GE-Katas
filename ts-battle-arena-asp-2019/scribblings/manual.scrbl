#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          ts-kata-util/badge-maker/main
          ts-kata-util/kata-card/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          pict)

@title{Battle Arena Games}

@battlearena-badges

@table-of-contents[]

@section{Intro Katas}

@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@(sections-for kata-section
               avatar-katas
               enemy-katas)

@section{Weapon Katas}

@(render weapon-katas)

@section{Powerup Katas}

@(render powerup-katas)

@section{Level Design Katas}

@(render bg-and-level-design-katas)

@section{Extra Katas}
@(render repeater-armor-katas)
@(render sword-armor-katas)

@include-section["practice-game-jam.scrbl"]

@(include-section battlearena/scribblings/assets-library)

@section{Kata Card}

Full Size Kata Card design for this course:

@(kata-card)

To print -- Save image and print @bold{9 per page}.

