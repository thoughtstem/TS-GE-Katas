#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== ENEMY KATAS =======
@title{Enemy Katas} @; - @italic{(Day 5)}}

@;----- ENEMY AIR ------

@game-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Enemy"
               #:time-limit 1
               #:dollars 1
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{
                                                        
 @side-note["Tip"]{This is a good kata to learn as a team or in small groups.}

 @(to-earn-this-rubric-kata #:badge-type    @META-KATA
                            #:game-element  "Enemy"
                            #:elements-list (list "Each enemy (max 5)"
                                                  "Any enemy within 20 minutes (sprint bonus)"
                                                  "For each enemy matching the theme (max 5)")
                            #:points-list   (list 1
                                                  5
                                                  1))
}

@; ------ ENEMY BRONZE

@game-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Enemy"
               #:time-limit 5
               #:dollars 1]{

 @side-note["Tip"]{Students should be encouraged to add other game attributes; e.g. coins, food items.}

 @(to-earn-this-code-kata #:english    "Write the shortest program that creates a game with an avatar and a custom enemy."
                          #:lang       'survival
                          #:code       'enemy-1
                          #:badge-type @ENEMY-KATA)
}

@; ------ ENEMY SILVER

@game-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Enemy"
               #:time-limit 5
               #:dollars 3]{
                            
 @side-note["Tip"]{Students should run the function (show-enemy-sprites) on the
  interactions window to see a list of enemy sprites.}

 @(to-earn-this-code-kata #:english "Make a game that has an avatar and several enemies with custom ai levels and sprites."
                          #:lang 'survival
                          #:code 'enemy-2
                          #:badge-type @ENEMY-KATA)
}

@; ------ ENEMY GOLD

@game-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Enemy"
               #:time-limit 10
               #:dollars 5]{

 @side-note["Tip"]{The order of the keywords does not matter.}

 @(to-earn-this-code-kata #:english "Make a game that has an avatar and an enemy with a custom weapon and dart."
                          #:lang 'survival
                          #:code 'enemy-3
                          #:badge-type @ENEMY-KATA)
 }
