#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
           "../katas.rkt"
           "../rendering.rkt"
           ts-kata-util
           (except-in racket read do))

@title{Battle Arena Katas}

These @(~a (length (kata-collection-katas battle-arena-katas))) katas pertain to @racket[battlearena].
They can be browsed in various ways using the table of contents below.

@racketblock[
             (require ts-battle-arena/katas)
 ]


@table-of-contents[]

@section{Intro Katas}

@(scribblify-collection hello-world-katas)

@section{Avatar Katas}

@(scribblify-collection avatar-katas)

@section{Enemy Katas}

@(scribblify-collection enemy-katas)

@section{Enemy Weapon Katas}

@(scribblify-collection enemy-weapon-katas)

@section{Spear Katas}

@(scribblify-collection spear-katas)

@section{Sword Katas}

@(scribblify-collection sword-katas)

@section{Fire Magic Katas}

@(scribblify-collection fire-magic-katas)

@section{Ice Magic Katas}

@(scribblify-collection ice-magic-katas)

@section{Paint Thrower Katas}

@(scribblify-collection paint-thrower-katas)

@section{Background Katas}

@(scribblify-collection background-katas)

@section{Level Design Katas}

@(scribblify-collection level-design-katas)

@section{Magic Balance Katas}

@(scribblify-collection magic-balance-katas)

@section{Melee Balance Katas}

@(scribblify-collection melee-balance-katas)

@section{Repeater Balance Katas}

@(scribblify-collection repeater-balance-katas)

@section{Spear Tower Katas}

@(scribblify-collection spear-tower-katas)

@section{Repeater Tower Katas}

@(scribblify-collection repeater-tower-katas)

@section{Dagger Tower Katas}

@(scribblify-collection dagger-tower-katas)

@section{Single Shot Katas}

@(scribblify-collection single-shot-katas)

@section{Spread Shot Katas}

@(scribblify-collection spread-shot-katas)

@section{Homing Repeater Katas}

@(scribblify-collection homing-repeater-katas)

@section{Size Katas}

@(scribblify-collection size-katas)

@section{Shield Katas}

@(scribblify-collection shield-katas)

@section{Boost Katas}

@(scribblify-collection boost-katas)

@section{Health Katas}

@(scribblify-collection health-katas)

@section{Force Field Katas}

@(scribblify-collection force-field-katas)

@section{Spike Mine Katas}

@(scribblify-collection spike-mine-katas)

@section{Lava Pit Katas}

@(scribblify-collection lava-pit-katas)

@section{Rocket Tower Katas}

@(scribblify-collection rocket-tower-katas)

@section{Repeater Armor Katas}

@(scribblify-collection repeater-armor-katas)

@section{Sword Armor Katas}

@(scribblify-collection sword-armor-katas)

@(include-section battlearena/scribblings/assets-library)

