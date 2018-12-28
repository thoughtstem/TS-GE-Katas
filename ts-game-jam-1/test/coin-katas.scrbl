#lang scribble/manual

@title{Coin Katas - @italic{(Day 3)}}

@(require 2htdp/image)
@(require ts-game-jam-1)


@(define (meta-kata)     (circle 10 'outline 'black))
@(define (coin-kata)     (circle 10 'solid   'green))

@section{Paper Coin Kata}

To earn this kata @(meta-kata) they need to:

@italic{Recite the amount of points they get from coin items in their game, in less than 1 minute.}

@itemlist[@item{Coin points:   
           @itemlist[@item{Each coin item                    @bold{1 point, max 10}}
                     @item{Any coin within 10 minutes
                                 @italic{(Sprint Bonus)      @bold{5 points}}}
                     @item{For each coin item matching theme @bold{1 point, max 10}}]}]

@; ------ COIN BRONZE

@section{Bronze Coin Kata}

To earn this kata @(coin-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar and a coin.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin)))}

@; ------ COIN SILVER

@section{Silver Coin Kata}

To earn this kata @(coin-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar and a coin worth 500 points.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-coin)
  (custom-coin #:value 500))
 
 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (my-coin)))}

@; ------ COIN GOLD

@section{Gold Coin Kata}

@margin-note*{Students should run the function (show-coin-sprites) on the interactions window to
 see a list of coin sprites.}

To earn this kata @(coin-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar and a coin with a custom sprite,
 name, value, and amount in world.}

@margin-note*{Teaching Tip: The order of the keywords does not matter.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-coin)
  (custom-coin #:sprite          copper-coin-sprite
               #:name            "copper coin"
               #:value           500
               #:amount-in-world 20))

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (my-coin)))}


@; ------ COIN PLATINUM

@section{Platinum Coin Kata}

@margin-note*{Teaching Tip: As with any kata, there is not a "daily
 number of required katas", so you can always leave off a kata or return
 to it another day.}

To earn this kata @(coin-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, and more than one coin with a custom
 sprite, name, value, amount in world, and respawn value.}


@margin-note*{Teaching Tip: Any mix of keywords here is okay, as long as they
 all have the required sprite and name, and at least one of them does not respawn.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-coin)
  (custom-coin #:sprite copper-coin-sprite
               #:name   "copper coin"))

 (define (special-coin)
  (custom-coin #:sprite          bat-sprite
               #:name            "bat coin"
               #:value           1000
               #:amount-in-world 1
               #:respawn?        #f))

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (my-coin)
                     (special-coin)))}