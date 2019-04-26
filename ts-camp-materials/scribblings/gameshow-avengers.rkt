#lang scribble/manual

@title{Game Show}

Use these questions during Game Show time. You can ask any/all the questions in each day's section.

@section{Monday}

@itemlist[@item{@bold{What keys make your character move?}
                    @itemlist[@item{@italic{WASD keys.}}]}
          @item{@bold{What is the keyword to add a character to your game?}
                    @itemlist[@item{@italic{#:hero}}]}
          @item{@bold{What is the keyword to change what your character looks like?}
                    @itemlist[@item{@italic{#:sprite}}]}
          @item{@bold{Name 3 available character sprites.}
                    @itemlist[@item{@italic{Anything from the Assets Library.}}]}
          @item{@bold{What is the default speed value?}
                    @itemlist[@item{@italic{10.}}]}]


@section{Tuesday}

@itemlist[@item{@bold{What is the keyword to change the background of the game?}
                    @itemlist[@item{@italic{#:planet}}]}
          @item{@bold{Name 3 of the available background images.}
                    @itemlist[@item{@italic{FOREST-BG, SNOW-BG, DESERT-BG, LAVA-BG, PINK-BG}}]}
          @item{@bold{What are the 2 keyword to change the number of tiles in the game (size of the background)?}
                    @itemlist[@item{@italic{#:rows, #:columns.}}]}
          @item{@bold{What line of code can you add to make objects appear? in your world?}
                    @itemlist[@item{@italic{Add this line to your main game function: #:enable-world-objects? #t}}]}
          @item{@bold{What does HD stand for when referring to images?}
                    @itemlist[@item{@italic{High Definition.}}]}]

@section{Wednesday}

@itemlist[@item{@bold{What is the keyword to add enemies?}
                    @itemlist[@item{@italic{#:villain-list}}]}
          @item{@bold{What does AI stand for?}
                    @itemlist[@item{@italic{Artificial Intelligence.}}]}
          @item{@bold{What is the keyword to change the number of enemies in the game?}
                    @itemlist[@item{@italic{#:amount-in-world}}]}
          @item{@bold{What are the 3 levels of AI?}
                    @itemlist[@item{@italic{'easy, 'medium, 'hard.}}]}
          @item{@bold{What does USB stand for?}
                    @itemlist[@item{@italic{Universal Serial Bus.}}]}]

@section{Thursday}

@itemlist[@item{@bold{What is the keyword to add weapons in the game?}
                    @itemlist[@item{@italic{#:power-list}}]}
          @item{@bold{Name 3 of the 5 rarity levels.}
                    @itemlist[@item{@italic{’common, ’uncommon, ’rare, ’epic, ’legendary.}}]}
          @item{@bold{What is the function to change what the weapon's pickup crate looks in the game?}
                    @itemlist[@item{@italic{(make-icon ... ... ...)}}]}
          @item{@bold{Name the 4 available powers in the language.}
                    @itemlist[@item{@italic{energy-blast, star-bit, magic-orb, and hammer, in extras: lava pit and spike mine}}]}
          @item{@bold{Name 2 of the fire modes available for the powers.}
                    @itemlist[@item{@italic{'normal, 'random, 'spread, 'homing.}}]}]
