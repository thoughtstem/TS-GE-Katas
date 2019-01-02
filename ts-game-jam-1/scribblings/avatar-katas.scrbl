#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== AVATAR KATAS =======
@title{Avatar Katas - @italic{(Day 2)}}

@(require 2htdp/image)
@;@(require survival)

@;----- Air AVATAR ------

@game-jam-kata[#:document-level section
               #:badge-type     @META-KATA
               #:difficulty    'air
               #:title "Avatar"
               #:time-limit 1
               #:dollars 1
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 Game design vocab!

 @(student-should-know-difference-between
   '("Player" "A human being playing a game")
   '("Avatar" "A player's represetation in the game"))

 The are NOT the same!  (Lots of people in the world don't know this)


 @side-note["Tip"]{Start class reciting the first two ThoughtSTEM core values.}

 @side-note["Tip"]{This is a good kata to learn as a team or in small groups.}
}

To earn this kata @META-KATA they need to:

@italic{Recite the amount of points they get from an Avatar in their game. in less than 1 minute.}

@itemlist[@item{Avatar points:
           @itemlist[@item{Having an avatar              @bold{1 points}}
                     @item{Any avatar within 5 minutes
                                 @italic{(Sprint Bonus) @bold{5 points}}}
                     @item{Avatar animation frame        @bold{1 points}
                                        @itemlist[@item{Maximum 4 animations}]}]}]

@; ------ AVATAR BRONZE

@game-jam-kata[#:document-level section
               #:badge-type     @AVATAR-KATA
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5
               #:dollars 1]{

 @(student-should-translate #:english "Write the shortest program that creates a game with a custom avatar."
                            #:lang 'survival
                            #:code 'avatar-1)
}

@; ------ AVATAR SILVER

@game-jam-kata[#:document-level section
               #:badge-type     @AVATAR-KATA
               #:difficulty    'silver
               #:title "Avatar"
               #:time-limit 5
               #:dollars 3]{

 @(student-should-translate #:english "Make a game that has a different colored shape as an avatar."
                            #:lang 'survival
                            #:code 'avatar-2)
}

@; ------ AVATAR GOLD

@game-jam-kata[#:document-level section
               #:badge-type     @AVATAR-KATA
               #:difficulty    'gold
               #:title "Avatar"
               #:time-limit 5
               #:dollars 5]{

 @(student-should-translate #:english "Make a game that has your drawing as the avatar."
                            #:lang 'survival
                            #:code 'avatar-3)

 @side-note["Tip"]{Not including drawing time, but do include exporting time.}
  }
