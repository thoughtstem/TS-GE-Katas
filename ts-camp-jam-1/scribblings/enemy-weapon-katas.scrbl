#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Enemy Weapon Katas}

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list, dart."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{In addition to @italic{sword} you can use any of these: paint, spear, lava-builder, spike-mine-builder, or spear-tower-builder.}
  
 @(student-should-translate #:english "Make a game that has a an enemy and give it a custom weapon."
                            #:lang 'battle-arena
                            #:code 'enemy-weapon-1)
 }

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of damage, size, multiple keywords."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{Remember, all the keywords (denoted by @italic{#: }) are always optional.}

 @(student-should-translate #:english "Make a game that has an enemy, give it a custom weapon and customize it."
                            #:lang 'battle-arena
                            #:code 'enemy-weapon-2)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of sprite, range."
               #:extra-dollars-for "helping teammates, creativity."]{

 @side-note["Tip"]{Remember, all the keywords (denoted by @italic{#: }) are always optional.}
                                                                     
 @(student-should-translate #:english "Make a game that has am enemy, give it a custom weapon, and customize the dart."
                            #:lang 'battle-arena
                            #:code 'enemy-weapon-3)
}