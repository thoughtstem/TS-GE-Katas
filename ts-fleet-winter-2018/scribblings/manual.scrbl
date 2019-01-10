#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
           "../katas.rkt"
           "../rendering.rkt"
           (except-in racket read))

@title{Game Design through Fortnite}

Game design is an art.  Two of the best ways
of learning that art are:

@itemlist[@item{Studying a great game (like Fortnite).}
          @item{Trying to build similar games.}]

Keep in mind, though, that great games (like Fortnite)
take many years and hundreds of talented people to make.

As a beginning programmer, you must remember that
you'll be able to make games like that @emph{one day}.
But you'll have to work your way up.  You'll have
to acquire new skills.  You'll have to practice.
You'll have to work hard.

Take heart, though!

The road to learning the art of game design
is a beautiful road.  You'll start learning cool
things right away.  And even though you won't
be able to make Fortnite right away, you'll
be able to make cool things right away. 

Just keep practicing.  Keep taking joy in the things
you're able to make.  One day, you'll be able to
make games like Fortnite.  Or perhaps...
even better ones!

@table-of-contents[]



@include-section["materials.scrbl"]


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

