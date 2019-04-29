#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Write code to make a " noun )))

(define (short-template noun)
  (read (~a "Code a game with " noun)))

(define (read-multi-game-template noun)
  (read (~a "Write a collection of games. " noun " Close one game to continue with the next.")))

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
   (read "Create a basic hero game.")

   'hero-003
   (short-template "Gamora as the hero.")

   'hero-004
   (short-template "Ironman as the hero.")

   'hero-005
   (short-template "Blackwidow as the hero")

   'hero-006
   (short-template "Blackwidow as the hero battling Gamora and Ironman.")

   'hero-007
   (short-template "Ironman battling Gamora and Blackwidow.")

   'hero-008
   (short-template "Ironman battling Ironman!")

   'hero-009
   (short-template "Ironman battling 3 other Ironman!")

   'hero-010
   (short-template "Gamora battling 4 other Gamoras!")

   'hero-011
   (short-template "Ironman battling Gamora with Hammer power.")

   'hero-012
   (short-template "Ironman battling 1 Gamora with Hammer power, and 2 other Gamoras.")

   'hero-013
   (short-template "Ironman battling 3 Gamoras with Hammer powers.")

   'hero-014
   (short-template "Ironman battling Drax, Hawkeye, and Gamora. Give EACH enemy Hammer powers.")

   'hero-015
   (short-template "Ironman with Hammer power battling 4 other Ironman.")

   'hero-016
   (short-template "Ironman with Hammer power battling 4 other Ironman with Hammer powers.")

   'hero-017
   (short-template "Ironman with Hammer power battling 4 other Ironman with Magic Orbs.")

   'hero-018
   (short-template "Ironman with Hammer power battling 2 Draxes with Magic Orbs, and 2 Blackwidows with Hammer powers.")

   'hero-019
   (short-template "Ironman with Hammer power battling 2 Draxes with Magic Orbs, 2 Blackwidows with Hammer powers, and 2 other Ironman with no powers.")

   'hero-020
   (short-template "Ironman with a RED Magic Orb.")

   'hero-021
   (short-template "Ironman with a RED Star Bit power.")

   'hero-022
   (short-template "Ironman with a RED Energy Blast power.")

   'hero-023
   (short-template "Ironman with a Magic Orb battling 3 other Ironman with Magic Orbs.  Make each Magic Orb a different color.")

   'hero-024
   (short-template "Ironman with a Magic Orb battling 5 other Ironman with Magic Orbs.  Make each Magic Orb a different color.")

   'hero-025
   (short-template "Ironman with a Magic Orb battling 5 Drax with Magic Orbs.  Make each Magic Orb a different color.")

   'hero-026
   (short-template "Ironman with a Magic Orb battling a Drax with Hammer power, 2 Drax with YELLOW Star Bit powers, 2 Drax with BLUE Energy Blast powers, and 2 other Ironman.")

   'hero-027
   (read-multi-game-template "The 1st level has Ironman battling Gamora. The 2nd level has Ironman battling Drax.")

   'hero-028
   (read-multi-game-template "The 1st level has Ironman battling Gamora. The 2nd level has Ironman battling Drax. The 3rd level has Ironman battling Hawkeye.")

   'hero-029
   (read-multi-game-template "The 1st level has Ironman battling Gamora. The 2nd level has Ironman battling 2 Gamoras. The 3rd level has Ironman battling 3 Gamoras!")

   'hero-030
   (read-multi-game-template "All 3 levels have Ironman battling Gamora. Give Gamora a different colored Magic Orb in each level.")

   'hero-031
   (read-multi-game-template "The 1st level has Ironman battling Gamora with a Magic Orb. The 2nd level adds another Gamora with a Magic Orb. The 3rd level adds one more Gamora with a Magic Orb. Give Gamora a different colored Magic Orb in each level.")
   
   'hero-032
   (read "Look at the code below, say out loud what it does then write it from memory")
   
   'hero-033
   (read "Look at the code below, say out loud what it does then write it from memory")

   'hero-034
   (read "Look at the code below, say out loud what it does then write it from memory")



   'farm-000
   (read "Create a basic farm game.")
   
   'farm-001
   (short-template "a chicken eating apples.")

   'farm-002
   (short-template "a chicken eating broccoli.")

   'farm-003
   (short-template "a horse eating broccoli, apples and onions.")
   
   'farm-004
   (short-template "a horse eating potatoes and 2 other foods.")
   
   'farm-005
   (short-template "an avatar eating 3 foods.")
   
   'farm-006
   (short-template "an avatar and all 6 different foods.")

   'farm-007
   (short-template "a cow eating 5 apples and 5 kiwis.")

   'farm-008
   (short-template "a llama eating 3 of one food, and 5 of another food.")

   'farm-009
   (short-template "a cow eating a food, 2 of another food, and 3 of another.")

   'farm-010
   (short-template "a rabbit eating apples and collecting copper coins.")
   
   'farm-011
   (short-template "a cow eating kiwi and collecting gold coins.")
   
   'farm-012
   (short-template "an avatar eating a food and collecting coins.")
   
   'farm-013
   (short-template "a sheep eating kiwis and another food, and collecting silver coins and another coin.")
   
   'farm-014
   (short-template "a rabbit eating 5 bananas and 5 apples, and collecting gold coins.")
   
   'farm-015
   (short-template "an avatar eating 10 kiwis and collecting copper coins.")
   
   'farm-016
   (short-template "an avatar eating 3 of one food and 5 of another, and collecting 2 different coins.")
   
   'farm-017
   (short-template "an avatar eating potatoes and collecting 2 coins.")
   
   'farm-018
   (short-template "an avatar eating 2 different foods and collecting all 3 coins.")

   'farm-019
   (short-template "a sheep eating apples, collecting silver coins, and avoiding a dog.")
   
   'farm-020
   (short-template "an avatar eating 5 different foods and collecting 5 different coins.")
   
   'farm-021
   (short-template "a sheep eating kiwis and grapes, collecting silver coins, and avoiding a dog and wolf.")

   'farm-022
   (short-template "a horse eating peppers and kiwi, collecting silver and gold coins, and avoiding a wolf.")

   'farm-023
   (short-template "an avatar eating 3 apples and 5 other foods, collecting silver and another coin, and avoiding an enemy.")

   'farm-024
   (short-template "a wolf eating apples and 10 grapes, collecting kiwi and peppers, and avoiding a sheep and cow.")

   'farm-025
   (short-template "a horse eating 3 peppers, 3 grapes and 3 kiwis, collecting silver and gold coins, and avoiding 3 dogs and a wolf.")
   
   'farm-026
   (short-template "an apple eating 5 apples, collecting apples, and avoiding 2 apples.")

   'farm-027
   (short-template "an avatar eating 5 of one food and 5 of another, collecting 3 different coins, and avoiding 4 different enemies.")

   'farm-028
   (read-multi-game-template "The 1st game has a rabbit eating apples and collecting gold coins.
                              The 2nd game has a rabbit eating kiwi, collecting silver coins, and avoiding a dog.")

   'farm-029
   (read-multi-game-template "The 1st game has an avatar eating 3 apples and 5 grapes and collecting silver and gold coins.
                              The 2nd game has an avatar eating apples and grapes, collecting copper and silver coins, and avoiding a wolf.")

   'farm-030
   (read-multi-game-template "The 1st game has a horse eating 5 apples, 5 grapes and 5 kiwis, collecting gold coins, and avoiding a dog.
                              The 2nd game has a llama eating 5 apples and 5 grapes, collecting silver coins, and avoiding 2 dogs and a wolf.
                              The 3rd game has a rabbit eating 5 apples, collecting copper coins, and avoiding 3 wolves.")


   'sea-000
   (read "Create a basic sea game.")
   
   'sea-001
   (short-template "a yellow fish eating pineapples.")

   'sea-002
   (short-template "a crab eating kiwis.")

   'sea-003
   (short-template "a red fish eating broccoli, tomatoes and apples.")

   'sea-004
   (short-template "a starfish eating pineapple and 2 other foods.")

   'sea-005
   (short-template "an avatar eating 3 foods.")

   'sea-006
   (short-template "an avatar eating pineapple, broccoli, kiwis, tomatoes and apples.")

   'sea-007
   (short-template "a ghost fish eating strawberries and avoiding a shark.")

   'sea-008
   (short-template "a jellyfish eating 5 potatoes and avoiding a red fish.")

   'sea-009
   (short-template "an avatar eating cherries and avoiding 5 crabs.")

   'sea-010
   (short-template "a shark eating 3 apples and 2 strawberries, and avoiding a crab and a jellyfish.")

   'sea-011
   (short-template "a strawberry eating orange fish and octopus and avoiding 8 bananas!")

   'sea-012
   (short-template "a shark eating 5 sharks and avoiding 5 sharks!")

   'sea-013
   (short-template "an octopus eating tomatoes and kiwi, and avoiding 3 orange fish.")

   'sea-014
   (short-template "an avatar eating 10 apples, and avoiding 10 enemies.")

   'sea-015
   (short-template "a jellyfish eating kiwi, and avoiding a RED jellyfish!")

   'sea-016
   (short-template "an avatar eating 5 PURPLE tomatoes, and avoiding 5 GREEN sharks.")

   'sea-017
   (short-template "an avatar eating 3 ORANGE foods and 3 YELLOW foods, and avoiding 2 BLUE enemies and 2 PURPLE enemies.")

   'sea-018
   (read-multi-game-template "The 1st game has an avatar eating strawberries and YELLOW potatoes, avoiding an orange fish.
                              The 2nd game is the same, except with 5 orange fish.")

   'sea-019
   (short-template "a starfish healing an octopus.")

   'sea-020
   (short-template "a jellyfish healing a green fish, an orange fish and a red fish.")

   'sea-021
   (short-template "a shark healing 2 yellow fish and 2 ghost fish.")

   'sea-022
   (short-template "a crab healing a RED crab, a GREEN crab and a PURPLE crab.")

   'sea-023
   (short-template "an avatar healing 5 friends and eating pineapples and broccoli.")

   'sea-024
   (read-multi-game-template "The 1st game has an avatar healing 4 yellow fish and eating 4 apples.
                              The 2nd game has an avatar healing 4 yellow fish and 4 more friends, and eating 4 BLUE apples.")

   'sea-025
   (short-template "an avatar healing a yellow fish and a BLUE shark and two other friends.")

   'sea-026
   (short-template "a ghost fish healing 5 PURPLE friends, eating 5 ORANGE mushrooms, and avoiding a shark.")

   'sea-027
   (read-multi-game-template "The 1st game has an avatar healing starfish and orange fish.
                              The 2nd game has an avatar healing a crab, green fish, red fish, and jellyfish.")

   'sea-028
   (read-multi-game-template "The 1st game has an avatar healing 4 GREEN octopus, eating 4 kiwi, and avoiding 4 crabs.
                              The 2nd game has an avatar healing 4 GREEN friends, eating 4 foods, and avoiding 4 enemies.")

   'sea-029
   (short-template "an avatar healing RED, ORANGE and YELLOW friends, eating 3 foods, and avoiding GREEN, BLUE and PURPLE enemies.")

   'sea-030
   (read-multi-game-template "The 1st game has an avatar healing an ORANGE starfish and ORANGE crab, eating ORANGE broccoli and ORANGE kiwi, and avoiding an ORANGE shark and ORANGE jellyfish.
                              The 2nd game has an avatar healing 3 orange fish and 3 green fish, eating 3 pineapples and 3 mushrooms, and avoiding 3 red fish and 3 yellow fish.")


   'zoo-000
   (read "Create a basic zoo game.")
   
   'zoo-001
   (short-template "a monkey eating bananas.")

   'zoo-002
   (short-template "an elephant eating grapes.")

   'zoo-003
   (short-template "a hippopotamus eating apples, potatos, and onions.")

   'zoo-004
   (short-template "a kangaroo eating apples and 2 foods.")

   'zoo-005
   (short-template "an avatar eating 3 different foods.")

   'zoo-006
   (short-template "an avatar eating apples, bananas, grapes, onions, and tomatoes.")

   
   'zoo-007
   (short-template "a hippopotamus eating 5 apples and 5 bananas.")

   'zoo-008
   (short-template "a hippopotamus eating 3 apples and 5 other foods.")

   'zoo-009
   (short-template "a monkey eating a RED banana, a GREEN banana, and a BLUE banana.")

   'zoo-010
   (short-template "a hippopotamus eating 5 PURPLE foods.")

   'zoo-011
   (short-template "a penguin eating a fish and collecting a copper coin.")

   'zoo-012
   (short-template "an avatar eating a food and collecting 5 GREEN gold coins.")

   
   'zoo-013
   (short-template "a zookeeper eating apples and collecting all 3 coin sprites (copper, silver, and gold).")
   
   'zoo-014
   (short-template "a zookeeper eating apples and bananas and collecting 2 gold coins, 4 silver coins, and 6 copper coins.")

   'zoo-015
   (short-template "an avatar eating 10 of the same food, and 10 PURPLE gold coins.")

   'zoo-016
   (short-template "a GREEN penguin eating 5 BLUE fish and collecting 10 RED gold coins.")

   'zoo-017
   (read-multi-game-template "The 1st game has a monkey eating 10 bananas.
                              The 2nd game has a monkey eating 10 bananas and collecting 10 silver coins.")

   'zoo-018
   (read-multi-game-template "The 1st game has an avatar eating 2 foods and collecting 5 copper coins.
                              The 2nd game has an avatar eating 2 foods and collecting 10 gold coins.")

   'zoo-019
   (short-template "a zookeeper that has to heal a monkey to full health.")

   'zoo-020
   (short-template "a zookeeper healing a monkey, an elephant, and a giraffe.")

   'zoo-021
   (short-template "a zookeeper healing a hippo and a kangaroo.")

   'zoo-022
   (short-template "a zookeeper healing 3 penguins.")

   'zoo-023
   (short-template "a zookeeper healing 2 monkeys and 2 elephants.")

   ;change stimuli to be different? or change example
   'zoo-024
   (short-template "a zookeeper healing 2 monkeys and 2 elephants.")

   
   'zoo-025
   (short-template "a PURPLE zookeeper healing 2 monkeys, 4 elephants, and 6 penguins.")

   'zoo-026
   (short-template "a RED zookeeper healing 4 GREEN and 4 PURPLE giraffes.")

   'zoo-027
   (short-template "a zookeeper healing 4 RED, 4 GREEN, and 4 BLUE friends.")

   'zoo-028
   (short-template "a zookeeper healing 5 monkeys and 5 hippos and eating 5 apples and 5 bananas.")

   'zoo-029
   (read-multi-game-template "The 1st game has a zookeeper healing 4 RED, 4 BLUE, and 4 GREEN monkeys.
                              The 2nd game has a zookeeper healing 4 ORANGE, 4 YELLOW, and 4 PURPLE giraffes.")

   'zoo-030
   (read-multi-game-template "The 1st game has a zookeeper healing 2 monkeys and 2 bananas.
                              The 2nd game has a zookeeper healing 4 penguins and 4 fish.
                              The 3rd game has a zookeeper healing 6 hippos and 6 apples.")
   ))

  
