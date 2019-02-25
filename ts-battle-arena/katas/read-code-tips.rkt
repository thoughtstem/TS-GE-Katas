#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require ts-kata-util/katas/rendering/scribble)
(require scribble/manual)

(define tips
  (list

   'avatar-3
   (list "The default speed is " (bold "10") ".")

   'avatar-4
   (list "The default item-slots is " (bold "2") ".")

   'enemy-2
   (list "Without the " (bold "curry") ", the game will have 10 of the same enemy.
          With curry, the game will have 10 different enemies.")
   
   'enemy-3
   (list "The options for #:ai are " (bold "'easy") ", " (bold "'medium") " or " (bold "'hard") ".")

   'sword-2
   (list "The default " (bold "damage") " is " (bold "25"))

   'sword-3
   (side-note "Rarity Rules" (itemlist (item (bold "'common")    " = 5 total")
                                       (item (bold "'uncommon")  " = 4 total")
                                       (item (bold "'rare")      " = 3 total")
                                       (item (bold "'epic")      " = 2 total")
                                       (item (bold "'legendary") " = 1 total")))

   'spear-2
   (list "The default " (bold "damage") " is " (bold "25"))

   'spear-3
   (side-note "Rarity Rules" (itemlist (item (bold "'common")    " = 5 total")
                                       (item (bold "'uncommon")  " = 4 total")
                                       (item (bold "'rare")      " = 3 total")
                                       (item (bold "'epic")      " = 2 total")
                                       (item (bold "'legendary") " = 1 total")))
  
   'background-2
   (list "See other bg-image options in the " (bold "assets library") ".")

   'background-3
   (list "Rows and columns default to " (bold "3x3") " and start-tile can be between " (bold "0") " (the default) and "
         (bold "8") ".")
   
   ))
