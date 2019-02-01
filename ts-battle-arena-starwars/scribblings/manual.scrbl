#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          )

@title{TS Starwars Battle Arena}

These @(~a (length (kata-collection-katas katas))) katas pertain to @racket[battle-arena-starwars].
They can be browsed in various ways using the table of contents below.

To use these katas in another collection do:

@racketblock[
             (require ts-battle-arena-starwars/katas)
 ]


@table-of-contents[]

@section{Hero Katas}

@(render hero-katas)
@(render avatar-katas)

@section{Enemy Katas}

@(render enemy-katas)

@section{Enemy Weapon Katas}

@(render enemy-weapon-katas)

@section{Spear Katas}

@(render spear-katas)

@section{Sword Katas}

@(render sword-katas)

@section{Paint Thrower Katas}

@(render paint-thrower-katas)

@section{Magic Balance Katas}

@(render magic-balance-katas)

@section{Melee Balance Katas}

@(render melee-balance-katas)

@section{Repeater Balance Katas}

@(render repeater-balance-katas)

@section{Spear Tower Katas}

@(render spear-tower-katas)

@section{Repeater Tower Katas}

@(render repeater-tower-katas)

@section{Dagger Tower Katas}

@(render dagger-tower-katas)

@section{Single Shot Katas}

@(render single-shot-katas)

@section{Spread Shot Katas}

@(render spread-shot-katas)

@section{Homing Repeater Katas}

@(render homing-repeater-katas)

@section{Grow Katas}

@(render grow-katas)

@section{Shield Katas}

@(render shield-katas)

@section{Boost Katas}

@(render boost-katas)

@section{Health Katas}

@(render health-katas)

@section{Spike Mine Katas}

@(render spike-mine-katas)

@section{Lava Katas}

@(render lava-katas)

@section{Rocket Tower Katas}

@(render rocket-tower-katas)

@section{Repeater Armor Katas}

@(render repeater-armor-katas)

@section{Sword Armor Katas}

@(render sword-armor-katas)