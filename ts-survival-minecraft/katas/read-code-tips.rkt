#lang racket

(provide tips)

(require ts-kata-util/katas/main
         scribble/manual)

(define tips
  (list

   ;'kata-id
   ;(list "tip here and it " (bold "can") " include formatting"))

   'avatar-3
   #f

   
   'avatar-4 ;; 2.3
   (list "The default speed is " (bold "10") ".")
   'avatar-5 ;; DNE
   (list "The default key-mode is " (bold "'arrow-keys") ".")
   'avatar-6 ;; 2.4
   (list "The default key-mode is " (bold "'arrow-keys") ".")

   
   'food-1 ;; DNE
   (list "By default, there will be only " (bold "1") " custom-food in world.")
   'food-2 ;; DNE
   (list "By default, basic-food will heal by " (bold "10") ".")
   'food-3 ;; 3.1
   (list "By default, basic-food will heal by " (bold "10") ".")
   'food-4 ;; 3.2
   (list "A " (bold "very rare") " food might only ever spawn 1 time in a game.")
   'starvation-rate ;; 3.3
   (list "The default stavation-rate is " (bold "50") ".")
   'crafter-3 ;; 3.5
   (list "Don't forget the " (bold "recipe") ".")

   'enemy-2 ;; DNE
   (list "Without the " (bold "curry") ", the game will have 10 of the same enemy.
          With curry, the game will have 10 different enemies.")
   'enemy-3 ;; 4.1
   (list "The options for #:ai are " (bold "'easy") ", " (bold "'medium")
         " and " (bold "'hard") ".")
   'enemy-5 ;; 4.3
   (list "Ghasts shoot " (bold "fireballs") ".")
   'npc-3 ;; 4.4
   (list "All options for #:mode are: " (bold "'follow") ", " (bold "'wander")
         ", " (bold "'pace") " and " (bold "'still") ".")
   'npc-5 ;; 4.5
   (list "The customization options for npcs are: " (bold "#:sprite") ", " (bold "#:position") ", "
         (bold "#:name") ", " (bold "#:tile") ", " (bold "#:mode") ", " (bold "#:game-width") ", "
         (bold "#:speed") ", " (bold "#:target") ", " (bold "#:sound") ", " (bold "#:scale") ", and "
         (bold "#:components") ".")
   
   
   'coin-2 ;; 5.1
   (list "The default value of basic-ore is " (bold "10") ".")
   'crafter-2 ;; DNE
   (list "By adding a recipe, the crafter now requires an item in the avatar's
         backpack to build something.")


   'bg-2 ;; DNE
   (list "See other bg-image options in the " (bold "assets library") ".")
   'bg-3 ;; DNE
   (list "start-tile can take a number between " (bold "0") " (the default) and "
         (bold "9") ".")
   'sky-1 ;; 6.2
   (list "By default, the length-of-day will be " (bold "2400") ".")
   'sky-2 ;; 6.3
   (list "Here is a link to all available colors: "
          (hyperlink "https://docs.racket-lang.org/draw/color-database___.html" "colors") ".")
   'sky-3 ;; 6.4
   (list "Max darkness takes a value between " (bold "0") " (no darkness) and "
         (bold "255") " (total blackout).")
   ))