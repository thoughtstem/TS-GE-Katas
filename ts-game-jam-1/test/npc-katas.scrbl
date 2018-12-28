#lang scribble/manual

@title{NPC Katas - @italic{(Day 5)}}

@(require 2htdp/image)
@(require ts-game-jam-1)

@(define (meta-kata)     (circle 10 'outline 'black))
@(define (npc-kata)      (circle 10 'solid   'black))


@margin-note*{Teaching Tip: NPC is short Non-Player Character.}

@section{Paper NPC Kata}

To earn this kata @(meta-kata) they need to:

@italic{Recite the amount of points they get from NPCs in their game, in less than 1 minute.}

@itemlist[@item{NPC points:   
           @itemlist[@item{Each NPC item                         @bold{1 point, max 5}}
                     @item{Any NPC within 20 minutes
                                 @italic{(Sprint Bonus)          @bold{5 points}}}
                     @item{For each NPC item matching theme      @bold{1 point, max 5}}
                     @item{For each line of NPC dialog           @bold{1 point, max 20}}
                     @item{For each line of dialog matching theme @bold{1 point, max 20}}]}]

@; ------ NPC BRONZE

@section{Bronze NPC Kata}

To earn this kata @(npc-kata) they need to:

Within five minutes,translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, a food item, and an NPC.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (custom-food #:amount-in-world 10))
  #:npc-list   (list (custom-npc)))}

@; ------ NPC SILVER

@section{Silver NPC Kata}

To earn this kata @(npc-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, a food, and an NPC that has a custom
 name, walking mode, and starting tile.}

@margin-note*{The tiles are numbered from 0 to 8 (0 being the top-left tile).
The walking modes are: pace, wander, still, and follow.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-npc)
  (custom-npc #:name "Sara"
              #:mode 'wander
              #:tile 4))
 
 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (custom-food #:amount-in-world 10))
  #:npc-list   (list (my-npc)))}

@; ------ NPC GOLD

@section{Gold NPC Kata}

To earn this kata @(npc-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, a food item, and a NPC with a custom
        name, walking mode, starting tile, and dialog.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-npc)
  (custom-npc #:name   "Sara"
              #:mode   'wander
              #:tile   4
              #:dialog (list "Why, hello there!" "Gotta go now!")))
 
 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (custom-food #:amount-in-world 10))
  #:npc-list   (list (my-npc)))}

@; ------ NPC PLATINUM

@section{Platinum NPC Kata}

@margin-note*{Teaching Tip: Remember, there is no number of "required" katas by day.}

To earn this kata @(npc-kata) they need to:

Within ten minutes, translate an English sentence of this type:

@italic{Make a game that has an avatar, a coin, a food item, and more than one NPC.}

@margin-note*{Teaching Tip: Any mix of keywords here is okay.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-npc-1)
  (custom-npc #:name   "Sara"
              #:mode   'wander
              #:tile   4
              #:dialog (list "Why, hello there!" "Gotta go now!")))

 (define (my-npc-2)
  (custom-npc #:name     "Sonny"
              #:tile     6            
              #:mode     'pace))

 (define (my-npc-3)
  (custom-npc #:name     "Jason"
              #:mode     'follow))
 
 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin))
  #:food-list  (list (custom-food #:amount-in-world 10))
  #:npc-list   (list (my-npc-1)
                     (my-npc-2)
                     (my-npc-3)))}