#lang scribble/manual

@title{Training Recommendations}

The Game Jam is not easy.  The tight time constraints require competitors to have a high level
of mastery over various aspects of game design.

Mastery is the key word here.   It is not enough to have simply "been exposed" to some concept.
That is familiarity -- not mastery.

The training program given here is intended to give students mastery over the skills needed
to excell at the Scholastic Game Jam.

It is also intended to be fun!  Mastery require repetition.  Mastery requires holding oneself
to high standards.  Sometimes it can be a challenge to keep having fun while pursuing mastery.
The following curriculum is intended to keep the road to mastery as fun as possible.

At the end of the day, though, the main ingredient to fun is the energy of the coach.  If you're
a coach, whether you follow these recommentations or not, keep in mind that if you're excited
about the Game Jam, your competitors will be too.  If you're excited about your competitors'
assendency to mastery, they will be too.

Be loud.  Be proud.  Be a coach.

@section{Training Katas}

@(require 2htdp/image)
@(require ts-game-jam-1)

Coaches will train competitors by helping them acquire the necessary skills to excel
at the Game Jam competition.  Competitors who have mastered these skills will earn katas.
These katas serve as visual, wearable representations of a competitor's hard work.

Kata key:

@(define (meta-kata)     (circle 10 'solid 'gray))
@(define (avatar-kata)   (circle 10 'solid 'red))
@(define (coin-kata)     (circle 10 'solid 'gold))
@(define (food-kata)     (circle 10 'solid 'orange))
@(define (npc-kata)      (circle 10 'solid 'green))
@(define (recipe-kata)   (circle 10 'solid 'blue))

@(meta-kata)     - @bold{Meta Katas} - for skills related to excelling as a Game Jam competitor.

@(avatar-kata)   - @bold{Avatar Katas} - for skills related to creating avatars

@(coin-kata)     - @bold{Coin Katas} - for skills related to creating coin items

@(food-kata)     - @bold{Food Katas} - for skills related to creating food items

@(npc-kata)      - @bold{NPC Katas} - for skills related to creating NPCs

@(recipe-kata)   - @bold{Recipe Katas} - for skills related to creating recipes



@subsection{Intro Katas}

We recommend students earn these Intro Katas before earning any other ones.
They help reinforce team values and help orient the competitors toward the
challenges that face them.

@(meta-kata) @bold{Core Values Kata} (1 minute.)

@margin-note[#:left? #t "Hand motions can make these easier to remember and repeat. For
             example: 'It's not about my code.' Point to computer. 'It's about
             what I can code.' Point to brain."]

@margin-note*{Teaching Tip: Depending on the size of your class, you may want to challenge them
             to rattle these off 1 by 1, in pairs or small groups, or as an entire
             class.}

@italic{Can recite the first two ThoughtSTEM core values}

@itemlist[@item{It's not about my code.     It's about what I can code.}
          @item{It's not about me.          It's about us.}]



@(meta-kata) @bold{Game Jam Specs Kata} (1 minute.)

@italic{Can recite the specs for the upcoming Game Jam.}

@margin-note*{Teaching Tip: This is a good kata to learn as a team or in small groups.}

@itemlist[@item{Game Type: Survival Game}
          @item{Time Limit: 1 hour}
          @item{Categories:
           @itemlist[@item{Avatar:                 20 points}
                     @item{Coin Items:             25 points}
                     @item{Food Items:             25 points}
                     @item{Non-Player Characters:  30 points}
                     @item{Crafting:               55 points}]}]

This kata should be re-earned any time the specs change.  Or any time there's a new upcoming jam.
The specs do change from time to time.  (And that in itself is a valuable lesson.)



@(meta-kata) @bold{Kata Kata} (1 minute.)

@margin-note*{This kata might be too many "repeat after me" katas. Feel free to share
             the info more informally.}

@italic{Can recite answer to: What is a Kata?}

A Kata is a small piece of code that I memorize and can write:
@itemlist[@item{Calmly}
          @item{Quickly}
          @item{Accurately}]



@(avatar-kata) @bold{Racket Kata} (5 minutes)

@margin-note*{Teaching Tip: Start with all the code projected/written on the board.
              Remove the lines one by one, testing the students each time.}

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a red circle that is 80 pixels across.}

To code of this type:

@codeblock{
 #lang racket
 (require 2htdp/image)
 (circle 80 'solid 'red)}

Note: To award this kata, a student should be able to do the above
in under 5 minutes.  But doing it once is too easy.  The student should
do this multiple times with different shapes: e.g. blue square, green star,
etc.









@subsection{Avatar Katas - @italic{(Day 2)}} 

@margin-note*{Teaching Tip: Start class reciting the first two ThoughtSTEM core values.}

@(meta-kata) @bold{Paper Avatar Kata} (1 minute.)

@italic{Can recite the amount of points they get from an Avatar in their game.}

@margin-note*{Teaching Tip: This is a good kata to learn as a team or in small groups.}

@itemlist[@item{Avatar points:
           @itemlist[@item{Having an avatar              @bold{1 points}}
                     @item{Any avatar within 5 minutes
                                 @italic{(Sprint Bonus)} @bold{5 points}}
                     @item{Avatar animation frame        @bold{1 points}
                                        @itemlist[@item{Maximum 4 animations}]}]}]




@(avatar-kata) @bold{Bronze Avatar Kata} (5 minutes)

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an avatar in it.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (survival-game
   #:avatar (custom-avatar))}




@(avatar-kata) @bold{Silver Avatar Kata} (5 minutes)

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has a red circle that is 80 pixels across as an avatar.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1
 
 (define (my-avatar)
   (custom-avatar #:sprite (circle 20 "solid" "red")))

 (survival-game
   #:avatar (my-avatar))}





@(avatar-kata) @bold{Gold Avatar Kata} (5 minutes)

@margin-note*{Not including drawing time, but do include exporting time.}

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has a custom image as an avatar.}

To code of this type:

@(define (major-triumph) (bitmap "images/major-triumph.png"))


@codeblock{#lang ts-game-jam-1}
@racketblock[
 (define (my-avatar)
   (custom-avatar #:sprite #, (major-triumph) ))
  
 (survival-game
  #:avatar (my-avatar))]





@subsection{Coin Katas - @italic{(Day 3)}}

@(meta-kata) @bold{Paper Coin Kata} (1 minute.)

@italic{Can recite the amount of points they get from coin items in their game.}

@itemlist[@item{Coin points:   
           @itemlist[@item{Each coin item                    @bold{1 point, max 10}}
                     @item{Any coin within 15 minutes
                                 @italic{(Sprint Bonus)      @bold{5 points}}}
                     @item{For each coin item matching theme @bold{1 point, max 10}}]}]



@(coin-kata) @bold{Copper Coin Kata} (5 minutes)

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an avatar and a coin.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (custom-coin)))}



@(coin-kata) @bold{Silver Coin Kata} (5 minutes)

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an avatar and a coin worth 500 points.}

To code of this type:

@codeblock{
 #lang ts-game-jam-1

 (define (my-coin)
  (custom-coin #:value 500))
 
 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (my-coin)))}



@(coin-kata) @bold{Gold Coin Kata} (5 minutes)

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an avatar, and a coin with a custom sprite,
 name, value, and amount in world.}

To code of this type:

@margin-note*{Teaching Tip: The order of the keywords does not matter.}

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



@(coin-kata) @bold{Platinum Coin Kata} (5 minutes)

@margin-note*{Teaching Tip: As with any kata, there is not a "daily
 number of required katas", so you can always leave off a kata or return
 to it another day.}

Within five minutes, the student can translate an English sentence of this type:

@italic{Make a game that has an avatar, and more than one coin with a custom
 sprite, name, value, and amount in world.}

To code of this type:

@margin-note*{Teaching Tip: Any mix of keywords here is okay, as long as they
 all have the required sprite and name, and at least one of them does not respawn.}

@codeblock{
 #lang ts-game-jam-1

 (define (my-coin)
  (custom-coin #:sprite copper-coin-sprite
               #:name   "copper coin"))

 (define (special-coin)
  (custon-coin #:sprite          bat-sprite
               #:name            "bat coin"
               #:value           1000
               #:amount-in-world 1
               #:respawn?        #f))

 (survival-game
  #:avatar     (custom-avatar)
  #:coin-list  (list (my-coin)
                     (special-coin)))}


<Katas>

avatar:   5 minutes, 2.5 minutes

Food:     5 minutes, 2.5 minutes

Coin: 5 minutes, 2.5 minutes

NPC:      5 minutes, 2.5 minutes

Recipes:  5 minutes, 2.5 minutes


<Sprint Badges>

Under 5 minutes:  avatar + Food

Under 10 minutes: avatar + Food + Coin

Under 15 minutes: avatar + Food + Coin + NPC

Under 15 minutes: avatar + Food + Coin + NPC + Recipe


<x10 Badges>

Under 5 minutes:  10 different NPCs

Under 5 minutes:  10 different Coin Items

Under 5 minutes:  10 different Food Items

Under 5 minutes:  10 different Recipes

Under 10 minutes: 10 different Recipes in a tree


Note that these badges must be "refreshed".
You don't get to keep them if you're not practicing...

@section{Collaboration Badges}

<Teaching badges>

* A badge for how you help someone else earn a badge.



For any badge above, if you have already earned it and you've
earned the teaching badge, you can get a badge for helping
someone earn a badge.


@section{Competition Badges}

<Practice Jam Badges>

Do a 1 hour game jam.
Do a 1 hour game jam.  Get __ points.
Do a 1 hour game jam.  Get __ points.
Do a 1 hour game jam.  Get __ points.

<Compete in a real game Jam>

1st Competition
2nd Competition
3rd Competition
4th Competition
5th Competition
...




TODO: Somewhere, say something about doing a
coding phase and an art phase...