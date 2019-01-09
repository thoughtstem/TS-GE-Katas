#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@(require 2htdp/image)

@;====== PRACTICE JAM KATAS =======
@title{Practice Game Jam Katas}@; - @italic{(Day 7)}}


@; ------ PRACTICE JAM

@game-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Game Jam"
               #:time-limit 25
               #:dollars 1]{

 @side-note["Tip"]{Students should start coding this first and then they can customize their game.}

 @(to-earn-this-code-kata #:english    "Code a simple survival game."
                          #:lang       'survival
                          #:code       'game-jam-1
                          #:badge-type @META-KATA)
}

If they complete this in less than 25 minutes during game jam they would
earn the following number of points:

@itemlist[@item{Avatar:  @bold{+1} Having an avatar 
           @bold{+5} in less than 5 minutes 
           @bold{= 6 points.}} 
          @item{Coin:    @bold{+1} Having a coin 
           @bold{+5} in less than 10 minutes  
           @bold{= 6 points.}} 
          @item{Food:    @bold{+1} Having a food item 
           @bold{+5} in less than 15 minutes
           @bold{= 6 points.}} 
          @item{Enemy:     @bold{+1} Having an Enemy  
           @bold{+5} in less than 20 minutes
           @bold{= 6 points.}} 
          @item{Crafter: @bold{+1} Having a crafter 
           @bold{+5} in less than 25 minutes
           @bold{= 6 points.}}
          @item{@bold{Total so far: @italic{+30} points.} }]

@; ------ CUSTOMIZE AVATAR

@section{Avatar Practice}

To earn this kata @AVATAR-KATA they need to:

@italic{Customize their avatar.}

@(define (running-guy) (bitmap "imgs/running-guy.png"))

@side-note["Score"]{Avatar:  @bold{+4} for animation frames @italic{(1 point per frame)}.}

@racketblock[
 (define (my-avatar)
   (custom-avatar #:sprite (sheet->sprite #,(running-guy)
                                          #:columns 4)))]

@; ------ CUSTOMIZE COIN

@section{Coin Practice}

To earn this kata @COIN-KATA they need to:

@italic{Code and customize additional coins.}

@side-note["Score"]{{Coin:  @bold{+2} for coins, @bold{+3} for coins matching theme}}

@racketblock[
 
 (define (red-coin)
   (custom-coin #:sprite (circle 5 'solid 'red)
                #:name "red coin"
                #:amount-in-world 6
                #:value 20
                ))

 (define (blue-coin)
   (custom-coin #:sprite (circle 5 'solid 'blue)
                #:name "blue coin"
                #:amount-in-world 4
                #:value 40
                ))

 (define (green-coin)
   (custom-coin #:sprite (circle 5 'solid 'green)
                #:name "green coin"
                #:amount-in-world 2
                #:respawn? #f
                #:value 60
                ))]

@; ------ CUSTOMIZE FOOD

@section{Food Practice}

To earn this kata @FOOD-KATA they need to:

@italic{Code and customize additional food items.}

@side-note["Score"]{Food:  @bold{+1} for food item, @bold{+2} for food items matching theme}

@racketblock[

 (define (pineapple)
   (custom-food #:sprite          (star 5 'solid 'yellow)
                #:name            "pineapple"
                #:heals-by        5
                #:amount-in-world 10))

 (define (mango)
   (custom-food #:sprite          (star 5 'solid 'orange)
                #:name            "mango"
                #:heals-by        50
                #:amount-in-world 1
                #:respawn?        #f))]

@; ------ CUSTOMIZE Enemy

@section{Enemy Practice Kata}

To earn this kata @ENEMY-KATA they need to:

@italic{Code and customize additional Enemies.}

@side-note["Score"]{Enemy:  @bold{+1} for an Enemy, @bold{+2} for Enemies matching theme}

@racketblock[

 (define (my-enemy-1)
   (custom-enemy #:ai              'easy
                 #:sprite          snake-sprite
                 #:amount-in-world 5))
 
 (define (my-enemy-2)
   (custom-enemy #:ai              'medium
                 #:sprite          bat-sprite
                 #:amount-in-world 2
                 #:weapon          (custom-weapon #:name "Acidtron"
                                                  #:dart (custom-dart #:damage 50
                                                                      #:speed  20))))]

@; ------ CUSTOMIZE CRAFTER

@section{Crafter Practice Kata}

To earn this kata @CRAFTER-KATA they need to:

@italic{Code and customize additional crafters.}

@side-note["Score"]{Food:  @bold{+2} for food item, @bold{+2} for food items matching theme.
         Crafter:  @bold{+1} for a crafter,  @bold{+3} for recipes, @bold{+3} for recipes matching theme}

@racketblock[

 (define (kiwi)
   (custom-food #:sprite (star 5 'solid 'brown)
                #:name "kiwi"
                #:heals-by 50
                ))

 (define (frozen-pineapple)
   (custom-food #:sprite (star 10 'solid 'yellow)
                #:name "frozen pineapple"
                #:heals-by 15
                ))

 (define kiwi-recipe
   (recipe #:product     (kiwi)
           #:build-time  5
           #:ingredients (list "pineapple" "mango")
           ))
 
 (define mango-recipe
   (recipe #:product     (mango)
           #:build-time  10
           #:ingredients (list "pineapple")
           ))

 (define frozen-pineapple-recipe
   (recipe #:product     (frozen-pineapple)
           #:build-time  15
           #:ingredients (list "pineapple")
           ))
 
 (define (oven-crafter)
   (custom-crafter #:menu (crafting-menu-set! #:recipes kiwi-recipe
                                              mango-recipe)
                   #:tile 1))

 (define (freezer-crafter)
   (custom-crafter #:menu (crafting-menu-set! #:recipes frozen-pineapple-recipe)
                   #:tile 2))]


@section{Complete (survival-game)}

This is what the @italic{(survival-game)} function would look like:

@racketblock[
 (survival-game
  #:avatar       (my-avatar)
  #:coin-list    (list (red-coin)
                       (blue-coin)
                       (green-coin))
  #:food-list    (list (pineapple)
                       (mango)
                       (kiwi)
                       (frozen-pineapple))
  #:enemy-list   (list (my-enemy-1)
                       (my-enemy-2))
  #:crafter-list (list (oven-crafter)
                       (freezer-crafter)))]
