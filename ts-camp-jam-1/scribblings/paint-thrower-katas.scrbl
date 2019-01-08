#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Paint Thrower Katas}


@camp-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Paint Thrower"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Melee weapon" "A kind of weapon that is only effective at short range.")
   '("Ranged weapon" "A kind of weapon that is effective at long range."))
  
}

@camp-jam-kata[#:document-level section
               #:difficulty    'stone
               #:title "Paint Thrower"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Format"]{It's probably not important to officially
  time students on this kata.  It's also okay to encourage lively discussion.
 Some of the pictures are funny, and that's okay.}

 Students should be able to identify each of the following as either
 melee weapons or ranged weapons:

 @image{scribblings/imgs/weapons/grenade.gif}

 @image{scribblings/imgs/weapons/weird-pickaxe.gif}

 @image{scribblings/imgs/weapons/long-range.gif}

 @image{scribblings/imgs/weapons/pickaxe.gif}

 @image{scribblings/imgs/weapons/rocket.gif}
 }

@;----- BRONZE PAINT THROWER ------

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Paint Thrower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, list, keywords"
               #:extra-dollars-for "helping teammates."]{
 @side-note["Tip"]{Remember, keyword arguments (the parts of the code that start with "#:") are optional!)}

 @(student-should-translate #:english "Make a game that has a paint thrower in it."
                            #:lang    'battle-arena
                            #:code 'paint-thrower-1)
}


@;----- SILVER PAINT THROWER ------

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Paint Thrower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "(my-weapon-3) could be anything; you could rename it to (paint-spitter)"
               #:extra-dollars-for "bonus code, helping teammates."]{
                                       
 @side-note["Hint"]{rarity levels are 'common, 'uncommon, 'rare, 'epic, 'legendary. Rarity is related to how many will spawn in the world!}

 @(student-should-translate #:english "Make a game with your own defined paint thrower with customizable rarity."
                            #:lang    'battle-arena
                            #:code 'paint-thrower-2)

 @bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

 @DOLLAR

 @(show-kata-code 'battle-arena 'paint-thrower-2-bonus)
}


@;----- GOLD PAINT THROWER ------

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Paint Thrower"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "(my-paint) can be renamed to anything you'd like!"
               #:extra-dollars-for "helping teammates, creativity."]{
                                       
 @side-note["Tip"]{Use the piskel cheat sheet! Have them draw fast & simple - they're not going to keep it!}

 @(student-should-translate #:english "Make a game that has a customizable paint thrower in it where you can modify the damage and durability of the paint."
                            #:lang    'battle-arena
                            #:code 'paint-thrower-3)
}


@;----- PLATINUM PAINT THROWER ------

@camp-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Paint Thrower"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do the new keywords mean?"
               #:extra-dollars-for "helping teammates, creativity."]{
 @(student-should-translate #:english  "Make a game that has a customizable paint thrower in it where you can modify the speed, range, and sprite of the paint."
                            #:lang    'battle-arena
                            #:code 'paint-thrower-4)
}