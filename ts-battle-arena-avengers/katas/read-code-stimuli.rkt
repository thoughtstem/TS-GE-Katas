#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))
                  
(define stimuli
  (list

   'hello-world-1
   (read "Code a basic Avengers game")

  
   'avatar-1
   (read-prefix "with a hero.")
   'avatar-2
   (read-prefix "with Thor as the hero.")
   'avatar-3
   (read-prefix "with a fast-moving Hulk as the hero.")
   'avatar-4
   (read-prefix "with a fast-moving Drax hero, a large backpack, and double the health and shield values.")

   
   'background-1
   (read-prefix "with a planet.")
   'background-2
   (read-prefix "with a lava planet.")
   'background-4
   (read-prefix "with a high definition lava planet, fewer tiles, and different starting tile.")


   'level-design-1
   (read-prefix "with a forest planet that has world objects.")
   'level-design-3
   (read-prefix "with a pink planet that has two randomly-colored types of trees in high definition.")

   
   'enemy-1
   (read-prefix "with a villain.")
   'enemy-3
   (read-prefix "with several Loki villains who are challenging to defeat, that have double heatlh and shield.")
   'enemy-4
   (read-prefix "with 8 enemies: 5 weak with easy ai, and 3 strong with hard ai. Choose your own sprites.")

   
   'enemy-weapon-1
   (read-prefix "with a villain that uses an energy blast of a custom color.")
   'enemy-weapon-3
   (read-prefix "with Mandarin as the villain that uses a more powerful, faster, custom colored ring of fire that lasts longer.")

   
   'power-2
   (read-prefix "with a more powerful, custom colored energy blast.")
   'power-3
   (read-prefix "with more powerful, faster, custom colored star bit with high rarity.")
   'power-4
   (read-prefix "with 2 weapons: 1 powerful, faster magic orb with spread and single-click shooting mode; and 1 powerful, faster hammer with a custom color and high rarity.")

   'boost-1
   (read-prefix "with a \"Damage Boost\" item that temporarily increases the damage of your power and customize the icon.")
   
   
   
   'drone-2
   (read-prefix "with an energy drone that uses a spread shot energy blast of a custom color.")
   'drone-3
   (read-prefix "with an energy drone that uses a more powerful, faster-shooting, homing energy blast of a custom color.")


   'armor-1
   (read-prefix "that has a collectible Energy Armor.")
   'armor-2
   (read-prefix "that has a fully customized Energy Armor.")
   'armor-3
   (read-prefix "that has an enemy and armor to protect your hero!")
   
   ))