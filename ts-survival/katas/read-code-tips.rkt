#lang racket

(provide tips)

(require ts-kata-util/katas/main
         scribble/manual)

(define tips
  (list

   ;'kata-id
   ;(list "tip here and it " (bold "can") " include formatting"))

   'avatar-3
   (list "The default speed is " (bold "10") ".")

   'avatar-4
   (list "The default key-mode is " (bold "'arrow-keys") ".")

   'food-1
   (list "By default, there will be only " (bold "1") " custom-food in world.")

   'food-2
   (list "By default, custom-food will heal by " (bold "10") ".")

   'enemy-2
   (list "Without the " (bold "curry") ", the game will have 10 of the same enemy.
          With curry, the game will have 10 different enemies.")

   'enemy-3
   (list "The options for #:ai are " (bold "'easy") ", " (bold "'medium")
         " and " (bold "'hard") ".")

   'coin-2
   (list "The default value of custom-coin is " (bold "10") ".")

   'crafter-2
   (list "By adding a recipe, the crafter now requires an item in the avatar's
         backpack to build something.")

   'sky-1
   (list "By default, the length-of-day will be " (bold "2400") ".")

   'sky-2
   (list "Max darkness takes a value between " (bold "0") " (no darkness) and "
         (bold "255") " (total blackout).")

   'starvation-rate
   (list "The default stavation-rate is " (bold "50") ".")

   'bg-2
   (list "See other bg-image options in the " (bold "assets library") ".")

   'bg-3
   (list "start-tile can take a number between " (bold "0") " (the default) and "
         (bold "9") ".")

   'npc-3
   (list "All options for #:mode are: " (bold "'follow") ", " (bold "'wander")
         ", " (bold "'pace") " and " (bold "'still") ".")
   
   ))