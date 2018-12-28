#lang scribble/manual

@(require 2htdp/image)

@title{Documentation}

All games at the next Scholastic Game Jam will be launched with the same
function:

@racketblock[
             (survival-game)
             ]

This alone doesn't do anything interesting.  It just creates a "game"
with no characters, no food, no NPCs -- nothing really, except a green
background:

@(rectangle 480 360 'solid 'darkgreen)

Contestants will build atop this basic "game" during the Game Jam for
one hour after the prompt is announced.
The resulting games are what will be judged during Game Jam.

Note that every time you run @racket[(survival-game ...)], you will
also get (in the interations window) an estimated score card for your
game:

@(require "../scoring/scoresheet.rkt" racket)
@(scoresheet)

Running @racket[(survival-game)] with no parameters produces an empty
score sheet.

<Game jam flier?>

<API for Scoring a game?>



@section{Avatar - @italic{Docs}}

@defproc[(basic-avatar [appearance (or/c image? animated-sprite?) #f])
         entity?]{
  Returns an avatar entity with health bar and inventory already setup.

  In its simplest form, you can add a basic avatar to the game like this:

  @racketblock[
               (survival-game
                #:avatar (custom-avatar))
  ]

  With a more complex form, you can declare that the avatar should look
  like a blue square:

  @racketblock[
               (survival-game
                #:avatar (custom-avatar #:sprite (square 50 'solid 'blue)))
  ]

 You can also specify that the avatar should use an animation -- i.e.
 to give the avatar a walking animation.

 To make an animation, you must convert a still image to a collection of
 animation frames:

  @racketblock[
               (define (my-still-image)
                 (random-character-row))
               
               (define (my-animation)
                 (row->animation (my-still-image)))
               
               (survival-game
                #:avatar (custom-avatar #:sprite (my-animation)))
  ]

  Note the 3 step process above.  It is a common pattern:

  @itemlist[@item{First declare a still image.  This can be any image
             with a collection of animation frames arranged in a row.}
            @item{Then convert the still image into an animation with
              @racket[row->animation].}
            @item{Then start a new @racket[survival-game] with an avatar
              that uses that animation.}]
}

=======

Coming soon:

Food

Coins

NPC

Recipes