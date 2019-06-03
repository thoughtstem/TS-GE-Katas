#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game with " s)))
                  
(define stimuli
  (list

   'hello-world-1
   (read "Code a basic Avengers game")

  
   'avatar-1
   (read-prefix "a hero.")
   'avatar-2
   (read-prefix "Thor as the hero.")
   'avatar-3
   (read-prefix "a fast-moving Hulk hero.")
   'avatar-4
   (read-prefix "a fast-moving Drax hero, a large backpack, and double the health and shield values.")

   
   'background-1
   (read-prefix "a planet.")
   'background-2
   (read-prefix "a lava planet.")
   'background-4
   (read-prefix "a high-definition lava planet, fewer tiles, and different starting tile.")


   'level-design-1
   (read-prefix "a forest planet that has world objects.")
   'level-design-3
   (read-prefix "a pink planet that has 2 randomly-colored types of trees in high-definition.")

   
   'enemy-1
   (read-prefix "a villain.")
   'enemy-3
   (read-prefix "several moderately intelligent Loki villains and have double health and shield.")
   'enemy-4
   (read-prefix "8 enemies: 5 weak with low intellegence, and 3 strong with high intellence. Choose your own sprites.")

   
   'enemy-weapon-1
   (read-prefix "a villain that uses an energy blast of a custom color.")
   'enemy-weapon-3
   (read-prefix "Mandarin as the villain who uses a powerful, fast, custom-colored ring of fire that lasts a while.")

   
   'power-2
   (read-prefix "a powerful, custom-colored energy blast.")
   'power-3
   (read-prefix "powerful, fast, custom-colored star bit with high rarity.")
   'power-4
   (read-prefix "2 weapons: 1 powerful, fast magic orb with spread and single-click shooting mode; and 1 powerful, fast hammer with a custom color and high rarity.")

   'boost-1
   (read-prefix "a \"Damage Boost\" item that temporarily increases the damage of your power and customize the icon.")
   
   
   
   'drone-2
   (read-prefix "an energy drone that uses a spread-shot energy blast of a custom color.")
   'drone-3
   (read-prefix "an energy drone that uses a powerful, fast-shooting, homing energy blast of a custom color.")


   'armor-1
   (read-prefix "that has a collectible Energy Armor.")
   'armor-2
   (read-prefix "that has a fully customized Energy Armor.")
   'armor-3
   (read-prefix "that has an enemy and armor to protect your hero!")
   
   ))