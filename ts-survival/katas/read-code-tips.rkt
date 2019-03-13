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
   (list "Rows and columns default to " (bold "3x3") ".")

   'bg-4
   (list "Start-tile can be between " (bold "0") " (the default) and "
         (bold "total-tiles minus 1") ". For example, a 2x2 grid has 4 tiles, so the last tile is tile 3.")

   'npc-3
   (list "All options for #:mode are: " (bold "'follow") ", " (bold "'wander")
         ", " (bold "'pace") " and " (bold "'still") ".")

   'level-design-1
   (list "This will fill the world with two types of trees.")

   'level-design-2
   (list "Setting hd? #t will use more detailed assets but it will take longer to load.")

   'level-design-3
   (list "make-world-objects works best with houses or trees and must only take two types. See the "
         (bold "Assets Library") " for more options.")

   'level-design-4
   (list "With a 3x3 bg, the posn x value can be between 0 and 480 and the y between 0 and 360."
         " Hue is any value between 0 and 360.")

   'weapon-crafter-2
   (list "You can also try: " (bold "spear, fire-magic, ice-magic, sword-magic, ring-of-fire, ring-of-ice, or ring-of-blades") ".")

   'weapon-crafter-3
   (list "The default speed for " (bold "fire-magic") " is " (bold "3") ".")
   
   ))