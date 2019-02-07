#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          )

@title{Starwars Battle Arena}

These @(~a (length (kata-collection-katas katas))) katas pertain to @racket[battle-arena-starwars].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[ (require ts-battle-arena-starwars/katas)]


@table-of-contents[]

@section{Hero Katas}

@(render hero-katas)

@section{Enemy Katas}

@(render enemy-katas)

@section{Enemy Weapon Katas}

@(render enemy-weapon-katas)

@section{Lightsaber Katas}

@(render lightsaber-katas)

@section{Blaster Katas}

@(render blaster-katas)

@section{Planet Katas}

@(render planet-katas)

@section{Heal Katas}

@(render heal-katas)

@section{Boost Katas}

@(render boost-katas)

@;(render magic-balance-katas)
@;(render melee-balance-katas)
@;(render repeater-balance-katas)
@;(render spear-tower-katas)
@;(render repeater-tower-katas)
@;(render dagger-tower-katas)
@;(render single-shot-katas)
@;(render spread-shot-katas)
@;(render homing-repeater-katas)
@;(render grow-katas)
@;(render shield-katas)
@;(render spike-mine-katas)
@;(render lava-katas)
@;(render rocket-tower-katas)
@;(render repeater-armor-katas)
@;(render sword-armor-katas)