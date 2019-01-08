#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Spear Katas}


@;----- AIR SPEAR ------
@camp-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Spear"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Asset" "The fundamental building material of a game.  Can be: art, music, sound effects, code, etc.  Game designers use programming to combine assets into a game.")
   '("Funny Asset" "Any asset that is intended to make players laugh."))

 One of the things that makes Fortnite famous are its funny assets.  What's your favorite!
  
}

@;----- BRONZE SPEAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Spear"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Hint"]{"Spear" can be anything, like "Amaze-spear".}
  
 @(student-should-translate #:english "Make a game that has a spear."
                            #:lang    'battle-arena
                            #:code    'spear-1)
}

@;----- SILVER SPEAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Spear"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "new keyword, customizable function names (my-weapon-1)."
               #:extra-dollars-for "bonus code, helping teammates."]{
                                                         
 @side-note["Tip"]{Rarity indicates how many there will be in the world. All options are: 'common,
  'uncommon, 'rare, 'epic, 'lengendary.}
 
 @(student-should-translate #:english "Make a game with your own defined spear."
                            #:lang    'battle-arena
                            #:code 'spear-2)

 @bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

 @DOLLAR

 @(show-kata-code 'battle-arena 'spear-2-bonus)
}


@;----- GOLD SPEAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Spear"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "(my-weapon-1) and (my-spear) can be renamed to anything you'd like!"
               #:extra-dollars-for "helping teammates, creativity."]{
 @side-note["Tip"]{Use the piskel cheat sheet! Have them draw fast & simple - they’re not going to keep it!}
  
 @(student-should-translate #:english "Make a game that has a fully customizable spear in it where you can modify its damage and durability."
                            #:lang    'battle-arena
                            #:code 'spear-3)
}

@;----- PLATINUM SPEAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Spear"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do the new keywords mean?"
               #:extra-dollars-for "helping teammates, creativity."]{  
 @(student-should-translate #:english "Make a game that has a fully customizable spear in it where you can modify its speed, range, and sprite."
                            #:lang    'battle-arena
                            #:code 'spear-4)
}