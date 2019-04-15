#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list
   
   'hello-world-1
   (read "Make a basic Pokemon Game!")
   
   'avatar-1
   (read "Make a game with a default Pokemon.")
   'avatar-2
   (read "Make a game with a custom Pokemon as your main character.")
   'avatar-3
   (read "Make a game with a custom Pokemon as your main character and a speed of 20.")
   'avatar-4
   (read "Make a game with a custom Pokemon and customize the avatar, speed, and key-mode of it.")
   'avatar-5
   (read "Make a game with a custom Pokemon with a custom speed, WASD key-mode, and 200 health and max-health.")
 
   'food-1
   (read "Make a game with a Pokemon and some custom food.")
   'food-2
   (read "Make a game with a Pokemon and exactly two custom foods that heal you by 20.")
   'food-3
   (read "Make a game with a Pokemon and exactly two apples that heal you by 20.")
   'food-4
   (read "Make a game with a Pokemon and 2 apples (heals by 20 and respawns), and 1 cherry (heals by 50 and doesn’t respawn).")
   'food-5
   (read "Make a game with a Pokemon, 20 cherries that heal by 50, and a starvation rate of 100.")
   'food-6
   (read "Make a game with a Pokemon, 10 cherries, 5 smores that heal by -10, and a carrot in the 4th tile that heals by 100 and doesn't respawn.")
   
   'coin-1
   (read "Make a game with a Pokemon and a basic collectible stone.")
   'coin-2
   (read "Make a game with a Pokemon and a collectible stone worth 500.")
   'coin-3
   (read "Make a game with a Pokemon and 20 moon stones worth 500.")
   'coin-4
   (read "Make a game with a Pokemon, a moon stone, and a single shiny stone that never respawns and is worth 1000.")
   
   'enemy-1
   (read "Make a game with a Pokemon and a trainer.")
   'enemy-2
   (read "Make a game with a Pokemon and 10 trainers.")
   'enemy-3
   (read "Make a game with a Pokemon and 5 James with medium AI.")
   'enemy-4
   (read "Make a game with a Pokemon and 5 hard Red Girl trainers that throw pokeballs with 50 damage.")
   'enemy-5
   (read "Make a game with a Pokemon, 5 easy Green Boy trainers, and 5 medium Green Girl trainers that only come out at night.")
   'enemy-6
   (read "Make a game with a Pokemon, 5 Green Boy trainers with 'easy ai, 3 Red Girl trainers with 'medium ai, and Team Rocket trainer with 'hard ai that only shows up at night and does 50 damage.")

   'crafter-1
   (read "Make a game with a Pokemon and a basic crafter.")
   'crafter-2
   (read "Make a game with a Pokemon, carrots, and a crafter that builds carrot stew from carrots.")
   'crafter-3
   (read "Make a game with a Pokemon, fish, and a crafter that builds fish stew that heals you by 50.")
   'crafter-4
   (read "Make a game with a Pokemon, carrots, fish, and a builds on tile 2 (posn 200 200) that makes both carrot-stew and fish-stew.")
   'weapon-crafter-1
   (read "Make a game with a Pokemon and a crafter that builds a fire-blast attack.")

   'npc-1
   (read "Make a game with a Pokemon and another Pokemon friend.")
   'npc-2
   (read "Make a game with a Pokemon and Squirtle with a custom name.")
   'npc-3
   (read "Make a game with a Pokemon and a friend with custom dialog.")
   'npc-4
   (read "Make a game with a Pokemon and another Pokemon with a name, starting tile, and follow mode.")
   'npc-5
   (read "Make a game with a Pokemon and two friends with custom dialog and two other customizations.")


   'sky-1
   (read "Make a game with a Pokemon and a slow changing sky.")
   'sky-2
   (read "Make a game with a Pokemon and a fast changing sky with max-darkness.")
   'sky-3
   (read "Make a game with a Pokemon and a darkmagenta night-sky with 150 darkness.")
   'sky-4
   (read "Make a game with a Pokemon, a very short night time, and trainers that only come out at night.")

   'bg-1
   (read "Make a game with a Pokemon and a basic custom town.")
   'bg-2
   (read "Make a game with a Pokemon and a desert custom town.")
   'bg-3
   (read "Make a game with a Pokemon and a lava custom town where the Pokemon starts on tile 4.")
   'bg-4
   (read "Make a game with a Pokemon and a lava background with a 2 by 2 grid that starts on tile 3.")

   'level-design-1
   (read "Make a game with a forest background filled with trees.")   
   'level-design-2
   (read "Make a game with a forest background filled with high definition trees.")   
   'level-design-3
   (read "Make a game with random color candy-cane-trees and snow-pine-trees.")   
   'level-design-4
   (read "Make a game with 3 world objects with customized position, tile, size, and/or hue.")
   
   'starvation-rate
   (read "Make a game with a Pokemon and the fastest starvation rate.")
   ))
