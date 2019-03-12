#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Battle Arena Avengers}

These @(~a (length (kata-collection-katas katas))) katas pertain to @racket[battlearena-avengers].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[ (require ts-battle-arena-avengers/katas)]


@table-of-contents[]

@section{Intro Katas}

@(render hello-world-katas)

@section{Hero Katas}

@(render hero-katas)

@section{Villain Katas}

@(render villain-katas)

@section{Villain Power Katas}

@(render villain-power-katas)

@section{Power Katas}

@(render power-katas)

@section{Planet Katas}

@(render planet-katas)

@section{Health Katas}

@(render health-katas)

@section{Boost Katas}

@(render boost-katas)

@section{Shield Katas}

@(render shield-katas)

@section{Force Field Katas}

@(render force-field-katas)

@section{Droid Katas}

@(render droid-katas)

@section{Armor Katas}

@(render armor-katas)

@section{Lava Pit Katas}

@(render lava-pit-katas)

@section{Spike Mine Katas}

@(render spike-mine-katas)

@(include-section battlearena-avengers/scribblings/assets-library)