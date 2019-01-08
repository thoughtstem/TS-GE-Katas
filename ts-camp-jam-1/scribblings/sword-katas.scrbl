#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Sword Katas}

@;----- BRONZE SWORD ------

@camp-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Sword"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Combat system" "A system in some (but not all) games.  It usually involves weapons, damage, healing, and death.")
   '("Weapon" "An item that avatars can use to damage enemies")
   '("Damage" "Reducing one or more of an avatar's stats (like health or shields).")
   '("Death" "When an avatar is removed from a game or must respawn due to complete loss of health."))
  
}

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Sword"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, list, keywords."
               #:extra-dollars-for "helping teammates."]{
 @side-note["Tip"]{"Sword" can be anything, like "Amazing Sword of Awesome"}
  
 @(student-should-translate #:english "Make a game that has a sword."
                            #:lang    'battle-arena
                            #:code 'sword-1)
}


@;----- SILVER SWORD ------

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Sword"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "new keyword, customizable function names (my-weapon-2)."
               #:extra-dollars-for "helping teammates."]{
 @side-note["Tip"]{Rarity indicates how many there will be in the world. All options are: 'common,
  'uncommon, 'rare, 'epic, 'lengendary.}
 
 @(student-should-translate #:english "Make a game with your own defined sword."
                            #:lang    'battle-arena
                            #:code 'sword-2)
 @bold{Bonus Code:} Have them add additional keywords to (custom-weapon) to earn an extra dollar!

 @DOLLAR

 @(show-kata-code 'battle-arena 'sword-2b)
}


@;----- GOLD SWORD ------

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Sword"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "function names can be anything, draw simple --
                    nothing is saved for later."
               #:extra-dollars-for "helping teammates, creativity."]{
                                                                     
 @side-note["Tip"]{Give students the piskel cheat sheet.}

 @(student-should-translate #:english "Make a game with a fully customized sword."
                            #:lang    'battle-arena
                            #:code 'sword-3)
}

@;----- PLATINUM SWORD ------

@camp-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Sword"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do the new keywords mean?"
               #:extra-dollars-for "helping teammates, creativity."]{
                                                   
 @(student-should-translate #:english "Make a game that has a customizable sword in it where you can modify its speed, range, and sprite."
                            #:lang    'battle-arena
                            #:code 'sword-4)
 }