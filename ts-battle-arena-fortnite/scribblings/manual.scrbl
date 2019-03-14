#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Battle Arena Fortnite}

These @(~a (length (kata-collection-katas katas))) katas pertain to @racket[battlearena-fortnite].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[ (require ts-battle-arena-fortnite/katas)]


@table-of-contents[]

@section{Intro Katas}
@(render hello-world-katas)

@section{Hero Katas}
@(render hero-katas)

@section{Enemy Katas}
@(render enemy-katas)

@section{Enemy Weapon Katas}
@(render enemy-weapon-katas)

@section{Weapon Katas}
@(render weapon-katas)

@section{Background Katas}
@(render background-katas)

@section{Health Katas}
@(render health-katas)

@section{Boost Katas}
@(render boost-katas)

@section{Shield Katas}
@(render shield-katas)

@section{Force Field Katas}
@(render force-field-katas)

@section{Lava Pit Katas}
@(render lava-pit-katas)

@section{Spike Mine Katas}
@(render spike-mine-katas)


@(include-section battlearena-fortnite/scribblings/assets-library)