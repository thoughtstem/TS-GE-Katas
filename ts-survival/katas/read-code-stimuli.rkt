#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Make a survival game with " noun ".")))

(define stimuli
  (list
   'avatar-1
   (read-template "a basic avatar")

   'avatar-2
   (read-template "an avatar that looks like a solid yellow star")

   'avatar-3
   (read-template "an avatar that is a random-character")

   'avatar-4
   (read-template "an avatar that has a custom drawing made in Piskel")

   'avatar-5
   (read-template "an avatar that has a custom animation made in Piskel")

   'food-1
   (read-template "an avatar and some custom food")

   'food-2
   (read-template "an avatar and exactly two custom foods that heal you by 20")

   'food-3
   (read-template "an avatar and exactly two apples that heal you by 20")

   'food-4
   (read-template "an avatar, 2 apples (heals by 20 and respawns), and 1 cherry (heals by 50 and doesn't respawn)")


   'enemy-1
   (read-template "an avatar and an enemy")

   'enemy-2
   (read-template "an avatar and 10 random enemies")

   'enemy-3
   (read-template "an avatar and 5 bat enemies with medium AI")

   'enemy-4
   (read-template "an avatar, 5 easy slime enemies, and 5 medium bat enemies that only come out at night")

   'enemy-5
   (read-template "an avatar and 5 hard bat enemies that spit acid with 50 damage")

   'coin-1
   (read-template "an avatar and a basic collectable coin")

   'coin-2
   (read-template "an avatar and a collectable coin worth 500")

   'coin-3
   (read-template "an avatar and 20 silver coins worth 500")

   'coin-4
   (read-template "an avatar, a silver coin, and a single epic gold coin that never respawns and is worth 1000")



   'crafter-1
   (read-template "an avatar and a basic crafter")

   'crafter-2
   (read-template "an avatar, carrots, and a crafter that makes carrot stew from carrots")

   'crafter-3
   (read-template "an avatar, fish, and a crafter that makes fish stew that heals you by 50")

   'crafter-4
   (read-template "an avatar, carrots, fish, and a crafter on tile 2 (posn 200 200) that makes both carrot-stew and fish-stew")

   
   'sky-1
   (read-template "an avatar and a slow changing sky")

   'sky-2
   (read-template "an avatar and a fast changing sky with max-darkness")

   'sky-3
   (read-template "an avatar and a darkmagenta night-sky with 150 darkness")

   'sky-4
   (read-template "an avatar, a very short night-time, and an enemy that only comes out at night")

   'starvation-rate
   (read-template "an avatar and the fastest starvation rate")

   ))
