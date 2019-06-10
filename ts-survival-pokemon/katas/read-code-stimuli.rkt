#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Code a game with " noun)))

(define stimuli
  (list
   
   'hello-world-1
   (read "Make a basic Pokemon game.")
   
   'avatar-1
   (read-template "a Pokemon.")
   'avatar-2
   (read-template "Bulbasaur as your playable character.")
   'avatar-3
   (read-template "a fast Charmander as your playable character.")
   'avatar-4
   (read-template "a fast Armored Mewtwo whom you control with the WASD keys.")
   'avatar-5
   (read-template "a fast, strong Pokemon whom you control with the WASD keys. Choose any sprite.")
 

   'coin-1
   (read-template "collectible stones.")
   'coin-2
   (read-template "very valuable collectible stones.")
   'coin-3
   (read-template "many valuable leaf stones.")
   'coin-4
   (read-template "a moon stone, and a single, extremely valuable shiny stone that only appears once.")
   'coin-5
   (read-template "3 collectible stones: a basic stone; a rarer, more valuable thunder stone; and an extremely rare and valuable sun stone.")
   
   'enemy-1
   (read-template "a trainer.")
   'enemy-2
   (read-template "10 random trainers.")
   'enemy-3
   (read-template "5 James with medium AI.")
   'enemy-4
   (read-template "5 highly intelligent Red Girl trainers armed with high-damage pokeballs.")
   'enemy-5
   (read-template "10 total trainers: half are moderately intelligent Green Boy trainers, and half are highly intelligent, nocturnal Team Rocket trainers.")
   'enemy-6
   (read-template "5 Green Boy trainers with 'easy ai, 3 Red Girl trainers with 'medium ai, and Team Rocket trainer with 'hard ai that only shows up at night and does 50 damage.")

   'weapon-crafter-1
   (read-template "a Pokemon and a crafter that builds a fire-blast attack.")

   'npc-1
   (read-template "another Pokemon friend.")
   'npc-2
   (read-template "a named Squirtle friend.")
   'npc-3
   (read-template "a Pokemon friend with custom dialog.")
   'npc-4
   (read-template "a Wartortle friend who follows you. Give them a name and a specific tile location.")
   'npc-5
   (read-template "2 friends with custom dialog and two additional customizations each.")

   'sky-4
   (read-template "a longer day and a shorter night, and trainers that only come out at night.")

   'bg-1
   (read-template "a basic custom town.")
   'bg-2
   (read-template "a desert custom town.")
   'bg-3
   (read-template "a lava town with fewer tiles.")
   'bg-4
   (read-template "a lava town with a 2 by 2 grid that starts on tile 3.")

   'level-design-1
   (read-template "a forest town with world objects.")   
   'level-design-2
   (read-template "a forest town filled with 2 types of high-definition trees.")   
   'level-design-3
   (read-template "random color candy-cane-trees and snow-pine-trees.")   
   'level-design-4
   (read-template "3 world objects with customized position, tile, size, and/or hue.")
   
   'starvation-rate
   (read-template "a Pokemon and the fastest starvation rate.")
   ))
