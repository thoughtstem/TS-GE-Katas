#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Write code to make a " noun )))

(define stimuli
  (list

   'fish-1
   (read-template "red fish")

   'fish-2
   (read-template "blue fish")

   'fish-3
   (read-template "red fish beside a blue fish")

   'fish-4
   (read-template "red fish above a blue fish")

   'fish-5
   (read-template "red fish above a blue fish -- with a green fish beside them")

   'hero-0
   (read-template "spritesheet for Blackwidow")

   'hero-1
   (read-template "spritesheet for Ironman")

   'hero-2
   (read-template "spritesheet for Gamora")

   'hero-3
   (read-template "game where Gamora is the hero")

   'hero-4
   (read-template "game where Ironman is the hero")

   'hero-5
   (read-template "game where Blackwidow is the hero")

   'hero-6
   (read-template "game where Blackwidow is the hero, and Gamora and Ironman are enemies.")

   'hero-7
   (read-template "game where Ironman is the hero, and Gamora and Blackwidow are enemies.")

   'hero-8
   (read-template "game where Ironman is the hero, and Ironman is also an enemy.")

   'hero-9
   (read-template "game where Ironman is the hero, and there are three Ironman enemies too.")

   'hero-10
   (read-template "game where Gamora is the hero, and there are four Gamora enemies too.")


   'hero-11
   (read-template "game where Ironman is the hero, and Gamora is your enemy.  Give Gamora a Hammer power.")

   'hero-12
   (read-template "game where Ironman is the hero, and three Gamoras are your enemies.  Give ONE Gamora a Hammer power.")

   'hero-13
   (read-template "game where Ironman is the hero, and three Gamoras are your enemies.  Give EACH Gamora a Hammer power.")

   'hero-14
   (read-template "game where Ironman is the hero, and the enemies are Drax, Hawkeye, and Gamora.  Give EACH enemy a Hammer power.")

   'hero-15
   (read-template "game where Ironman is the hero, and the enemies are four other Ironmans.  Give the hero a Hammer power.  Give nothing to the enemies.")

   'hero-16
   (read-template "game where Ironman is the hero, and the enemies are four other Ironmans.  Give the hero a Hammer power.  Give the enemies Hammer powers too.")

   'hero-17
   (read-template "game where Ironman is the hero, and the enemies are four other Ironmans.  Give the hero a Hammer power, and give the enemies all a Magic Orb.")

   'hero-18
   (read-template "game where Ironman is the hero, and the enemies are two Draxes and two Blackwidows.  Give the hero a Hammer power, give each Drax a Magic Orb power, and give each Blackwidow a Hammer power.")

   'hero-19
   (read-template "game where Ironman is the hero, and the enemies are two Draxes, two Blackwidows, and two other Ironmen.  Give the hero a Hammer power, give each Drax a magic orb, and give each Blackwidow a Hammer power.  Give the Ironmen no powers (just the default).")

   'hero-20
   (read-template "a game where Ironman is the hero, and there are no enemies.  Give the hero a red Magic Orb power.")

   'hero-21
   (read-template "a game where Ironman is the hero, and there are no enemies.  Give the hero a red Star Bit power.")

   'hero-22
   (read-template "a game where Ironman is the hero, and there are no enemies.  Give the hero a red Energy Blast power.")

   'hero-23
   (read-template "a game where Ironman is the hero, and there are three other Ironmen enemies.  Give each a Magic Orb power, each with a different color.")

   'hero-24
   (read-template "a game where Ironman is the hero, and there are five other Ironmen enemies.  Give everyone a Magic Orb power, each with a different color.")

   'hero-25
   (read-template "a game where Ironman is the hero, and there are five other Drax enemies.  Give everyone a Magic Orb power, each with a different color.")

   'hero-26
   (read-template "a game where Ironman is the hero, and there are five other Drax enemies.  Give everyone a Magic Orb power, each with a different color.  Also add two Ironmen enemies with default powers.")

   'hero-27
   (read-template "a game with two levels.  In the first level, the enemy is Gamora, and in the second level the enemy is Drax. In both levels, the hero is Ironman.")


   'hero-28
   (read-template "a game with three levels.  In the first level, the enemy is Gamora, in the second level the enemy is Drax, in the third level the enemy is Hawkeye. In all levels, the hero is Ironman.")

   'hero-29
   (read-template "a game with three levels.  In all levels, the hero is Ironman.  In the first level, there should be one Gamora enemy.  In each level after that, there should be one more Gamora enemy than before.")

   'hero-30
   (read-template "a game with three levels.  In all levels, the hero is Ironman and the enemy is Gamora.  But make Gamora have a different colored magic orb power in each level.")

   'hero-31
   (read-template "a game with three levels.  In all levels, the hero is Ironman and the enemies are Gamoras with Magic Orb powers.  Make each level have one more Gamora than the level before.  Also, give the Gamoras in each level a different power color than the level before.")
   
   'hero-32
   (read "Look at the code below, say out loud what it does then write it from memory")
   
   'hero-33
   (read "Look at the code below, say out loud what it does then write it from memory")

   'hero-34
   (read "Look at the code below, say out loud what it does then write it from memory")



   
   'farm-1
   (read-template "a game where a Chicken is trying to survive by eating apples.")

   'farm-2
   (read-template "a game where a Chicken is trying to survive by eating brocolli.")

   'farm-3
   (read-template "a game where a Horse is trying to survive by eating brocolli, apples, and onions.")
   
   'farm-4
   (read-template "a game where a Horse is trying to survive by eating potatoes and 2 other food items.")
   
   'farm-5
   (read-template "a game where an animal of your choice is trying to survive by eating 3 different food items.")
   
   'farm-6
   (read-template "a game where an animal of your choice is trying to survive by eating all 6 different food items.")
   ))

