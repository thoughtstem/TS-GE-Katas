#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Sword Armor Katas}

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword,
                                   list, what make-icon does."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{This isn't going to work to to protect your avatar yet! That's in the next kata.}
  
 @(student-should-translate #:english "Make a game that has armor called Sword Armor."
                            #:lang 'battle-arena
                            #:code 'sword-armor-1)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "what does (subtract by...) after #:change-damage mean?"
               #:extra-dollars-for "helping teammates."]{
                                                         
 @(student-should-translate #:english "Make a game that has working Sword Armor."
                            #:lang 'battle-arena
                            #:code 'sword-armor-2)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates."]{
    
 @(student-should-translate #:english "Make a game that has 10 enemies with a sword and armor for your avatar
                                       that will protect against that sword!"
                            #:lang 'battle-arena
                            #:code 'sword-armor-3)
}