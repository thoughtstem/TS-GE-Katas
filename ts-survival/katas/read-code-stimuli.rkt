#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Make survival game with " noun)))

(define stimuli
  (list
   'avatar-1
   (read-template "a basic avatar")

   'avatar-2
   (read-template "an avatar that looks like a bat")

   'avatar-3
   (read-template "an avatar that looks like a solid yellow star")


   'avatar-4
   (read-template "an avatar that looks like a solid red circle")

   'avatar-5
   (read-template "an avatar that has a custom image")

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
   (read-template "an avatar and 5 bat enemies with medium AI.")

   'enemy-3
   (read-template "an avatar and 5 bat enemies with medium AI that shoot dangerous acid.")


   'coin-1
   (read-template "an avatar and a basic collectable coin")

   'coin-2
   (read-template "an avatar and a collectable coin worth 500")

   'coin-3
   (read-template "an avatar and 20 copper coins worth 500")

   'coin-4
   (read-template "an avatar, a copper coin, and a singe epic coin that: never respawns, looks like a bat, and is worth 1000")



   'crafter-1
   (read-template "an avatar and a basic crafter")

   'crafter-2
   (read-template "an avatar, a basic crafter, and carrot cake that heals you by 25")

   'crafter-3
   (read-template "an avatar and a crafter that takes a carrot and produces carrot cake that heals you by 25")

   'crafter-4
   (read-template "an avatar and a crafter that: 1) takes a carrot and produces carrot cake that heals you by 25, and 2) takes a carrot cake and produces a carrot cupcake ")

   ))
