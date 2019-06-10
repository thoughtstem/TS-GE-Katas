#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require scribble/manual)

(define tips
  (list

   'avatar-2 ;; 2.2
   (list "Look for more sprites in the " (bold "Assets Library") ".")
   

   'enemy-4 ;; 4.3
   (list (bold "Weak") " villains cannot take many hits. " (bold "Strong") " villains can.")

   
   'enemy-weapon-1 ;; 4.4
   (list "Here is a link to all available colors: "
          (hyperlink "https://docs.racket-lang.org/draw/color-database___.html" "colors") ".")
   'enemy-weapon-3 ;; 4.5
   (list "The default damage is " (bold "5") " and the default speed is " (bold "10") ".")

   
   'power-2 ;; 5.1
   (list "Other darts besides " (bold "(energy-blast)") " are " (bold "(star-bit)") ", "
         (bold "(magic-orb)") ", and " (bold "(hammer)") ".")
   'power-3 ;; 5.2
   (list "The rarity levels are " (bold "'common") ", " (bold "'uncommon") ", " (bold "'rare") ", "
         (bold "'epic") ", and " (bold "'legendary") ".")
   'power-4 ;; 5.3
   (list "By default, every power's " (bold "rapid-fire") " variable is " (bold "true") ".")

   
   'drone-2 ;; 5.4
   (list "The firing modes are " (bold "'normal") ", " (bold "'random") ", " (bold "'spread") ", and "
         (bold "'homing") ".")

   
   'size-1 ;; 6.2
   (list "Use a negative number in " (bold "scale-sprite") " to shrink your character.")

   ))
