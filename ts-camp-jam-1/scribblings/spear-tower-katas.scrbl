#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Spear Tower Katas}

  
@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, dart."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a spear tower."
                            #:lang    'battle-arena
                            #:code 'spear-tower-1)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of multiple keywords, range."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a spear tower with a speed of 10 and a range of 20."
                            #:lang    'battle-arena
                            #:code 'spear-tower-2)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Spear Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates."]{
    
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a spear tower with a custom spear image, damage level, range and speed"
                            #:lang    'battle-arena
                            #:code 'spear-tower-3)
}

