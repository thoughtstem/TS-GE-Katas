#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          )

@title{Battle Arena Star Wars}

These @(~a (length (kata-collection-katas katas))) katas pertain to @racket[battle-arena-starwars].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[ (require ts-battle-arena-starwars/katas)]


@table-of-contents[]

@section{Intro Katas}

@(render hello-world-katas)

@section{Hero Katas}

@(render hero-katas)

@section{Villain Katas}

@(render villain-katas)

@section{Villain Weapon Katas}

@(render villain-weapon-katas)

@section{Lightsaber Katas}

@(render lightsaber-katas)

@section{Blaster Katas}

@(render blaster-katas)

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

@section{Lightsaber Droid Katas}

@(render lightsaber-droid-katas)

@section{Blaster Droid Katas}

@(render blaster-droid-katas)

@section{Lightsaber Armor Katas}

@(render lightsaber-armor-katas)

@section{Blaster Armor Katas}

@(render blaster-armor-katas)

@section{Lava Pit Katas}

@(render lava-pit-katas)

@section{Spike Mine Katas}

@(render spike-mine-katas)

@(include-section battle-arena-starwars/scribblings/assets-library)