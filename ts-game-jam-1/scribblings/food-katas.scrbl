#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== FOOD KATAS =======
@title{Food Katas}@; - @italic{(Day 4)}}

@;----- FOOD AIR ------

@game-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Food"
               #:time-limit 1
               #:dollars 1
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{
                                                        
 @side-note["Tip"]{This is a good kata to learn as a team or in small groups.}

 @(to-earn-this-rubric-kata #:badge-type    @META-KATA
                            #:game-element  "Food"
                            #:elements-list (list "Each food item (max 10)"
                                                  "Any food item within 15 minutes (sprint bonus)"
                                                  "For each food item matching the theme (max 10)")
                            #:points-list   (list 1
                                                  5
                                                  1))
}

@; ------ FOOD BRONZE

@game-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Food"
               #:time-limit 5
               #:dollars 1]{

 @(to-earn-this-code-kata #:english    "Write the shortest program that creates a game with an avatar, a coin, and a food item."
                          #:lang       'survival
                          #:code       'food-1
                          #:badge-type @FOOD-KATA)
}

@; ------ FOOD SILVER

@game-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Food"
               #:time-limit 5
               #:dollars 3]{

 @(to-earn-this-code-kata #:english "Make a game that has an avatar, and a food that heals by 20 points."
                          #:lang 'survival
                          #:code 'food-2
                          #:badge-type @FOOD-KATA)
}

@; ------ FOOD GOLD

@game-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Food"
               #:time-limit 5
               #:dollars 5]{
                            
 @side-note["Tip"]{Students should run the function (show-food-sprites) on the
  interactions window to see a list of coin sprites.}

 @side-note["Tip"]{The order of the keywords does not matter.}

 @(to-earn-this-code-kata #:english "Make a game that has an avatar, a coin, and a food item with a custom sprite,
 name, amount in world, and healing power."
                          #:lang 'survival
                          #:code 'food-3
                          #:badge-type @FOOD-KATA)
 }

@; ------ FOOD PLATINUM

 @game-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Food"
               #:time-limit 10
               #:dollars 5]{
                            
 @side-note["Tip"]{Any mix of keywords here is okay, as long as they
 all have the required sprite and name, and at least one of them does not respawn.}

 @side-note["Tip"]{There is no number of "required" katas by day.}

 @(to-earn-this-code-kata #:english "Make a game that has an avatar, a coin, and more than one food item with a custom
 sprite, name, amount in world, healing power, and respawn value."
                          #:lang 'survival
                          #:code 'food-4
                          #:badge-type @FOOD-KATA)
 }