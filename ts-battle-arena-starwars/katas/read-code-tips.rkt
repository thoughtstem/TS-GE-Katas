#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require scribble/manual)

(define tips
  (list

   'avatar-2 ;;2.2
   (list "Check out more sprites in the " (bold "Asset Library") "!")
   

   'enemy-4 ;;3.3
   (list (bold "Weak") " Imperials can't take as many hits as " (bold "strong") " Imperials.")


   'enemy-weapon-2 ;;3.4
   (list "Here is a link to all available colors: "
          (hyperlink "https://docs.racket-lang.org/draw/color-database___.html" "colors") ". Mix it up a bit!")


   'lightsaber-2 ;;4.2
   (list "The rarity levels are " (bold "'common") ", " (bold "'uncommon") ", " (bold "'rare") ", "
         (bold "'epic") ", and " (bold "'legendary") ".")
   'lightsaber-3 ;;4.3
   (list "The default damage is " (bold "25") ".")


   'blaster-3 ;;4.5
   (list "A blaster with a durability of " (bold "10") " will go through 1 Imperial. If durability was "
         (bold "20") " it would go through 2 Imperials.")


   'lightsaber-droid-3 ;;6.4
   (list "Another word for fast-moving could be " (bold "fire-rate") ".")


   'blaster-droid-2 ;;6.5
   (list "The firing modes are " (bold "'normal") ", " (bold "'random") ", " (bold "'spread") ", and "
         (bold "'homing") ".")
   ))
