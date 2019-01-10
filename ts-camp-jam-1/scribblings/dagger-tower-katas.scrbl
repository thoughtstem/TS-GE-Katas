#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Dagger Tower Katas}


@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Dagger Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, dart."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a dagger tower."
                            #:lang    'battle-arena
                            #:code    'dagger-tower-1)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Dagger Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR]{
  
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower."
                            #:lang    'battle-arena
                            #:code    'dagger-tower-2)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Dagger Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART]{
    
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower with a custom dagger."
                            #:lang    'battle-arena
                            #:code    'dagger-tower-3)
}