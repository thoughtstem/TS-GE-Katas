#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Write code to make a " noun )))

(define (read-multi-game-template noun)
  (read (~a "Write a collection of games. " noun " The objective of each game is to score 10 points. Once you reach that score, close the game and continue with the next.")))

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

   'hero-000
   (read-template "spritesheet for Blackwidow")

   'hero-001
   (read-template "spritesheet for Ironman")

   'hero-002
   (read-template "spritesheet for Gamora")

   'hero-003
   (read-template "game where Gamora is the hero")

   'hero-004
   (read-template "game where Ironman is the hero")

   'hero-005
   (read-template "game where Blackwidow is the hero")

   'hero-006
   (read-template "game where Blackwidow is the hero, and Gamora and Ironman are enemies.")

   'hero-007
   (read-template "game where Ironman is the hero, and Gamora and Blackwidow are enemies.")

   'hero-008
   (read-template "game where Ironman is the hero, and Ironman is also an enemy.")

   'hero-009
   (read-template "game where Ironman is the hero, and there are three Ironman enemies too.")

   'hero-010
   (read-template "game where Gamora is the hero, and there are four Gamora enemies too.")


   'hero-011
   (read-template "game where Ironman is the hero, and Gamora is your enemy.  Give Gamora a Hammer power.")

   'hero-012
   (read-template "game where Ironman is the hero, and three Gamoras are your enemies.  Give ONE Gamora a Hammer power.")

   'hero-013
   (read-template "game where Ironman is the hero, and three Gamoras are your enemies.  Give EACH Gamora a Hammer power.")

   'hero-014
   (read-template "game where Ironman is the hero, and the enemies are Drax, Hawkeye, and Gamora.  Give EACH enemy a Hammer power.")

   'hero-015
   (read-template "game where Ironman is the hero, and the enemies are four other Ironmans.  Give the hero a Hammer power.  Give nothing to the enemies.")

   'hero-016
   (read-template "game where Ironman is the hero, and the enemies are four other Ironmans.  Give the hero a Hammer power.  Give the enemies Hammer powers too.")

   'hero-017
   (read-template "game where Ironman is the hero, and the enemies are four other Ironmans.  Give the hero a Hammer power, and give the enemies all a Magic Orb.")

   'hero-018
   (read-template "game where Ironman is the hero, and the enemies are two Draxes and two Blackwidows.  Give the hero a Hammer power, give each Drax a Magic Orb power, and give each Blackwidow a Hammer power.")

   'hero-019
   (read-template "game where Ironman is the hero, and the enemies are two Draxes, two Blackwidows, and two other Ironmen.  Give the hero a Hammer power, give each Drax a magic orb, and give each Blackwidow a Hammer power.  Give the Ironmen no powers (just the default).")

   'hero-020
   (read-template "game where Ironman is the hero, and there are no enemies.  Give the hero a red Magic Orb power.")

   'hero-021
   (read-template "game where Ironman is the hero, and there are no enemies.  Give the hero a red Star Bit power.")

   'hero-022
   (read-template "game where Ironman is the hero, and there are no enemies.  Give the hero a red Energy Blast power.")

   'hero-023
   (read-template "game where Ironman is the hero, and there are three other Ironmen enemies.  Give each a Magic Orb power, each with a different color.")

   'hero-024
   (read-template "game where Ironman is the hero, and there are five other Ironmen enemies.  Give everyone a Magic Orb power, each with a different color.")

   'hero-025
   (read-template "game where Ironman is the hero, and there are five other Drax enemies.  Give everyone a Magic Orb power, each with a different color.")

   'hero-026
   (read-template "game where Ironman is the hero, and there are five other Drax enemies.  Give everyone a Magic Orb power, each with a different color.  Also add two Ironmen enemies with default powers.")

   'hero-027
   (read-template "game with two levels.  In the first level, the enemy is Gamora, and in the second level the enemy is Drax. In both levels, the hero is Ironman.")


   'hero-028
   (read-template "game with three levels.  In the first level, the enemy is Gamora, in the second level the enemy is Drax, in the third level the enemy is Hawkeye. In all levels, the hero is Ironman.")

   'hero-029
   (read-template "game with three levels.  In all levels, the hero is Ironman.  In the first level, there should be one Gamora enemy.  In each level after that, there should be one more Gamora enemy than before.")

   'hero-030
   (read-template "game with three levels.  In all levels, the hero is Ironman and the enemy is Gamora.  But make Gamora have a different colored magic orb power in each level.")

   'hero-031
   (read-template "game with three levels.  In all levels, the hero is Ironman and the enemies are Gamoras with Magic Orb powers.  Make each level have one more Gamora than the level before.  Also, give the Gamoras in each level a different power color than the level before.")
   
   'hero-032
   (read "Look at the code below, say out loud what it does then write it from memory")
   
   'hero-033
   (read "Look at the code below, say out loud what it does then write it from memory")

   'hero-034
   (read "Look at the code below, say out loud what it does then write it from memory")



   
   'farm-001
   (read-template "game where a chicken is trying to survive by eating apples.")

   'farm-002
   (read-template "game where a chicken is trying to survive by eating broccoli.")

   'farm-003
   (read-template "game with a horse, 1 broccoli, 1 apple, and 1 onion.")
   
   'farm-004
   (read-template "game with a horse, 1 potato, and 2 other different food items.")
   
   'farm-005
   (read-template "game with an animal, and 3 other different food items.")
   
   'farm-006
   (read-template "game with an animal and all 6 different food items.")

   'farm-007
   (read-template "game with a cow, 5 apples, and 5 kiwis.")

   'farm-008
   (read-template "game with a llama, 3 of a certain food, and 5 of another food.")

   'farm-009
   (read-template "game with a cow, 1 of a certain food, 2 of another food, and 3 of another.")

   'farm-010
   (read-template "game with a rabbit, 1 apple, and copper coins.")
   
   'farm-011
   (read-template "game with a cow, 1 kiwis, and gold coins.")
   
   'farm-012
   (read-template "game with an animal, 1 food item of your choice, and coins of your choice.")
   
   'farm-013
   (read-template "game with a sheep, 1 kiwis, 1 of another food, silver coins, and another coin.")
   
   'farm-014
   (read-template "game with a rabbit, 5 bananas, 5 apples, and gold coins.")
   
   'farm-015
   (read-template "game with an animal, 10 kiwis, and copper coins.")
   
   'farm-016
   (read-template "game with an animal, 3 of one food, 5 of another food, and 2 types of coins.")
   
   'farm-017
   (read-template "game with an animal, 1 potato, and 2 coins of your choice.")
   
   'farm-018
   (read-template "game with an animal, 2 different food items, and all 3 types of coins.")

   'farm-019
   (read-template "game with a sheep, 1 apple, silver coins, and a dog has an enemy.")
   
   'farm-020
   (read-template "game with an animal, 5 different food items, and 5 different coins.")
   
   'farm-021
   (read-template "game with a sheep, kiwis, grapes, silver coins, and a dog and a wolf as the enemies.")

   'farm-022
   (read-template "game with a horse, 1 pepper, 1 kiwi, silver and gold coins, and a wolf as the enemy.")

   'farm-023
   (read-template "game with an animal, 3 apples, 5 of another food item, silver coins, another type of coin, and an enemy of your choice.")

   'farm-024
   (read-template "game with a wolf, 1 apple, 10 grapes, kiwi coins, peppers coins, and a sheep and cow as the enemies.")

   'farm-025
   (read-template "game with a horse, 3 peppers, 3 grapes, 3 kiwis, silver coins, gold coins, 3 dogs and 1 wolf as enemies.")
   
   'farm-026
   (read-template "game with an apple, eating 5 apples, collecting apple coins, and 2 apple enemies.")

   'farm-027
   (read-template "game with an animal, 2 food items with an amount of 5, 3 coins of your choice, and 4 different enemies.")

   'farm-028
   (read-multi-game-template "The first game will have a rabbit, 1 apple, and gold coins. The second game will have a rabbit, 1 kiwi, silver coins, and a dog enemy.")

   'farm-029
   (read-multi-game-template "The first game will have an animal of you choice, 3 apples, 5 grapes, silver coins, and gold coins. The second game will have an animal, 1 apple, 1 grape, copper coins, silver coins, and a wolf enemy.")

   'farm-030
   (read-multi-game-template "The first game will have a horse, 5 apples, 5 grapes, 5 kiwis, gold coins, and a dog as the enemy. The second one will have a llama, 5 apples, 5 grapes, silver coins, 2 dog enemies, and 1 wolf enemy. The third one will have a rabbit, 5 apples, copper coins, and 3 wolf enemies.")



   'sea-001
   (read-template "game where you are a yellow fish finding and eating pineapples.")

   'sea-002
   (read-template "game where you are a crab finding and eating kiwi fruit.")

   'sea-003
   (read-template "game where you are a red fish finding and eating broccoli, tomatoes and apples.")

   'sea-004
   (read-template "game where you are a starfish finding and eating pineapple and two other foods of your choice.")

   'sea-005
   (read-template "game where you are a sprite of your choice hunting for three foods of your choice.")

   'sea-006
   (read-template "game where you are a sprite of your choice hunting for pineapples, broccoli, kiwis, tomatoes and apples.")

   'sea-007
   (read-template "game where you are an apple hunting for broccoli.")

   'sea-008
   (read-template "game where you are a pineapple hunting for two foods of your choice.")

   'sea-009
   (read-template "game where you are a kiwi hunting for three foods of your choice.")

   'sea-010
   (read-template "game where you are a green fish hunting for other green fish!")

   'sea-011
   (read-template "game where you are shark hunting for kiwi fruit and collecting copper coins.")

   'sea-012
   (read-template "game where you are a sprite of your choice hunting for one sprite of your choice and collecting a sprite of your choice.")

   'sea-013
   (read-template "game where you are an octopus hunting for pineapples and another sprite of your choice, and collecting silver coins and another sprite of your choice.")

   'sea-014
   (read-template "game where you are a jellyfish hunting for broccoli and apples and collecting gold coins.")

   'sea-015
   (read-template "game where you are a sprite of your choice hunting for copper coins and collecting apples!")

   'sea-016
   (read-template "game where you are a sprite of your choice hunting for two sprites of your choice and collecting two sprites of your choice.")

   'sea-017
   (read-template "game where you are a sprite of your choice hunting for tomatoes and collecting two sprites of your choice.")

   'sea-018
   (read-template "game where you are a sprite of your choice hunting for two other sprites of your choice and collecting copper, silver and gold coins.")

   'sea-019
   (read-template "game where you are a broccoli hunting for a sprite of your choice and collecting a sprite of your choice.")

   'sea-020
   (read-template "game where you are a sprite of your choice hunting for four sprites of your choice and collecting four sprites of your choice.")

   'sea-021
   (read-template "game where you are a ghost fish hunting for strawberries and avoiding a shark enemy.")

   'sea-022
   (read-template "game where you are a jellyfish hunting for potatoes and cherries and avoiding a red fish enemy.")

   'sea-023
   (read-template "game where you are a sprite of your choice hunting for mushrooms and another sprite of your choice and avoiding an enemy of your choice.")

   'sea-024
   (read-template "game where you are a shark hunting for apples and strawberries and avoiding crab and jellyfish enemies.")

   'sea-025
   (read-template "game where you are a strawberry hunting for orange fish and octopus and avoiding tomato, kiwi, and banana enemies!")

   'sea-026
   (read-template "game where you are a shark hunting for sharks and avoiding a shark enemy!")

   'sea-027
   (read-template "game where you are a sprite of your choice, hunting for two other sprites of your choice, and avoiding four enemies of your choice.")

   'sea-028
   (read-template "collection of 2 games. In the first game, you are an octopus hunting for apples and avoiding a crab enemy.
                   In the second game, you are still an octopus, but hunting for cherries and avoiding a shark enemy!")

   'sea-029
   (read-template "collection of 2 games. In the first game, you are a sprite of your choice hunting for strawberries and potatoes and avoiding an orange fish enemy.
                   When you 'level up' in the next game, every thing is the same except you are now avoiding a jellyfish enemy.")

   'sea-030
   (read-template "collection of 3 games. In all games, you can be the sprite of your choice hunting two sprites of your choice and avoiding two enemies of your choice.")

   'sea-031
   (read-template "game where you are a starfish healing an octopus friend.")

   'sea-032
   (read-template "game where you are a jellyfish healing  green fish, orange fish and red fish friends.")

   'sea-033
   (read-template "game where you are a shark healing yellow fish and ghost fish friends.")

   'sea-034
   (read-template "game where you are a crab healing three other crab friends!")

   'sea-035
   (read-template "game where you are a sprite of your choice healing red fish, starfish and broccoli friends.")

   'sea-036
   (read-template "game where you are mushroom healing apple, kiwi, pineapple and broccoli friends!")

   'sea-037
   (read-template "game where you are a sprite of your choice healing yellow fish and shark friends and two other sprites of your choice.")

   'sea-038
   (read-template "collection of 2 games. In both games you are a ghost fish. In the first game you are healing starfish and orange fish friends.
                   In the second game, you are healing a crab friend and three other sprites of your choice.")

   'sea-039
   (read-template "collection of 2 games. In bothe games you are a sprite of your choice. In the first game you are healing an octopus friend and two other sprites of your choice.
                   In the second game, you are healing a green fish and two other sprites of your choice.")

   'sea-040
   (read-template "game where you are a sprite of your choice healing four friends of your choice.")))

