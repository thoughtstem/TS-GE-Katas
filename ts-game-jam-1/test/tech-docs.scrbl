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



@section{Avatar - @italic{API}}

@defproc[(custom-avatar [appearance (or/c image? animated-sprite?) #f])
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
                 (sheet->sprite (my-still-image)
                                #:columns 4))
               
               (survival-game
                #:avatar (custom-avatar #:sprite (my-animation)))
  ]

  Note the 3 step process above.  It is a common pattern:

  @itemlist[@item{First declare a still image.  This can be any image
             with a collection of animation frames arranged in a row.}
            @item{Then convert the still image into an animation with
              @racket[sheet->sprite].}
            @item{Then start a new @racket[survival-game] with an avatar
              that uses that animation.}]

 @racket[(custom-avatar)] has the following customizable components:
 @itemlist[@item{@racket[#:sprite (circle 10 'solid 'red)] -- }
           @item{@racket[#:position   [p   (posn 100 100)]]}
           @item{@racket[#:speed      [spd 10]]}
           @item{@racket[#:key-mode   [key-mode 'arrow-keys]]}
           @item{@racket[#:mouse-aim? [mouse-aim? #f]]}
           @item{@racket[#:components [c #f]]}]

}

@; ------ Coin ------
@section{Coin - @italic{API}}

@defproc[(custom-coin ...) ]{
 @racket[(custom-coin #:entity           (coin-entity)
                      #:sprite           (star 20 'solid 'red)
                      #:position         (posn 100 100)
                      #:name             "ruby coin"
                      #:tile             2
                      #:amount-in-world  10
                      #:value            10
                      #:respawn?         #t
                      #:components       #f)]
}

Example:
 @racketblock[
 (define (ruby-coin)
   (custom-coin #:sprite           (star 20 'solid 'red)
                #:name             "ruby coin"
                #:amount-in-world  10
                #:value            10))

 (survival-game
  #:avatar    (custom-avatar)
  #:coin-list (list (ruby-coin)))]

@; ------ Food ------
@section{Food - @italic{API}}

@defproc[(custom-food ...)]{
 @racket[(custom-food #:entity          (carrot-entity)
                      #:sprite          (circle 20 'solid 'brown)
                      #:position        (posn 100 100)
                      #:name            "carrot"
                      #:tile            4
                      #:amount-in-world 5
                      #:heals-by        10
                      #:respawn?        #t
                      #:components      #f)]
}

Example:
 @racketblock[
 (define (choco-food)
   (custom-food #:sprite          (square 20 'solid 'brown)
                #:name            "chocolate"
                #:tile            4
                #:amount-in-world 5
                #:heals-by        10))

 (survival-game
  #:avatar    (custom-avatar)
  #:food-list (list (choco-food)))]

@; ------ NPC ------
@section{NPC - @italic{API}}

@defproc[(custom-npc ...) ]{
 @racket[(custom-npc #:sprite     (sheet->sprite (random-character-row) #:column 4)
                     #:position   (posn 0 0)
                     #:name       "Andy"
                     #:tile       0
                     #:dialog     #f
                     #:mode       'wander
                     #:game-width 480
                     #:speed      2
                     #:target     "player"
                     #:sound      #t
                     #:scale      1
                     #:components #f)]
}

Example:
 @racketblock[
 (define (john-doe)
   (custom-npc #:name   "John Doe"
               #:tile   0
               #:dialog (list "Hello!"
                               "I'm busy right now."
                               "Bye!")
               #:mode   'wander))

 (survival-game
  #:avatar   (custom-avatar)
  #:npc-list (list (john-doe)))]

@; ------ Crafter ------
@section{Crafter - @italic{API}}

@defproc[(custom-crafter ...) ]{
 @racket[(custom-crafter #:position   (posn 100 100)
                         #:tile       7
                         #:name       "cauldron"
                         #:sprite     cauldron-sprite
                         #:menu       default-crafting-menu
                         #:components #f)]
}

Example:
@racketblock[
 (define (cooked-carrot)
   (custom-food #:sprite   (triangle 20 'solid 'orange)
                #:name     "Cooked Carrot"
                #:heals-by 20
                #:respawn? #f))
 
 (define cooked-carrot-recipe
   (recipe #:product     (cooked-carrot)
           #:build-time  10
           #:ingredients (list "Carrot")
           ))
              
 (define (my-cauldron)
   (custom-crafter #:position (posn 100 100)
                   #:tile     7
                   #:name     "cauldron"
                   #:sprite   cauldron-sprite
                   #:menu     (crafting-menu-set!
                               #:recipes cooked-carrot-recipe)))

 (survival-game
  #:avatar       (custom-avatar)
  #:food-list    (list (custom-food)
                       (cooked-carrot))
  #:crafter-list (list (my-cauldron)))]

@; ------ Background ------
@section{Background - @italic{API}}

@defproc[(custom-background ...) ]{
 @racket[(custom-background #:bg-img     FOREST-BG
                            #:rows       3
                            #:columns    3
                            #:start-tile 0
                            #:components #f)]
}