#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Make a minecraft game with " noun)))

(define stimuli
  (list
   'hello-world-1
   (read "Make the basic Minecraft Game!")
   
   'avatar-1
   (read-template "a basic skin.")
   'avatar-2
   (read-template "a skin with a sprite from the assets library.")
   'avatar-3
   (read-template "a skin with any sprite, with the quality reduced by 4.")
   'avatar-4
   (read-template "a skin with a custom sprite and with a speed of 20.")
   'avatar-5
   (read-template "a skin with a custom sprite and speed, and WASD key-mode.")  

   'food-1
   (read-template "a basic skin and some custom food.")
   'food-2
   (read-template "a basic skin and exactly two custom foods that heal you by 20.")
   'food-3
   (read-template "a basic skin and exactly two apples that heal you by 20.")
   'food-4
   (read-template "a basic skin, 2 apples (heals by 20 and respawns), and 1 cherry (heals by 50 and doesn't respawn).")
   'food-5
   (read-template "a basic skin, 20 cherries that heal by 50, and a starvation rate of 100.")
   'food-6
   (read-template "a basic skin, 10 cherries, 5 smores that heal by -10, and a carrot in the 4th tile that heals by 100 and doesn't respawn.")
  
   'enemy-1
   (read-template "a basic skin and a mob.")  
   'enemy-2
   (read-template "a basic skin and 10 randomized mobs.")
   'enemy-3
   (read-template "a basic skin and 5 skeleton mobs with medium AI.")
   'enemy-4
   (read-template "a basic skin, 5 easy creeper mobs, and 5 medium skeleton mobs that only come out at night.")
   'enemy-5
   (read-template "a basic skin and 5 hard mobs that spit acid with 50 damage.")
   'enemy-6
   (read-template "a basci skin, 5 creepers with 'easy ai, 3 skeletons with 'medium ai, and 1 ghast with 'hard ai that only shows up at night and does 50 damage.")

   'coin-1
   (read-template "a basic skin and a basic iron ore.")
   'coin-2
   (read-template "a basic skin and iron ore worth 50.")
   'coin-3
   (read-template "a basic skin and 20 gold ore blocks worth 200.")
   'coin-4
   (read-template "a basic skin, a gold ore, and a single epic diamond that never respawns and is worth 1000.")
   'coin-5
   (read-template "a basic skin, a basic copper lump, 5 diamonds worth 500, and a single mese crystal that never respawns and is worth 1000.")

   'crafter-1
   (read-template "a basic skin and a basic crafter.")
   'crafter-2
   (read-template "a basic skin, carrots, and a crafter that makes carrot stew from carrots.")
   'crafter-3
   (read-template "a basic skin, fish, and a crafter that makes fish stew that heals you by 50.")
   'crafter-4
   (read-template "a basic skin, carrots, fish, and a crafter on tile 2 (posn 200 200) that makes both carrot-stew and fish-stew.")

   'weapon-crafter-1
   (read-template "a basic skin and a crafter that makes swords.")
   'weapon-crafter-2
   (read-template "a basic skin and a crafter that makes a Heavy Sword with 100 damage.")
   'weapon-crafter-3
   (read-template "a basic skin, coins, and a crafter that makes fire-magic with speed 5 and needs 100 gold to build.")


   'sky-1
   (read-template "a basic skin and a slow changing sky.")
   'sky-2
   (read-template "a basic skin and a fast changing sky with max-darkness.")
   'sky-3
   (read-template "a basic skin and a darkmagenta night-sky with 150 darkness.")
   'sky-4
   (read-template "a basic skin, a very short night-time, and a mob that only comes out at night.")
   
   'npc-1
   (read-template "a basic skin and a basic entity.")
   'npc-2
   (read-template "a basic skin and a pig entity with a new name.")
   'npc-3
   (read-template "a basic skin and a pig entity with a custom name, tile location, and movement mode.")
   'npc-4
   (read-template "a basic skin and an entity with custom dialog.")
   'npc-5
   (read-template "a basic skin and two entities with custom dialog, as well as two other customizations.")
  
   'bg-1
   (read-template "a basic skin and a basic custom-biome.")
   'bg-2
   (read-template "a basic skin and a desert custom-biome.")
   'bg-3
   (read-template "a basic skin and a lava custom-biome where a hero will start on tile 4.")
   'bg-4
   (read-template "a basci skin and a lava background with a 2 by 2 grid that starts on tile 3.")
   
   ))
