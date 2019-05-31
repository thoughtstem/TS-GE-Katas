#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))

(define stimuli
  (list

   'hello-world-1
   (read "Make an Mario game")

   ;Character Stimuli
   'avatar-1
   (read-prefix "with a character. Customize the speed.")

   'avatar-2
   (read-prefix "with a strong and fast character.")

   'avatar-3
   (read-prefix "with a fast character and an intro cutscene. Customize the cutscene with a sprite and some text.")

   'avatar-4
   (read-prefix "with a character and an into cutscene. Customize the cutscene with two pages: one with some text and another with a sprite and some text.")

   ;Coin Stimuli
   'coin-1
   (read-prefix "with 20 gold coins that do not respawn. Make each coin worth 100.")

   'coin-2
   (read-prefix "with a copper, silver, and gold coin. Make the coins worth 1, 25, and 50 respectively.")

   'coin-3
   (read-prefix "with a trick gold coin that doesn't respawn. Make the coin worth -1000 and when it's picked up it spawns an enemy.")

   'coin-4
   (read-prefix "with a valuable gold coin that doesn't respawn. When the coin is picked up spawn a cutscene with a gold coin and some text.")

   'coin-5
   (read-prefix "with 15 coins that do not respawn and an npc with a coin collect quest. In the quest the player has to collect 100 worth of coins for a reward.")

   ;Level Design Stimuli
   'level-design-1
   (read-prefix "with a forest level.")

   'level-design-2
   (read-prefix "with a candy level that has a pink brackground and two types of randomly colored, HD trees.")

   'level-design-3
   (read-prefix "with an HD forest level and some HD bricks and fences.")

   'level-design-4
   (read-prefix "with an intro cutscene and a Mario in a desert with HD blocks and pipes. Give the cutscene two pages, each with some text and one with a Mario.")

   'level-design-5
   (read-prefix "with a big question block, a brick house, and a low quality pipe all at set positions and set tiles. Make the hue of the brick house random.")

   ;Fetch Quest Stimuli
   'fetch-quest-1
   (read-prefix "with an NPC with a fetch quest and a lost Yoshi NPC. The quest is to find Yoshi.")

   'fetch-quest-2
   (read-prefix "with an NPC with a fetch quest and a lost Cheep NPC. Give the quest an ending cutscene with the Cheep and some text.")

   'fetch-quest-3
   (read-prefix "with a green muchroom, a red mushroom, and an NPC with a fetch quest that has two quests. The quests are to find and return the muchrooms.")

   'fetch-quest-4
   (read-prefix "with a lost Goomba and an NPC with a fetch quest who's dialog changes once the quest is complete.")

   'fetch-quest-5
   (read-prefix "with a Lakitu with a fetch quest and a lost Spiny item. Give the Spiny a pickup and drop cutscene. The drop cutscene only happens if it is dropped away from Lakitu. Give the quest a big reward and an ending cutscene.")

   ;Enemy Stimuli
   'enemy-1
   (read-prefix "with 10 strong, nocturnal enemies.")

   'enemy-2
   (read-prefix "with 4 dumb Goomba, 2 average Piranha, and a smart nocturnal Bowser.")

   'enemy-3
   (read-prefix "with a spear, some easy enemies, and 3 hard enemies that drop gold coins.")

   'enemy-4
   (read-prefix "with a Princess Peach, a spear, a game over cutscene, and 3 hard enemies that shoot fireballs. Give the game over cutscene a downward facing Peach and some text.")

   'enemy-5
   (read-prefix "with an NPC with a hunt quest, a game over cutscene, a fireball powerup, and 10 random enemies. The quest is to hunt enemies and the reward is 50 coins and a sword.")
   
))