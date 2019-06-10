#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require scribble/manual)

(define tips
  (list

   'hello-world-1 ;; 1.2
   (list "This is the simplest way to make an adventure Harry Potter game.")
   
   
   'avatar-2 ;; 2.2
   (list "Look for more sprites in the " (bold "Assets Library") ".")
   'avatar-4 ;; 2.4
   (list "Each string is a line of text in a cutscene.")
   

   'food-1 ;; 3.1
   (list "The default potion heals by " (bold "10") ".")

   'food-2 ;; 3.2
   (list "Here is a link to all available colors: "
          (hyperlink "https://docs.racket-lang.org/draw/color-database___.html" "colors") ". Mix it up a bit!")

   'food-4 ;; 3.4
   (list "Don't forget the " (bold "recipe") "!")


   'loot-quest-1 ;; 4.1
   (list "Every deatheater has has a " (bold "#:loot-list") ".")
   'loot-quest-2 ;; 4.2
   (list "An " (bold "item")" can't talk.")


   'npc-1 ;; 5.1
   (list "The NPC modes are " (bold "'still") ", " (bold "'follow") ", " (bold "'wander") " (the default), and" (bold "'pace") ".")
   'npc-3 ;; 5.3
   (list "Try taking the NPC's response outside of the game function!")  
   'npc-5 ;; 5.5
   (list "Every quest has a " (bold "#:new-response-dialog") " variable.")


   'weapon-1 ;; 6.1
   (list "The default damage is " (bold "25") ".")
   'weapon-2 ;; 6.2
   (list "The firing modes are " (bold "'normal") ", " (bold "'random") ", " (bold "'spread") ", and "
         (bold "'homing") ".")
   'weapon-3 ;; 6.3
   (list "The default speed is " (bold "10") " and the default damage is " (bold "10") ".")
   'weapon-5 ;; 6.5
   (list "You can change a sprite's angle in a cutscene.")
))