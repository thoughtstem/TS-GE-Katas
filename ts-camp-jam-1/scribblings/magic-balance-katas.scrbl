#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Magic Balance Katas}

These Katas were considered to be a little too challenging. Before re-using, may want to edit.


@camp-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Magic Balance"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Balance"     "One of the hardest aspects of game design -- making the game not too easy, and not too hard.")
   '("Game Design" "Everything involved in making a game.  Coding.  Art.  Balance.  Etc."))}


@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Magic"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{

  
 @(student-should-translate #:english "Make a game that has a light magic weapon."
                            #:lang    'battle-arena
                            #:code 'magic-balance-1)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Magic Balance"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{


 @(student-should-translate #:english "Make a game that has a heavy magic weapon."
                            #:lang    'battle-arena
                            #:code 'magic-balance-2)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Magic Balance"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Remember!" "This kata just combines the previous two.  Point this out!  It will help students see the pattern."]
  
 @(student-should-translate #:english "Make a game that has a light repeater and a heavy magic weapon.  Balance them relative to each other."
                            #:lang    'battle-arena
                            #:code 'magic-balance-3)
}