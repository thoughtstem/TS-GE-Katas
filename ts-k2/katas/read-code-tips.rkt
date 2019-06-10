#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require ts-kata-util/katas/rendering/scribble)
(require scribble/manual)

(define tips
  (list

   ;;Farm
   'farm-001 ;; 2.1
   (list "Move with " (bold "ARROW KEYS") " and eat food with "
         (bold "SPACE BAR") ". A new food will spawn each time one is eaten.")
   'farm-004 ;; 2.4
   (list "The Question Mark icon means students can choose any sprite.")
   'farm-006 ;; 2.6
   (list "Instead of choosing a sprite, you can also put the "
         (bold "Question Mark") " in your code to get a random avatar sprite each game.")
   'farm-010 ;; 3.4
   (list "Collect coins with " (bold "SPACE BAR")
         ". A new coin will spawn each time one is collected.")
   'farm-013 ;; 4.1
   (list "If you use random for the extra food and coin. Then they may not appear like a food or coin but they will act like it.")
   'farm-026 ;; 6.2
   (list "Sprites are sprites. It doesn't matter if you use apples, cows, or dogs. They are all the same thing to a computer.")
   'farm-028 ;; 6.4
   (list "To start one game right after another, just code it directly after the first game.")

   ;;Hero
   'hero-001 ;; 2.1
   (list "Move with " (bold "WASD") ".")
   'hero-007 ;; 3.1
   (list "To use a power in the game " (bold "left click") ". It will use towards your cursor.")
   'hero-009 ;; 3.3
   (list "Any hero or villian can have any power.")
   'hero-012 ;; 3.6
   (list "Instead of choosing a power, you can use the " (bold "Question Mark") " to use a random power.")
   'hero-018 ;; 4.6
   (list "Instead of choosing a color, you can use the " (bold "Equals Sign") "to use a random color.")
   'hero-024 ;; 5.6
   (list "You can always add something that isn't technically needed. It makes coding a bit more fun!")
   'hero-026 ;; 6.2
   (list "To start one game right after another, just code it directly after the first game.")
   'hero-028 ;; 6.4
   (list "Each game is a " (bold "separate") " game. This means that "
         (bold "every") " time you have to include the original Black Widow and Nebula." )
   
   ;;Sea
   'sea-004 ;; 2.4
   (list "The Question Mark icon means students can choose any sprite.")
   'sea-005 ;; 2.5
   (list "The "
         (bold "Question Mark") " can also be used to get a random sprite.")
   'sea-008 ;; 3.2
   (list "Instead of putting 5 potato icons, you can simply put the number 5 after the icon.")
   'sea-011 ;; 3.5
   (list "All " (bold "sprites do the same thing") ". So you can have a fruit eating fish just by swapping the sprites.")
   'sea-018 ;; 4.6
   (list "To start one game right after another, just code it directly after the first game.")
   'sea-019 ;; 5.1
   (list "The code you write depends on the " (bold "#lang") ". In this case the second parameter is "
         (bold "friends") ". In the last #lang it was coins.")
   'sea-028 ;; 6.4
   (list "It is always good to write " (bold "readable code") ".")

   ;;Zoo
   'zoo-001 ;; 2.1
   (list "Move with " (bold "ARROW KEYS") " and eat food with "
         (bold "SPACE BAR") ". A new food will spawn each time one is eaten.")   
   'zoo-004 ;; 2.4
   (list "The Question Mark icon means students can choose any sprite.")
   'zoo-006 ;; 2.6
   (list "Instead of choosing a sprite, you can also put the "
         (bold "Question Mark") " in your code to get a random avatar sprite each game.")
   'zoo-011 ;; 3.5
   (list "Collect coins with " (bold "SPACE BAR")
         ". A new coin will spawn each time one is collected.")
   'zoo-019 ;; 5.1
   (list "Move with " (bold "ARROW KEYS") " and heal animals with "
         (bold "h") ". A message will appear when an animal is fully healed.")
   'zoo-020 ;; 5.2
   (list "The code you write depends on the " (bold "#lang") ". In this case the second parameter is "
         (bold "friends") ". In the last #lang it was coins.")
   'zoo-024 ;; 5.6
   (list "This will make the same game as above, but it uses numbers as inputs.")
   'zoo-029 ;; 6.5
   (list "To start one game right after another, just code it directly after the first game.")

   ))
