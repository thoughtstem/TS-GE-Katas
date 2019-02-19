#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Make a minecraft game with " noun ".")))

(define stimuli
  (list
   'hello-world-1
   (read "Make the basic Minecraft Game!")
   
   'hero-1
   (read-template "a basic-skinned hero")

   'hero-2
   (read-template "a hero skinned with a sprite from the assets library")

   'hero-3
   (read-template "a hero skinned with a custom sprite and with a speed of 20")

   'hero-4
   (read-template "a hero skinned with a custom sprite and speed, and WASD key-mode")
   

   'food-1
   (read-template "a basic-skinned hero and some custom food")

   'food-2
   (read-template "a basic-skinned hero and exactly two custom foods that heal you by 20")

   'food-3
   (read-template "a basic-skinned hero and exactly two apples that heal you by 20")

   'food-4
   (read-template "a basic-skinned hero, 2 apples (heals by 20 and respawns), and 1 cherry (heals by 50 and doesn't respawn)")


   'mob-1
   (read-template "a basic-skinned hero and a mob")
   
   'mob-2
   (read-template "a basic-skinned hero and 10 randomized mobs")

   'mob-3
   (read-template "a basic-skinned hero and 5 skeleton mobs with medium AI")

   'mob-4
   (read-template "a basic-skinned hero, 5 easy creeper mobs, and 5 medium skeleton mobs that only come out at night")

   'mob-5
   (read-template "a basic-skinned hero and 5 hard mobs that spit acid with 50 damage")
   

   'ore-1
   (read-template "a basic-skinned hero and a basic iron ore")

   'ore-2
   (read-template "a basic-skinned hero and iron ore worth 50")

   'ore-3
   (read-template "a basic-skinned hero and 20 gold ore blocks worth 200")

   'ore-4
   (read-template "a basic-skinned hero, a silver coin, and a single epic gold coin that never respawns and is worth 1000")



   'crafter-1
   (read-template "a basic-skinned hero and a basic crafter")

   'crafter-2
   (read-template "a basic-skinned hero, carrots, and a crafter that makes carrot stew from carrots")

   'crafter-3
   (read-template "a basic-skinned hero, fish, and a crafter that makes fish stew that heals you by 50")

   'crafter-4
   (read-template "a basic-skinned hero, carrots, fish, and a crafter on tile 2 (posn 200 200) that makes both carrot-stew and fish-stew")

   
   'sky-1
   (read-template "a basic-skinned hero and a slow changing sky")

   'sky-2
   (read-template "a basic-skinned hero and a fast changing sky with max-darkness")

   'sky-3
   (read-template "a basic-skinned hero and a darkmagenta night-sky with 150 darkness")

   'sky-4
   (read-template "a basic-skinned hero, a very short night-time, and a mob that only comes out at night")

   
   'entity-1
   (read-template "a basic-skinned hero and a basic entity")

   'entity-2
   (read-template "a basic-skinned hero and a pig entity with a new name")

   'entity-3
   (read-template "a basic-skinned hero and a pig entity with a custom name, tile location, and movement mode")

   'entity-4
   (read-template "a basic-skinned hero and an entity with custom dialog")

   'entity-5
   (read-template "a basic-skinned hero and two entities with custom dialog, as well as two other customizations")

   
   'biome-1
   (read-template "a basic-skinned hero and a basic custom-bg")

   'biome-2
   (read-template "a basic-skinned hero and a desert custom-bg")

   'biome-3
   (read-template "a basic-skinned hero and a lava custom-bg where a hero will start on tile 4")

   
   'starvation-rate
   (read-template "a basic-skinned hero and the fastest starvation rate")

   ))
