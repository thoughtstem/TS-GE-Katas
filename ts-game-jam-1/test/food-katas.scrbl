#lang scribble/manual

@title{Food Katas - @italic{(Day 4)}}

@(require 2htdp/image)
@(require ts-game-jam-1)


@(define (meta-kata)     (circle 10 'outline 'black))
@(define (food-kata)     (circle 10 'solid   'pink))

@section{Paper Food Kata}

To earn this kata @(meta-kata) they need to:

@italic{Recite the amount of points they get from food items in their game, in less than 1 minute.}

@itemlist[@item{Food points:   
           @itemlist[@item{Each food item                    @bold{1 point, max 10}}
                     @item{Any food within 15 minutes
                                 @italic{(Sprint Bonus)      @bold{5 points}}}
                     @item{For each food item matching theme @bold{1 point, max 10}}]}]

@; ------ FOOD BRONZE

@section{Bronze Food Kata}

To earn this kata @(food-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, and a food item.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (custom-food #:amount-in-world 10)))}

@; ------ FOOD SILVER

@section{Silver Food Kata}

To earn this kata @(food-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, and a food that heals by 20 points.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-food)
  (custom-food #:amount-in-world 2
               #:heals-by        20))
 
 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (my-food)))}

@; ------ FOOD GOLD

@section{Gold Food Kata}

@margin-note*{Students should run the function (show-food-sprites) on the interactions window to
 see a list of food sprites.}

To earn this kata @(food-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, and a food item with a custom sprite,
 name, amount in world, and healing power.}

@margin-note*{Teaching Tip: Remember, the order of the keywords does not matter.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-food)
  (custom-food #:sprite          apple-sprite
               #:name            "apple food"
               #:amount-in-world 2
               #:heals-by        20))

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (my-food)))}



@; ------ FOOD PLATINUM

@section{Platinum Food Kata}

@margin-note*{Teaching Tip: Remember, there is no number of "required" katas by day.}

To earn this kata @(food-kata) they need to:

Within ten minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, and more than one food item with a custom
 sprite, name, amount in world, healing power, and respawn value.}

@margin-note*{Teaching Tip: Any mix of keywords here is okay, as long as they
 all have the required sprite and name, and at least one of them does not respawn.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-food)
  (custom-food #:sprite          apples-sprite
               #:name            "apple"
               #:amount-in-world 2
               #:heals-by        20))

 (define (special-food)
  (custom-food #:sprite          salad-sprite
               #:name            "salad food"
               #:amount-in-world 1
               #:heals-by        50
               #:respawn?        #f))

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (my-food)
                     (special-food)))}