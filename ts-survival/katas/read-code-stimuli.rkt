 #lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Code a game with " noun)))

(define stimuli
  (list

   'hello-world-1
   (read "Code the basic survival game.")
   
   'avatar-1
   (read-template "a basic avatar.")
   'avatar-2
   (read-template "an avatar with a sprite picked from the assets library.")
   'avatar-3
   (read-template "an avatar with a custom sprite and speed of 20.")
   'avatar-4
   (read-template "an avatar with a custom sprite, speed and WASD key-mode.")
   'avatar-5
   (read-template "an avatar with a custom sprite, speed, WASD key-mode, and 200 health and max-health.")
   
   'food-1
   (read-template "food.")
   'food-2
   (read-template "exactly two custom foods that heal you by 20.")
   'food-3
   (read-template "a couple of apples with extra healing power.")
   'food-4
   (read-template "2 different food types: common apples with low-healing power and one very rare cherry with high-healing power.")
   'food-5
   (read-template "a very fast starvation rate and lots of cherries with high-healing power.")
   'food-6
   (read-template "3 food types: common cherries, trick smores that deplete your health, and a single high-healing carrot that spawns, only once, on a specific tile.")
   
   'enemy-1
   (read-template "an enemy.")
   'enemy-2
   (read-template "10 random enemies.")
   'enemy-3
   (read-template "5 bat enemies with medium AI.")
   'enemy-4
   (read-template "10 total mobs: half are not-smart slime, and half are smarter bats who only appear at night.")
   'enemy-5
   (read-template "5 hard bat enemies that spit acid with 50 damage.")
   'enemy-6
   (read-template "5 slimes with 'easy ai, 3 snakes with 'medium ai, and 1 bat with 'hard ai that only shows up at night and does 50 damage.")

   'coin-1
   (read-template "collectible coins.")
   'coin-2
   (read-template "very valuable collectible coins.")
   'coin-3
   (read-template "many valuable silver coins.")
   'coin-4
   (read-template "a silver coin, and a single, extremely valuable gold coin that only appears once.")
   'coin-5
   (read-template "3 collectible coins: a basic coin; a rarer, more valuable silver coin; and an extremely rare and valuable gold coin.")

   'crafter-1
   (read-template "a basic crafter.")
   'crafter-2
   (read-template "carrots, and a crafter that makes carrot stew from carrots.")
   'crafter-3
   (read-template "fish, and a crafter that makes fish stew with high-healing power.")
   'crafter-4
   (read-template "carrots, fish, and a crafter on tile 2 (posn 200 200) that makes both carrot-stew and fish-stew.")
   
   'sky-1
   (read-template "a very long day/night cycle.")
   'sky-2
   (read-template "a custom-colored night sky.")
   'sky-3
   (read-template "a short day/night cycle where it gets pitch-black at midnight.")
   'sky-4
   (read-template "a short night, and many nocturnal enemies.")


   'starvation-rate
   (read-template "an avatar and the fastest starvation rate.")

   'npc-1
   (read-template "a basic NPC.")
   'npc-2
   (read-template "a named witch NPC.")
   'npc-3
   (read-template "an NPC with custom dialog.")
   'npc-4
   (read-template "a witch NPC who follows you. Give them a name and a specific start tile.")
   'npc-5
   (read-template "2 NPCs with custom dialog and two additional customizations each.")

   'bg-1
   (read-template "a custom background.")
   'bg-2
   (read-template "a desert background.")
   'bg-3
   (read-template "a lava background with a 2 by 2 grid.")
   'bg-4
   (read-template "a lava background with a 2 by 2 grid that starts on tile 3.")

   'level-design-1
   (read-template "a forest background with world objects.")   
   'level-design-2
   (read-template "a forest background filled with high definition trees.")   
   'level-design-3
   (read-template "a pink background filled with random color candy-cane-trees and snow-pine-trees.")   
   'level-design-4
   (read-template "3 world objects with customized position, tile, size, and/or hue.")

   'weapon-crafter-1
   (read-template "a crafter that builds swords.")
   'weapon-crafter-2
   (read-template "a wood table crafter that slowly builds a high-damage sword.")
   'weapon-crafter-3
   (read-template "coins, and a wood table crafter that instantly builds fast-moving fire-magic for 100 gold.")

   ))
