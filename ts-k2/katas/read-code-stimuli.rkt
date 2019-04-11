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
   (read-template "game where Ironman is the hero, and there are no enemies.  Give the hero a red Magic Orb power.")

   'hero-21
   (read-template "game where Ironman is the hero, and there are no enemies.  Give the hero a red Star Bit power.")

   'hero-22
   (read-template "game where Ironman is the hero, and there are no enemies.  Give the hero a red Energy Blast power.")

   'hero-23
   (read-template "game where Ironman is the hero, and there are three other Ironmen enemies.  Give each a Magic Orb power, each with a different color.")

   'hero-24
   (read-template "game where Ironman is the hero, and there are five other Ironmen enemies.  Give everyone a Magic Orb power, each with a different color.")

   'hero-25
   (read-template "game where Ironman is the hero, and there are five other Drax enemies.  Give everyone a Magic Orb power, each with a different color.")

   'hero-26
   (read-template "game where Ironman is the hero, and there are five other Drax enemies.  Give everyone a Magic Orb power, each with a different color.  Also add two Ironmen enemies with default powers.")

   'hero-27
   (read-template "game with two levels.  In the first level, the enemy is Gamora, and in the second level the enemy is Drax. In both levels, the hero is Ironman.")


   'hero-28
   (read-template "game with three levels.  In the first level, the enemy is Gamora, in the second level the enemy is Drax, in the third level the enemy is Hawkeye. In all levels, the hero is Ironman.")

   'hero-29
   (read-template "game with three levels.  In all levels, the hero is Ironman.  In the first level, there should be one Gamora enemy.  In each level after that, there should be one more Gamora enemy than before.")

   'hero-30
   (read-template "game with three levels.  In all levels, the hero is Ironman and the enemy is Gamora.  But make Gamora have a different colored magic orb power in each level.")

   'hero-31
   (read-template "game with three levels.  In all levels, the hero is Ironman and the enemies are Gamoras with Magic Orb powers.  Make each level have one more Gamora than the level before.  Also, give the Gamoras in each level a different power color than the level before.")
   
   'hero-32
   (read "Look at the code below, say out loud what it does then write it from memory")
   
   'hero-33
   (read "Look at the code below, say out loud what it does then write it from memory")

   'hero-34
   (read "Look at the code below, say out loud what it does then write it from memory")



   
   'farm-001
   (read-template "game where a Chicken is trying to survive by eating apples.")

   'farm-002
   (read-template "game where a Chicken is trying to survive by eating broccoli.")

   'farm-003
   (read-template "game where a Horse is trying to survive by eating broccoli, apples, and onions.")
   
   'farm-004
   (read-template "game where a Horse is trying to survive by eating potatoes and 2 other food items.")
   
   'farm-005
   (read-template "game where an animal of your choice is trying to survive by eating 3 different food items.")
   
   'farm-006
   (read-template "game where an animal of your choice is trying to survive by eating all 6 different food items.")

   'farm-007
   (read-template "game where an apple is trying to survive by eating broccoli.")

   'farm-008
   (read-template "game where a tomato is trying to survive by eating 2 fruits.")

   'farm-009
   (read-template "game where an onion is trying to survive by eating 3 different white animals.")

   'farm-010
   (read-template "game where a rabbit is trying to survive by eating another rabbit.")
   
   'farm-011
   (read-template "game where a cow is trying to survive by eating kiwis, and it can collect copper coins.")
   
   'farm-012
   (read-template "game where an animal of your choice is trying to survive by eating a food item of your choice and can collect a coin of your choice.")
   
   'farm-013
   (read-template "game where a sheep is trying to survive by eating kiwis and another food item of your choice, and it can collect silver coins and another coin of your choice.")
   
   'farm-014
   (read-template "game where a rabbit is trying to survive by eating bananas and apples, and it can collect gold coins.")
   
   'farm-015
   (read-template "game where an animal of your choice is trying to survive by eating copper coins, and it can collect apples.")
   
   'farm-016
   (read-template "game where an animal of your choice is trying to survive by eating 2 food items of your choice, and it can collect 2 coins of your choice.")
   
   'farm-017
   (read-template "game where an animal of your choice is trying to survive by eating potatoes, and it can collect 2 coins of your choice.")
   
   'farm-018
   (read-template "game where an animal of your choice is trying to survive by eating 2 food items of your choice, and it can collect all 3 types of coins.")

   'farm-019
   (read-template "game where a potato is trying to surviv by eating a randon coin, and it can collect a random food item.")
   
   'farm-020
   (read-template "game where an animal of your choice is trying to survive by eating 5 food items of your choice, and it can collect 5 coins of your choice.")
   
   'farm-021
   (read-template "game where a sheep is trying to survive by eating grapes, it can collect silver coins, and a dog is the enemy.")

   'farm-022
   (read-template "game where a horse is trying to survive by eating peppers and kiwis, it can collect silver and gold coins, and a wolf is the enemy.")

   'farm-023
   (read-template "game where an animal of your choice  is trying to survive by eating apples and another food item of your choice, it can collect silver coins an another coin of your choice, and the enemy is an animal of your choice.")

   'farm-024
   (read-template "game where a wolf is trying to survive by eating apples and grapes, it can collect kiwis and peppers, and a sheep and cow are the enemies.")

   'farm-025
   (read-template "game where an apple is trying to survive by eating wolves and dogs, it can collect horses and llamas, and grapes, kiwis, and apples are the enemies.")
   
   'farm-026
   (read-template "game where a cow is tryng to survive by eating cows, it can collect cows, and a cow is the enemy.")

   'farm-027
   (read-template "game where an animal of your choice is trying to survive by eating 2 food items of your choice, it can collect 3 coins of your choice, and 4 animals of your choice are the enemies.")

   'farm-028
   (read-template "collection of 2 games. The first game will have a rabbit eating apples, collecting gold, and avoiding a dog. The next game will also have a rabbit eating kiwis, collecting silver, and avoiding a wolf. The objective of the game is to score 10 points. Once you reach those points in the first game, you can close it and it will open the following game which has the same objective of 10 points.")

   'farm-029
   (read-template "collection of 2 games. The first game will have an animal of you choice, eating apples and grapes, collecting silver and gold, and avoiding a wolf. The next game will also have an animal of your choice eating the same thing, collecting copper and silver, and avoiding a wolf. The objective of the game is to score 10 points. Once you reach those points in the first game, you can close it and it will open the following game which has the same objective of 10 points.")

   'farm-030
   (read-template "collection of 3 games. You can choose your animal in all three games and it can eat 2 food items of your choice. In the first game you can collect gold, silver in the second, and copper in the third. You will avoid 1 enemy of your choice in the first game, 2 in the second, and 3 in the third. The objective of the game is to score 10 points. Once you reach those points in the first game, you can close it and it will open the following game which has the same objective of 10 points.")
   ))

