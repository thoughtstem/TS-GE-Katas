#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

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

@(sections-for kata-section
               avatar-katas
               enemy-katas
               spear-katas
               sword-katas
               paint-thrower-katas
               magic-balance-katas
               melee-balance-katas
               repeater-balance-katas
               lava-katas
               spike-mine-katas
               spear-tower-katas
               enemy-weapon-katas
               repeater-armor-katas
               sword-armor-katas
               rocket-tower-katas
               repeater-tower-katas
               dagger-tower-katas
               single-shot-katas
               spread-shot-katas
               homing-repeater-katas
               grow-katas
               health-katas
               boost-katas
               shield-katas
               )

@include-section["EGJ-armor-only.scrbl"]
@include-section["EGJ-range-only.scrbl"]
@include-section["EGJ-potions-only.scrbl"]
