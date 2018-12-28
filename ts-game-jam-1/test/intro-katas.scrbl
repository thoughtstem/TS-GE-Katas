#lang scribble/manual

@title{Intro Katas - @italic{(Day 1)}}

@(require 2htdp/image)
@(require ts-game-jam-1)
@(define (meta-kata)     (circle 10 'outline 'black))


We recommend students earn these Intro Katas before earning any other ones.
They help reinforce team values and help orient the competitors toward the
challenges that face them.

@section{Core Values Kata}

@margin-note*{"Hand motions can make these easier to remember and repeat. For
             example: 'It's not about my code.' Point to computer. 'It's about
             what I can code.' Point to brain."}

@margin-note*{Teaching Tip: Depending on the size of your class, you may want to challenge them
             to rattle these off 1 by 1, in pairs or small groups, or as an entire
             class.}

To earn this kata @(meta-kata) they need to:

@italic{Recite the first two ThoughtSTEM core values, in less than 1 minute.}

@itemlist[@item{It's not about my code.     It's about what I can code.}
          @item{It's not about me.          It's about my team.}]



@section{Game Jam Specs Kata}

To earn this kata @(meta-kata) they need to:

@italic{Recite the specs for the upcoming Game Jam, in less than 1 minute.}

@margin-note*{Teaching Tip: This is a good kata to learn as a team or in small groups.}

@itemlist[@item{Game Type: Survival Game}
          @item{Time Limit: 1 hour}
          @item{Categories:
           @itemlist[@item{Avatar:                 10 points}
                     @item{Coin Items:             25 points}
                     @item{Food Items:             25 points}
                     @item{Non-Player Characters:  45 points}
                     @item{Crafting:               40 points}]}]

This kata should be re-earned any time the specs change.  Or any time there's a new upcoming jam.
The specs do change from time to time.  (And that in itself is a valuable lesson.)


@section{Kata Kata}

@margin-note*{This kata might be too many "repeat after me" katas. Feel free to share
             the info more informally.}

To earn this kata @(meta-kata) they need to:

@italic{Recite answer to: What is a Kata?, in less than 1 minute.}

A Kata is a small piece of code that I memorize and can write:
@itemlist[@item{Calmly}
          @item{Quickly}
          @item{Accurately}]



@section{Racket Kata}

@margin-note*{Teaching Tip: Start with all the code projected/written on the board.
              Remove the lines one by one, testing the students each time.}

To earn this kata @(meta-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a red circle that is 80 pixels across.}

To code of this type:

@codeblock{
 #lang racket
 (require 2htdp/image)
 (circle 80 'solid 'red)}

Note: To award this kata, a student should be able to do the above
in images less than 5 minutes.  But doing it once is too easy.  The student should
do this multiple times with different shapes: e.g. blue square, green star,
etc.