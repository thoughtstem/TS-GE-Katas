#lang scribble/manual

@title{Practice Game Jam Katas - @italic{(Day 7)}}

@(require 2htdp/image)
@(require ts-game-jam-1)

@(define (meta-kata)     (circle 10 'outline 'black))
@(define (avatar-kata)   (circle 10 'solid   'orange))
@(define (coin-kata)     (circle 10 'solid   'green))
@(define (food-kata)     (circle 10 'solid   'pink))
@(define (npc-kata)      (circle 10 'solid   'black))
@(define (crafter-kata)   (circle 10 'solid   'blue))

@; ------ PRACTICE JAM

@section{Paper Practice Kata}

@margin-note*{Teaching Tip: Students should start coding this first and then they can customize their game.}

To earn this kata @(meta-kata) they need to:

@italic{Code a simple survival game in under 25 minutes.}

@codeblock{
 #lang ts-game-jam-1

 (survival-game
  #:avatar       (custom-avatar)
  #:coin-list    (list (custom-coin))
  #:food-list    (list (custom-food #:amount-in-world 10))
  #:npc-list     (list (custom-npc))
  #:crafter-list (list (custom-crafter)))}

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
          @item{NPC:     @bold{+1} Having an NPC  
                         @bold{+5} in less than 20 minutes
                         @bold{= 6 points.}} 
          @item{Crafter: @bold{+1} Having a crafter 
                         @bold{+5} in less than 25 minutes
                         @bold{= 6 points.}}
          @item{@bold{Total so far: @italic{+30} points.} }]

@; ------ CUSTOMIZE AVATAR

@section{Avatar Practice}

To earn this kata @(avatar-kata) they need to:

@italic{Customize their avatar.}

@(define (running-guy) (bitmap "images/running-guy.png"))

@codeblock{#lang ts-game-jam-1}
@racketblock[
 (define (my-avatar)
   (custom-avatar #:sprite (sheet->sprite #,(running-guy)
                                          #:columns 4)))
 
 (survival-game
  #:avatar       (my-avatar)
  #:coin-list    (list (custom-coin))
  #:food-list    (list (custom-food #:amount-in-world 10))
  #:npc-list     (list (custom-npc))
  #:crafter-list (list (custom-crafter)))]

With this new code you would get the following points:

@itemlist[@item{Avatar:  @bold{+4} for animation frames @italic{(1 point per frame)}.}
          @item{@bold{Total so far: @italic{+34} points.} }]

@; ------ CUSTOMIZE COIN

@section{Coin Practice}

To earn this kata @(coin-kata) they need to:

@italic{Code and customize additional coins.}

@codeblock{
 #lang ts-game-jam-1
 
 (define (my-avatar)
   (...))
 
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
                ))

 (survival-game
  #:avatar       (my-avatar)
  #:coin-list    (list (red-coin)
                       (blue-coin)
                       (green-coin))
  #:food-list    (list (custom-food #:amount-in-world 10))
  #:npc-list     (list (custom-npc))
  #:crafter-list (list (custom-crafter)))}

With this new code you would get the following points:

@itemlist[@item{Coin:  @bold{+2} for coins  @italic{(1 point per coin; we already had points for one coin)}.}
          @item{Coin:  @bold{+3} for coins matching theme  @italic{(1 point per coin)}.}
          @item{@bold{Total so far: @italic{+39} points.}}
          @item{@italic{Additional possible points: @bold{+14}; code 7 additional theme matching coins.} }]

@; ------ CUSTOMIZE FOOD

@section{Food Practice}

To earn this kata @(food-kata) they need to:

@italic{Code and customize additional food items.}

@codeblock{
 #lang ts-game-jam-1

 (define (my-avatar)
   (...))

 (define (red-coin)
   (...))

 (define (blue-coin)
   (...))

 (define (green-coin)
   (...))

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
                #:respawn?        #f))

 (survival-game
   #:avatar       (my-avatar)
   #:coin-list    (list (red-coin)
                        (blue-coin)
                        (green-coin))
   #:food-list    (list (pineapple)
                        (mango))
   #:npc-list     (list (custom-npc))
   #:crafter-list (list (custom-crafter)))}

With this new code you would get the following points:

@itemlist[@item{Food:  @bold{+1} for food item  @italic{(1 point per food; we already had points for one food item)}.}
          @item{Food:  @bold{+2} for food items matching theme  @italic{(1 point per food item)}.}
          @item{@bold{Total so far: @italic{+42} points.}}
          @item{@italic{Additional possible points: @bold{+16}; code 8 additional theme matching food items.} }]


@; ------ CUSTOMIZE NPC

@section{NPC Practice Kata}

To earn this kata @(npc-kata) they need to:

@italic{Code and customize additional NPCs.}

@codeblock{
 #lang ts-game-jam-1

 (define (my-avatar)
   (...))

 (define (red-coin)
   (...))

 (define (blue-coin)
   (...))

 (define (green-coin)
   (...))

 (define (pineapple)
   (...))

 (define (mango)
   (...))

 (define(my-npc-1)
  (custom-npc #:position (posn 100 100)
              #:tile     1
              #:name     "Sara"
              #:mode     'pace
              #:dialog   (list "Hello!"
                               "I'm busy right now."
                               "Bye!")))
              
(define(my-npc-2)
  (custom-npc #:position (posn 100 200)
              #:tile     2
              #:name     "Sonny"
              #:mode     'wander
              #:dialog   (list "I'm hungry!"
                               "I can't find any food.")))

(survival-game
 #:avatar       (my-avatar)
 #:coin-list    (list (red-coin)
                      (blue-coin)
                      (green-coin))
 #:food-list    (list (pineapple)
                      (mango))
 #:npc-list     (list (my-npc-1)
                      (my-npc-2))
 #:crafter-list (list (custom-crafter)))}

With this new code you would get the following points:

@itemlist[@item{NPC:  @bold{+1} for an NPC  @italic{(1 point per NPC; we already had points for one NPC)}.}
          @item{NPC:  @bold{+2} for NPCs matching theme  @italic{(1 point per NPC)}.}
          @item{NPC:  @bold{+5} for lines of dialog  @italic{(1 point per line)}.}
          @item{NPC:  @bold{+5} for lines of dialog matching theme  @italic{(1 point per line)}.}
          @item{@bold{Total so far: @italic{+50} points.}}
          @item{@italic{Additional possible points: @bold{+33}; code 3 additional NPCs, and add 15 lines of
            theme matching dialog.} }]

@; ------ CUSTOMIZE CRAFTER

@section{Crafter Practice Kata}

To earn this kata @(crafter-kata) they need to:

@italic{Code and customize additional crafters.}

@codeblock{
 #lang ts-game-jam-1

 (define (my-avatar)
   (...))

 (define (red-coin)
   (...))

 (define (blue-coin)
   (...))

 (define (green-coin)
   (...))

 (define (pineapple)
   (...))

 (define (mango)
   (...))

 (define(my-npc-1)
   (...))
              
(define(my-npc-2)
   (...))

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
                  #:tile 2))

(survival-game
 #:avatar       (my-avatar)
 #:coin-list    (list (red-coin)
                      (blue-coin)
                      (green-coin))
 #:food-list    (list (pineapple)
                      (mango)
                      (kiwi)
                      (frozen-pineapple))
 #:npc-list     (list (my-npc-1)
                      (my-npc-2))
 #:crafter-list (list (oven-crafter)
                      (freezer-crafter)))}

With this new code you would get the following points:

@itemlist[@item{Food:  @bold{+2} for food item  @italic{(1 point per food item)}.}
          @item{Food:  @bold{+2} for food items matching theme  @italic{(1 point per food item)}.}
          @item{Crafter:  @bold{+1} for a crafter  @italic{(1 point per crafter; we already had points for one crafter)}.}
          @item{Crafter:  @bold{+3} for recipes  @italic{(1 point per recipe)}.}
          @item{Crafter:  @bold{+3} for recipes matching theme  @italic{(1 point per recipe)}.}
          @item{@bold{Total so far: @italic{+61} points.}}
          @item{@italic{Additional possible points: @bold{+27}; code 3 additional crafter, and add 12 more
            theme matching recipes.} }]