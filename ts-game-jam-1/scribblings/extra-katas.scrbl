#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== EXTRA KATAS =======
@title{Extra Katas}

@;----- Starvation Rate ------

@game-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Starvation Rate"
               #:time-limit 3
               #:dollars 1]{
                                                        
 @side-note["Tip"]{This is an optinal Kata.}

 @side-note["Formula"]{The formula is (100 - x) = number of ticks to lose 1 health.}

 @side-note["Examples"]{If x = 99 the avatar will lose 1 health every tick.
  If x = 50 the avatar will lose 1 health every 50 ticks.
  If x = 0 the avatar will lose 1 health every 100 ticks.
  If x = -200 the avatar will lose 1 health every 300 ticks.}

 @(to-earn-this-code-kata #:english    "Write a game with an avatar and a custom starvation rate."
                          #:lang       'survival
                          #:code       'starvation-rate
                          #:badge-type @META-KATA)
}

@; ------ Day and Night Cycle

@game-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Day and Night Cycle"
               #:time-limit 3
               #:dollars 1]{
                                                        
 @side-note["Tip"]{This is an optinal Kata.}

 @(to-earn-this-code-kata #:english    "Write a game with an avatar and a custom day and night cycle."
                          #:lang       'survival
                          #:code       'starvation-rate
                          #:badge-type @META-KATA)
}