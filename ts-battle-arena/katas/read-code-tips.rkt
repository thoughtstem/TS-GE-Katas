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

   'fire-magic-2
   (list "You can also try "
         (bold "ice-magic") ", "
         (bold "sword-magic") ", "
         (bold "ring-of-fire") ", "
         (bold "ring-of-ice") ", or "
         (bold "ring-of-blades") ".")

   'ice-magic-2
   (list "You can also try "
         (bold "fire-magic") ", "
         (bold "sword-magic") ", "
         (bold "ring-of-fire") ", "
         (bold "ring-of-ice") ", or "
         (bold "ring-of-blades") ".")

   'fire-magic-3
   (list "If you use " (bold "ring-of-fire, ring-of-ice, or ring-of-blades, ")
         "you must change "(bold "#:range") " to " (bold  "#:duration") ".")

   'fire-magic-4
   (list "If you use " (bold "ring-of-fire, ring-of-ice, or ring-of-blades, ")
         "you must change "(bold "#:range") " to " (bold  "#:duration") ".")

   'ice-magic-3
   (list "If you use " (bold "ring-of-fire, ring-of-ice, or ring-of-blades, ")
         "you must change "(bold "#:range") " to " (bold  "#:duration") ".")

   'ice-magic-4
   (list "If you use " (bold "ring-of-fire, ring-of-ice, or ring-of-blades, ")
         "you must change "(bold "#:range") " to " (bold  "#:duration") ".")

   'single-shot-1
   (list (bold "#:rapid-fire?") " defaults to " (bold "#t") ". True (#t) means that you can hold the fire button to shoot.")

   'single-shot-2
   (list "Default " (bold "damage, speed, and range ")
         "are " (bold "10, 10, and 1000") ".")

   'single-shot-3
   (side-note "Rarity Rules" (itemlist (item (bold "'common")    " = 5 total")
                                       (item (bold "'uncommon")  " = 4 total")
                                       (item (bold "'rare")      " = 3 total")
                                       (item (bold "'epic")      " = 2 total")
                                       (item (bold "'legendary") " = 1 total")))

   'spread-shot-1
   (list " #:fire-mode " (bold "'spread") " will fire 3 darts at once. Other options are: "
         (bold "'normal") " (default) and "
         (bold "'homing") ".")

   'spread-shot-2
   (list "Default " (bold "damage, durability, and speed ")
         "are " (bold "10, 10, and 10") ". A durabilty of 20 means each dart can hit 2 targets.")

   'spread-shot-3
   (side-note "Rarity Rules" (itemlist (item (bold "'common")    " = 5 total")
                                       (item (bold "'uncommon")  " = 4 total")
                                       (item (bold "'rare")      " = 3 total")
                                       (item (bold "'epic")      " = 2 total")
                                       (item (bold "'legendary") " = 1 total")))

   'homing-repeater-1
   (list " #:fire-mode " (bold "'homing") " will fire darts that follow enemies. Other options are: "
         (bold "'normal") " (default) and "
         (bold "'spread") ".")

   'homing-repeater-2
   (list "Default " (bold "damage, speed, and range ")
         "are " (bold "10, 10, and 1000") ".")

   'homing-repeater-3
   (side-note "Rarity Rules" (itemlist (item (bold "'common")    " = 5 total")
                                       (item (bold "'uncommon")  " = 4 total")
                                       (item (bold "'rare")      " = 3 total")
                                       (item (bold "'epic")      " = 2 total")
                                       (item (bold "'legendary") " = 1 total")))

   'spike-mine-2
   (list "Default " (bold "#:speed") " is " (bold "5") " and "
         "default " (bold "#:range") " is " (bold "20") ".")

   'spike-mine-3
   (list "Default " (bold "#:damage") " is " (bold "2") ".")

   'spear-tower-2
   (list "Default " (bold "#:speed") " is " (bold "5") " and "
         "default " (bold "#:range") " is " (bold "20") ".")

   'spear-tower-3
   (list "Default " (bold "#:damage") " is " (bold "50") ".")

   'lava-pit-2
   (list "Default " (bold "#:damage") " is " (bold "10") " and "
         "default " (bold "#:size") " is " (bold "1") ".")

   'lava-pit-3
   (list "Default " (bold "#:range") " is " (bold "5") ".")

   'background-2
   (list "See other bg-image options in the " (bold "assets library") ".")

   'background-3
   (list "Rows and columns default to " (bold "3x3") ".")

   'background-4
   (list "Start-tile can be between " (bold "0") " (the default) and "
         (bold "total-tiles minus 1") ". For example, a 2x2 grid has 4 tiles, so the last tile is tile 3.")

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

   ))
