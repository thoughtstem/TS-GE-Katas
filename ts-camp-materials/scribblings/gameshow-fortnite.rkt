#lang scribble/manual

@title{Game Show}

Use these questions during Game Show time. You can ask any/all the questions in each day's section.

@section{Monday}

@itemlist[@item{@bold{What keys make your character move?}
                    @itemlist[@item{@italic{WASD keys.}}]}
          @item{@bold{What is the keyword to add a character to your game?}
                    @itemlist[@item{@italic{#:avatar}}]}
          @item{@bold{What is the keyword to change what your character looks like?}
                    @itemlist[@item{@italic{#:sprite}}]}
          @item{@bold{Name 3 available character sprites.}
                    @itemlist[@item{@italic{Anything from the Assets Library.}}]}
          @item{@bold{What is the default speed value?}
                    @itemlist[@item{@italic{10.}}]}]


@section{Tuesday}

@itemlist[@item{@bold{What is the keyword to add enemies?}
                    @itemlist[@item{@italic{#:enemy-list}}]}
          @item{@bold{What does AI stand for?}
                    @itemlist[@item{@italic{Artificial Intelligence.}}]}
          @item{@bold{What is the keyword to change the number of enemies in the game?}
                    @itemlist[@item{@italic{#:amount-in-world}}]}
          @item{@bold{Name the 4 Fortnite character classes.}
                    @itemlist[@item{@italic{Commando, Ninja, Outlander, and Constructor.}}]}
          @item{@bold{Name the 3 Fortnite Game Modes.}
                    @itemlist[@item{@italic{Save the World, Battle Royale, and Creative.}}]}]

@section{Wednesday}

@itemlist[@item{@bold{Name 3 of the 5 weapon rarity levels.}
                    @itemlist[@item{@italic{’common, ’uncommon, ’rare, ’epic, ’legendary.}}]}
          @item{@bold{What is the function to change what the weapon's pickup crate looks in the game?}
                    @itemlist[@item{@italic{(make-icon ... ... ...)}}]}
          @item{@bold{Name 3 of the available weapons in the language.}
                    @itemlist[@item{@italic{sword, spear, fire-magic, ring-of-fire, ring-of-blades, in extras: lava pit, spike mine, dagger tower, rocket tower.}}]}
          @item{@bold{Name 2 of the fire modes available for the weapons.}
                    @itemlist[@item{@italic{'normal, 'random, 'spread, 'homing.}}]}
          @item{@bold{Tell me a keyboard shortcut; a combination of keys.}
                    @itemlist[@item{@italic{CTRL + C, CTRL + V, CTRL + X, CTRL + A, CTRL + Z, CTRL + Y.}}]}]

@section{Thursday}

@itemlist[@item{@bold{What is the keyword to add power-ups to the game?}
                    @itemlist[@item{@italic{#:item-list}}]}
          @item{@bold{Name 2 types of power-ups.}
                    @itemlist[@item{@italic{health, shield, boost, size.}}]}
          @item{@bold{What is the keyword used to trigger the effect of your item?}
                    @itemlist[@item{@italic{#:on-use}}]}
          @item{@bold{What is the difference between change-health-by and set-health-to?}
                    @itemlist[@item{@italic{change-health-by adds the number you provide to your current health,
                                           set-health-to sets your health to the number you provide; regardless of your current health.}}]}
          @item{@bold{What are the 3 parameters (inputs) that the function (make-icon . . .) can take?}
                    @itemlist[@item{@italic{The first one is a string like "HP", those will be the letters that show up on the square (this one is required).
                                           The second one is a color like 'red, that will be the color of the square (this one is optional).
                                           The third ons is also a color like 'blue, that will be the color of the letters (this one is also optional).}}]}]