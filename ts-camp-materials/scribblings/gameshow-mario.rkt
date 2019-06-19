#lang scribble/manual

@title{Game Show}

Use these questions during Game Show time. You can ask any/all the questions in each day's section.

@section{Monday}

@itemlist[@item{@bold{What keys make your character move?}
                    @itemlist[@item{@italic{Arrow keys.}}]}
          @item{@bold{What is the keyword to add a character to your game?}
                    @itemlist[@item{@italic{#:character}}]}
          @item{@bold{What is the keyword to change what your character looks like?}
                    @itemlist[@item{@italic{#:sprite}}]}
          @item{@bold{Name 3 available character sprites.}
                    @itemlist[@item{@italic{Anything from the Assets Library.}}]}
          @item{@bold{What is the default speed value?}
                    @itemlist[@item{@italic{10.}}]}]


@section{Tuesday}

@itemlist[@item{@bold{How do you stop something from respawning?}
                    @itemlist[@item{@italic{#:respawn? #f}}]}
          @item{@bold{Name 3 properties of a coin in the game.}
                    @itemlist[@item{@italic{name, value, sprite, amount-in-world, respawn?, on-pickup, tile, cutscene.}}]}
          @item{@bold{What is the keyword to change how much a coin is worth?}
                    @itemlist[@item{@italic{#:value}}]}
          @item{@bold{Name a coin sprite.}
                    @itemlist[@item{@italic{gold-coin-sprite, silver-coin-sprite, copper-coin-sprite}}]}
          @item{@bold{What does HD stand for when referring to images?}
                    @itemlist[@item{@italic{High Definition.}}]}]

@section{Wednesday}

@itemlist[@item{@bold{How do you make something in the level High Definition?}
                    @itemlist[@item{@italic{#:hd? #t}}]}
          @item{@bold{What are the keywords to make a cutscene?}
                    @itemlist[@item{@italic{spawn page}}]}
          @item{@bold{How can you set the tile of entities in a level?}
                    @itemlist[@item{@italic{#:tile <tile-number>}}]}
          @item{@bold{Name a background that you've used.}
                    @itemlist[@item{@italic{FOREST-BG, PINK-BG, DESERT-BG, SNOW-BG, LAVA-BG.}}]}
          @item{@bold{What does USB stand for?}
                    @itemlist[@item{@italic{Universal Serial Bus.}}]}]

@section{Thursday}

@itemlist[@item{@bold{What is a fetch quest?}
                    @itemlist[@item{@italic{A quest where you have to find something and return it.}}]}
          @item{@bold{How can you give an NPC multiple quests?}
                    @itemlist[@item{@italic{#:quest-list (list <quest1> <quest2> ... <questn>)}}]}
          @item{@bold{Why is defining things outside of the game function considered good code?}
                    @itemlist[@item{@italic{It makes your code easier to read and understand.}}]}
          @item{@bold{How can you stop a cutscene from happening?}
                    @itemlist[@item{@italic{With the #:rule keyword}}]}
          @item{@bold{What keyword does every fetch quest need?}
                    @itemlist[@item{@italic{#:item}}]}]
