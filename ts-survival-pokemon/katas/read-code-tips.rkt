#lang racket

(provide tips)

(require ts-kata-util/katas/main
         scribble/manual)

(define tips
  (list
 
   'avatar-2 ;; 2.1
   (list "Check out the " (bold "Assets Library") " for more cool sprites!")
   'avatar-3 ;; 2.2
   (list "The default speed is " (bold "10") ".")
   'avatar-4 ;; 2.3
   (list "The default key-mode is " (bold "'arrow-keys") ".")
   'avatar-5 ;; 2.4
   (list "Strong pokemon can take a " (bold "lot") " of hits.")

   
   'food-1 ;; DNE
   (list "By default, there will be only " (bold "1") " custom-food in world.")
   'food-2 ;; DNE
   (list "By default, custom-food will heal by " (bold "10") ".")
   'food-3 ;; 3.1
   (list "By default, custom-food will heal by " (bold "10") ".")
   'food-4 ;; 3.2
   (list "A " (bold "very rare") " food might only appear one time in a game.")
   'starvation-rate ;; 3.3
   (list "The default stavation-rate is " (bold "50") ".")
   'food-6 ;; 3.4
   (list "If a food \"heals by\" a " (bold "negative number") " then it actually takes health away.")
   'crafter-2 ;; DNE
   (list "By adding a recipe, the crafter now requires an item in the avatar's
         backpack to build something.")
   'crafter-3 ;; 3.5
   (list "Don't forget the " (bold "recipe") ".")


   'coin-2 ;; 4.2
   (list "The default value of basic-stone is " (bold "10") ".")
   'coin-5 ;; 4.5
   (list "When using the " (bold "(survival-game)") " function, you have to use a "
         (bold "#:coin-list") " instead of a #:stone-list.")


   'npc-3 ;; DNE
   #f   
   'npc-4 ;; 4.2
   (list "All options for #:mode are: " (bold "'follow") ", " (bold "'wander")
         ", " (bold "'pace") " and " (bold "'still") ".")
   'npc-5 ;; 4.3
   (list "The customization options for npcs are: " (bold "#:sprite") ", " (bold "#:position") ", "
         (bold "#:name") ", " (bold "#:tile") ", " (bold "#:mode") ", " (bold "#:game-width") ", "
         (bold "#:speed") ", " (bold "#:target") ", " (bold "#:sound") ", " (bold "#:scale") ", and "
         (bold "#:components") ".")
   'enemy-2 ;; DNE
   (list "Without the " (bold "curry") ", the game will have 10 of the same enemy.
          With curry, the game will have 10 different enemies.")
   'enemy-3 ;; DNE
   (list "The options for #:ai are " (bold "'easy") ", " (bold "'medium")
         " and " (bold "'hard") ".")
   'enemy-4 ;; 5.4
   (list "The options for #:ai are " (bold "'easy") ", " (bold "'medium")
         " and " (bold "'hard") ".")

   
   'bg-2 ;; DNE
   (list "See other bg-image options in the " (bold "assets library") ".")
   'bg-3 ;; 6.1
   (list "start-tile can take a number between " (bold "0") " (the default) and "
         (bold "9") ".")
   'sky-1 ;; 6.2
   (list "By default, the length-of-day will be " (bold "2400") ".")
   ;'sky-2 ;; 6.2
   ;(list "Max darkness takes a value between " (bold "0") " (no darkness) and "
   ;      (bold "255") " (total blackout).")
   'sky-2 ;; 6.2
   (list "Here is a link to all available colors: "
          (hyperlink "https://docs.racket-lang.org/draw/color-database___.html" "colors") ".")
   
   
   'weapon-crafter-1 ;; DNE
   (list "Other attacks to try include: " (bold "aqua-jet") ", " (bold "fire-spin") ", "
         (bold "waterfall") ", or " (bold "custom-attack") ".")
   ))