#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Code a game with " noun)))

(define stimuli
  (list
   'hello-world-1
   (read "Code a basic Minecraft game.")
   
   'avatar-1
   (read-template "a basic-skinned hero.")
   'avatar-2
   (read-template "a hero with the Alex skin.")
   'avatar-3
   (read-template "a pixelated hero.")
   'avatar-4
   (read-template "a fast, Alex-skinned hero.")
   'avatar-5
   (read-template "a faster Steve-skinned avatar whom you control with the WASD keys.")
   'avatar-6
   (read-template "a fast, stronger hero whom you control with the WASD keys. Choose any sprite.")
  
   'enemy-1
   (read-template "a basic mob.")  
   'enemy-2
   (read-template "10 randomized mobs.")
   'enemy-3
   (read-template "5 moderately intelligent skeleton mobs.")
   'enemy-4
   (read-template "10 total mobs: half are low intelligence creepers, and half are moderately intelligent skeletons who only appear at night.")
   'enemy-5
   (read-template "2 types of mobs: a few moderately intelligent skeletons, and highly intelligent ghasts with a high-damage attack that only appear at night.")
   'enemy-6
   (read-template "5 hard mobs that spit acid with 50 damage.")
   

   'coin-1
   (read-template "a basic iron ore.")
   'coin-2
   (read-template "valuable iron ore.")
   'coin-3
   (read-template "many valuable gold ore blocks.")
   'coin-4
   (read-template "gold ore and an extremely rare and valuable diamond.")
   'coin-5
   (read-template "a basic copper lump, 5 diamonds worth 500, and a single mese crystal that never respawns and is worth 1000.")


   'weapon-crafter-3
   (read-template "ore, and a wood table crafter that instantly builds fast-spinning fire magic for 100 ore.")

   'sky-4
   (read-template "a long day, a short night, and a mob that only comes out at night.")
   
   'npc-1
   (read-template "a basic entity.")
   'npc-2
   (read-template "a pig entity with a new name.")
   'npc-3
   (read-template "a pig entity who follows you. Give them a name and a specific tile location.")
   'npc-4
   (read-template "an entity with custom dialog.")
  
   'bg-1
   (read-template "a basic biome.")
   'bg-2
   (read-template "a desert biome.")
   'bg-3
   (read-template "a lava biome with fewer tiles.")
   'bg-4
   (read-template "a high-definition lava biome with fewer tiles, where the player starts on the bottom right tile.")
   
   ))
