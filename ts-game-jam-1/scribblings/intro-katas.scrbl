#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== INTRO KATAS =======
@title{Intro Katas}@; - @italic{(Day 1)}}

We recommend students earn these Intro Katas before earning any other ones.
They help reinforce team values and help orient the competitors toward the
challenges that face them.

@;------ CORE VALUES
@game-jam-kata[#:document-level section
               #:title "Core Values"
               #:time-limit 1
               #:dollars 1]{
                                                        
 @side-note["Tip"]{Depending on the size of your class, you may want to challenge them
  to rattle these off 1 by 1, in pairs or small groups, or as an entire
  class.}

 @side-note["Tip"]{Hand motions can make these easier to remember and repeat. For
  example: 'It's not about my code.' Point to computer. 'It's about
  what I can code.' Point to brain.}

 @(to-earn-this-meta-kata #:badge-type          @META-KATA
                          #:learning-objective  "Recite the first two ThoughtSTEM core values."
                          #:objectives          (list "It's not about my code.     It's about what I can code."
                                                      "It's not about me.          It's about my team."))
}

@;----- GAME JAM SPECS
@game-jam-kata[#:document-level section
               #:title "Game Jam Specs"
               #:time-limit 1
               #:dollars 1]{
                                                        
 @side-note["Tip"]{This is a good kata to learn as a team or in small groups.}

 @side-note["Tip"]{This kata should be re-earned any time the specs change.  Or any time there's a new upcoming jam.
The specs do change from time to time.  (And that in itself is a valuable lesson.}

 @(to-earn-this-meta-kata #:badge-type          @META-KATA
                          #:learning-objective  "the specs for the upcoming Game Jam."
                          #:objectives          (list "Game Type: Survival Game"
                                                      "Time Limit: 1 hour"
                                                      "Categories: Avatar, Coin, Food Items, Enemies, Crafting"))

}

@;----- KATA KATA

@game-jam-kata[#:document-level section
               #:title "Kata"
               #:time-limit 1
               #:dollars 1]{
                                                        
 @side-note["Tip"]{This kata might be too many "repeat after me" katas. Feel free to share
             the info more informally.}

 @(to-earn-this-meta-kata #:badge-type          @META-KATA
                          #:learning-objective  "the answer to: What is a Kata?"
                          #:objectives          (list "A Kata is a small piece of code that I memorize and can write: Calmly, Quickly, and Accurately."))

}



@;----- RACKET KATA

@game-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Racket"
               #:time-limit 5
               #:dollars 1]{

 @side-note["Tip"]{Start with all the code projected/written on the board.
  Remove the lines one by one, testing the students each time.}
}


To earn this kata @META-KATA students should be able to translate any sentence of this type:

@italic{Make a red circle that is 80 pixels across.}

To corresponding code of this type:

@codeblock{
 #lang racket
 (require 2htdp/image)
 (circle 80 'solid 'red)}

Note: To award this kata, a student should be able to do the above
in images less than 5 minutes.  But doing it once is too easy.  The student should
do this multiple times with different shapes: e.g. blue square, green star,
etc.
