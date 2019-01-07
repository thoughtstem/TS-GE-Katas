#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== COIN KATAS =======
@title{Coin Katas - @italic{(Day 3)}}

@;----- Air COIN ------

@game-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Coin"
               #:time-limit 1
               #:dollars 1
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @(to-earn-this-rubric-kata #:badge-type    @META-KATA
                            #:game-element  "Coin"
                            #:elements-list (list "Each coin item (max 10)"
                                                  "Any coin within 10 minutes (sprint bonus)"
                                                  "For each coin item matching the theme (max 10)")
                            #:points-list   (list 1
                                                  5
                                                  1))
  }

@; ------ COIN BRONZE

@game-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Coin"
               #:time-limit 5
               #:dollars 1]{

 @(to-earn-this-code-kata #:english    "Write the shortest program that creates a game with an avatar and a coin."
                          #:lang       'survival
                          #:code       'coin-1
                          #:badge-type @COIN-KATA)
}

@; ------ COIN SILVER

@game-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Coin"
               #:time-limit 5
               #:dollars 3]{

 @(to-earn-this-code-kata #:english "Make a game that has an avatar and a coin worth 500 points."
                          #:lang 'survival
                          #:code 'coin-2
                          #:badge-type @COIN-KATA)
}

@; ------ COIN GOLD

@game-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Coin"
               #:time-limit 5
               #:dollars 5]{
                            
 @side-note["Tip"]{Students should run the function (show-coin-sprites) on the
  interactions window to see a list of coin sprites.}

 @side-note["Tip"]{The order of the keywords does not matter.}

 @(to-earn-this-code-kata #:english "Make a game that has an avatar and a coin with
a custom sprite, name, value, and amount in world."
                          #:lang 'survival
                          #:code 'coin-3
                          #:badge-type @COIN-KATA)
}

@; ------ COIN PLATINUM

@game-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Coin"
               #:time-limit 5
               #:dollars 5]{
                            
 @side-note["Tip"]{As with any kata, there is not a "daily number of required katas",
  so you can always leave off a kata or return to it another day.}

 @side-note["Tip"]{Any mix of keywords here is okay, as long as they
 all have the required sprite and name, and at least one of them does not respawn.}

 @(to-earn-this-code-kata #:english "Make a game that has an avatar, and more than one
coin with a custom sprite, name, value, amount in world, and respawn value."
                          #:lang 'survival
                          #:code 'coin-3
                          #:badge-type @COIN-KATA)
 }
