#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Repeater Armor Katas}

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Repeater Armor"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword,
                                   list, what make-icon does."
               #:extra-dollars-for "helping teammates."]{
                                                         
 @side-note["Tip"]{This isn't going to work to to protect your avatar yet! That's in the next kata.}                                                        
                                                         
 @(student-should-translate #:english "Make a game that has armor called Repeater Armor."
                            #:lang 'battle-arena
                            #:code 'repeater-armor-1)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Repeater Armor"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "figure out why #:change-damage has (divide by)."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{The name after the #:protects-from keyword must match the name of the weapon held by the
                   enemy.}
  
 @side-note["Rarities"]{All rarity levels are 'common, 'uncommon, 'rare, 'epic, and 'legendary.}
  
 @(student-should-translate #:english "Make a game that has working Repeater Armor."
                            #:lang 'battle-arena
                            #:code 'repeater-armor-2)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Repeater Armor"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates."]{

 @(student-should-translate #:english "Make a game that has 10 enemies with a repeater and armor for your avatar
                                       that will protect against that repeater!"
                            #:lang 'battle-arena
                            #:code 'repeater-armor-3)
}