#lang scribble/manual

@title{Game Show}

Use these questions during Game Show time. You can ask any/all the questions in each day's section.

@section{Monday}

@itemlist[@item{@bold{What keys make your character move?}
                    @itemlist[@item{@italic{Arrow keys.}}]}
          @item{@bold{What is the keyword to add a character to your game?}
                    @itemlist[@item{@italic{#:pokemon}}]}
          @item{@bold{What is the keyword to change what your character looks like?}
                    @itemlist[@item{@italic{#:sprite}}]}
          @item{@bold{Name 3 available character sprites.}
                    @itemlist[@item{@italic{Anything from the Assets Library.}}]}
          @item{@bold{What is the default speed value?}
                    @itemlist[@item{@italic{10.}}]}]


@section{Tuesday}

@itemlist[@item{@bold{How many food items will show up in the game when you use (custom-food)?}
                    @itemlist[@item{@italic{1.}}]}
          @item{@bold{By default the food item will heal you by:}
                    @itemlist[@item{@italic{10.}}]}
          @item{@bold{What line of code can you add to your food so that they don't reappear in the game once you eat them?}
                    @itemlist[@item{@italic{#:respawn? #f.}}]}
          @item{@bold{Name 3 keywords available to customize the food.}
                    @itemlist[@item{@italic{#:sprite, #:name, #:amount-in-world, #:heals-by, #:respawn?.}}]}
          @item{@bold{Name 3 available food sprites.}
                    @itemlist[@item{@italic{Anything from the Assets Library.}}]}]

@section{Wednesday}

@itemlist[@item{@bold{What is the keyword to add enemies?}
                    @itemlist[@item{@italic{#:trainer-list}}]}
          @item{@bold{What does AI stand for?}
                    @itemlist[@item{@italic{Artificial Intelligence.}}]}
          @item{@bold{What is the keyword to change the number of enemies in the game?}
                    @itemlist[@item{@italic{#:amount-in-world}}]}
          @item{@bold{What are the names of the 2 most infmaous team rocket members?}
                    @itemlist[@item{@italic{Jesse and James.}}]}
          @item{@bold{What line of code can you add to your trainer to make them only apper in night-time?}
                    @itemlist[@item{@italic{#:night-only? #t.}}]}]

@section{Thursday}

@itemlist[@item{@bold{What is the keyword to add a crafter to your list?}
                    @itemlist[@item{@italic{#:crafter-list}}]}
          @item{@bold{What does the crafter need to make products? What is the keyword?}
                    @itemlist[@item{@italic{A recipe, #:recipe-list}}]}
          @item{@bold{Name the 3 keywords needed for a recipe.}
                    @itemlist[@item{@italic{#:product, #:build-time, #:ingredients}}]}
          @item{@bold{Name 2 of the provided recipes in the game.}
                    @itemlist[@item{@italic{carrow-stew-recipe, fish-stew-recipe.}}]}
          @item{@bold{What are the 2 keywords that you can give a crafter to change where it appears in the game?}
                    @itemlist[@item{@italic{#:position, #:tile.}}]}]