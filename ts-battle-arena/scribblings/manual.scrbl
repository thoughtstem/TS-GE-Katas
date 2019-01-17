#lang scribble/manual

@(require ts-kata-util/katas/rendering/scribble
          ts-kata-util/katas/main
           "../katas.rkt"
           "../rendering.rkt"
           (except-in racket read do))

@title{Battle Arena Katas}

These @(~a (length (kata-collection-katas battle-arena-katas))) katas pertain to @racket[battle-arena].
They can be browsed in various ways using the table of contents below.

@racketblock[
             (require ts-battle-arena/katas)
 ]


@table-of-contents[]

@section{Balance Katas}

@(scribblify-collection
  (merge-collections magic-balance-katas
                     melee-balance-katas
                     repeater-balance-katas))

@section{Tower Katas}

@(scribblify-collection
  (merge-collections spear-tower-katas
                     dagger-tower-katas
                     repeater-tower-katas))

@section{Defensive Base Katas}

@(scribblify-collection
  (merge-collections spike-mine-katas
                     lava-katas
                     spear-tower-katas))

@section{Armor Katas}

@(scribblify-collection
  (merge-collections repeater-armor-katas
                     sword-armor-katas
                     enemy-weapon-katas))

@section{Ranged Weapon Katas}

@(scribblify-collection
  (merge-collections single-shot-katas
                     spread-shot-katas
                     homing-repeater-katas))

@section{Melee Weapon Katas}

@(scribblify-collection
  (merge-collections spear-katas
                     sword-katas
                     paint-thrower-katas))
         

@section{Avatar Katas}

@(scribblify-collection avatar-katas)

@section{Enemy Katas}

@(scribblify-collection enemy-katas)

@section{Magic Balance Katas}

@(scribblify-collection magic-balance-katas)

@section{Melee Balance Katas}

@(scribblify-collection melee-balance-katas)

@section{Repeater Balance Katas}

@(scribblify-collection repeater-balance-katas)

@section{Spear Katas}

@(scribblify-collection spear-katas)

@section{Sword Katas}

@(scribblify-collection sword-katas)

@section{Paint Thrower Katas}

@(scribblify-collection paint-thrower-katas)

@section{Spear Tower Katas}

@(scribblify-collection spear-tower-katas)

@section{Repeater Tower Katas}

@(scribblify-collection repeater-tower-katas)

@section{Dagger Tower Katas}

@(scribblify-collection dagger-tower-katas)

@section{Single Shot Katas}

@(scribblify-collection spear-tower-katas)

@section{Spread Shot Katas}

@(scribblify-collection repeater-tower-katas)

@section{Homing Repeater Katas}

@(scribblify-collection dagger-tower-katas)

@section{All Katas}

@(scribblify-collection battle-arena-katas)

