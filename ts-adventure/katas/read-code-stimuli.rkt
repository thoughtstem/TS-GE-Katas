#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))

(define stimuli
  (list

   'hello-world-1
   (read "Code a basic adventure game.")


   ;Avatar Stimuli
   'avatar-1
   (read-prefix "with a fast wizard avatar.")

   'avatar-2
   (read-prefix "with a fast, strong pirate avatar.")

   'avatar-3
   (read-prefix "with a fast avatar and an intro cutscene. Customize the cutscene to have a sprite and some text.")

   'avatar-4
   (read-prefix "with an avatar and an intro cutscene. Customize the cutscene with 2 pages, include sprites and text.")

   ;Coin Stimuli
   'coin-1
   (read-prefix "with 20 vaulable gold coins that do not respawn.")

   'coin-2
   (read-prefix "with cheap copper coins, more valuable silver coins, and very valuable gold coins.")

   'coin-3
   (read-prefix "with a very rare, trick gold coin. Make the coin worth -1000 and spawn an enemy when picked up.")

   'coin-4
   (read-prefix "with an extremely rare and valuable gold coin. When the coin is picked up, spawn a cutscene with a gold coin and some text.")

   'coin-5
   (read-prefix "with 15 coins that do not respawn and an NPC. Give a collect quest where you have to collect 100 points for a reward.")

   ;Level Design Stimuli
   'level-design-1
   (read-prefix "with a forest level that has world objects.")

   'level-design-2
   (read-prefix "with a candy level and 2 types of randomly-colored, high-definition trees.")

   'level-design-3
   (read-prefix "with a desert level filled with random brown rocks. Make everything high-definition.")

   'level-design-4
   (read-prefix "with a lava level filled with high-definition gray rocks. Add an intro cutscene with three pages.")

   'level-design-5
   (read-prefix "with a big gray rock, a randomly-colored brick house, and low-quality barrels. Manually set positions and tiles of all these entities.")

   ;Fetch Quest Stimuli
   'fetch-quest-1
   (read-prefix "with an NPC who has a fetch quest to find their lost cat.")

   'fetch-quest-2
   (read-prefix "with an NPC who has a quest to find their lost sword. Give the quest an ending cutscene including the NPC sprite and some text.")

   'fetch-quest-3
   (read-prefix "with an NPC who has 2 quests to return 2 different pets. Add a reward to both of the quests.")

   'fetch-quest-4
   (read-prefix "with an NPC who has a rewarded quest to find their antique bowl. The NPC's dialog changes once the quest is complete.")

   'fetch-quest-5
   (read-prefix "with an NPC who has a high-reward quest to find their lost cat. Give the quest a completion cutscene. Give the cat pickup and drop cutscenes (the drop cutscene only happens if dropped away from the NPC).")

   ;Enemy Stimuli
   'enemy-1
   (read-prefix "with 10 strong, nocturnal enemies with moderate intelligence and a random sprite.")

   'enemy-2
   (read-prefix "with several enemies: 4 low intelligence slime, 2 moderately intelligent bats, and a highly intelligent, nocturnal snake.")

   'enemy-3
   (read-prefix "with a spear and 3 highly intelligent enemies that drop valuable gold coins.")

   'enemy-4
   (read-prefix "with an avatar, a spear, and 3 highly intelligent enemies that shoot fireballs. Include a creative game over cutscene.")

   'enemy-5
   (read-prefix "with an NPC who has a quest to slay several enemies; the quest has a point and item reward. Include 10 random enemies, a fireball power, and a game over cutscene.")

   ;Food Stimuli
   'food-1
   (read-prefix "with several hearty foods.")

   'food-2
   (read-prefix "with 2 types of food: a common apple; and a very rare, hearty cherry.")

   'food-3
   (read-prefix "with an avatar who starts at half-health. Add a hearty steak that spawns a cutscene on pickup. The cutscene includes the steak sprite and text.")

   'food-4
   (read-prefix "with several fish and a crafter that produces a hearty fish stew.")

   'food-5
   (read-prefix "with an NPC and a crafter that produces a carrot stew. Give the NPC dialog and a quest to make the carrot stew.")

   ;Crafter Stimuli
   'crafter-1
   (read-prefix "with an avatar and a crafter.")

   'crafter-2
   (read-prefix "with 10 carrots and a crafter that produces carrot stew.")

   'crafter-3
   (read-prefix "with a 10 fish, and a fish stew recipe, and a cauldron that produces fish stew.")

   'crafter-4
   (read-prefix "with 10 fish,10 carrots, a fish stew recipe, and a cauldron that produces fish stew and carrot stew. Customize the tile and position of the cauldron.")

   'crafter-5
   (read-prefix "with a sword recipe that has a short build time, and a wooden table that produces swords.")

   'crafter-6
   (read-prefix "with a sword recipe that has a moderately long build time, and a wooden table that produces powerful swords.")

   'crafter-7
   (read-prefix "with 10 valuable coins, an expensive fire magic recipe that has a long build time, and a wooden table that produces fast fire magic.")

   ;Weapon Crafter Stimuli
   'weapon-crafter-1
   (read-prefix "with a sword recipe that has a short build time, and a wooden table that produces swords.")

   'weapon-crafter-2
   (read-prefix "with a sword recipe that has a moderately long build time, and a wooden table that produces strong swords.")

   'weapon-crafter-3
   (read-prefix "with 10 valuable coins, an expensive fire magic recipe that has a long build time, and a wooden table that produces fast fire magic.")

   ;Sky Stimuli
   'sky-1
   (read-prefix "with a sky that has a long day.")

   'sky-2
   (read-prefix "with a sky that has a short day and an extremely dark night.")

   'sky-3
   (read-prefix "with a sky that has a light night with a magenta night sky.")

   'sky-4
   (read-prefix "with 20 nocturnal enemies and a sky. Make the sky have a short night.")

   ;Background Stimuli
   'bg-1
   (read-prefix "with a background.")

   'bg-2
   (read-prefix "with a desert background.")

   'bg-3
   (read-prefix "with a lava background that has 2 rows and 2 columns.")

   'bg-4
   (read-prefix "with a high-definition lava background that has 2 rows, 2 columns, and starts on tile 3.")

   ;NPC Stimuli
   'npc-1
   (read-prefix "with a witch NPC who follows you. Give her a name and a start location.")

   'npc-2
   (read-prefix "with 2 NPCs. Give both NPCs names and multiple lines of dialog.")

   'npc-3
   (read-prefix "with an avatar and a named NPC. Give the avatar 3 questions and the NPC 3 responses.")

   'npc-4
   (read-prefix "with an avatar who has random dialog and 2 NPCs with random responses.")
   
   'npc-5
   (read-prefix "with an NPC who has a quest to fetch their lost spear. Give the NPC new dialog after the quest is complete.")

   ))