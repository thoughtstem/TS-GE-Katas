#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))

(define stimuli
  (list

   'hello-world-1
   (read "Code a basic Mario game.")

   ;Character Stimuli
   'avatar-1
   (read-prefix "with a fast Mario as your playable character.")

   'avatar-2
   (read-prefix "with a strong, fast Luigi character.")

   'avatar-3
   (read-prefix "with a fast Princess Peach and an intro cutscene. Customize the cutscene with a sprite and some text.")

   'avatar-4
   (read-prefix "with Toad and an intro cutscene. Customize the cutscene with two pages, include sprites and text.")

   ;Coin Stimuli
   'coin-1
   (read-prefix "with 20 vaulable gold coins that do not respawn.")

   'coin-2
   (read-prefix "with cheap copper coins, more valuable silver coins, and very valuable gold coins.")

   'coin-3
   (read-prefix "with a very rare, trick gold coin. Make the coin worth -1000 and spawn an enemy when picked up.")

   'coin-4
   (read-prefix "with a extremely rare and valuable gold coin. When the coin is picked up, spawn a cutscene with a gold coin and some text.")

   'coin-5
   (read-prefix "with 15 coins that do not respawn and an NPC. Give a collect quest where you have to collect 100 points for a reward.")

   ;Level Design Stimuli
   'level-design-1
   (read-prefix "with a forest level that has world objects.")

   'level-design-2
   (read-prefix "with a candy level and 2 types of randomly-colored, high-definition trees.")

   'level-design-3
   (read-prefix "with a forest level filled with bricks and fences. Make everything high-definition.")

   'level-design-4
   (read-prefix "with Mario and a desert level filled with high-definition blocks and pipes. Add an intro cutscene with two pages.")

   'level-design-5
   (read-prefix "with a big question block, a randomly-colored brick house, and a low-quality pipe. Manually set positions and tiles of all these entities.")

   ;Fetch Quest Stimuli
   'fetch-quest-1
   (read-prefix "with an NPC who has a fetch quest to find their lost Yoshi.")

   'fetch-quest-2
   (read-prefix "with an NPC who has a quest to find their lost Cheep. Give the quest an ending cutscene including the Cheep and some text.")

   'fetch-quest-3
   (read-prefix "with an NPC who has 2 quests. The quests are to find and return 2 different mushrooms; add a reward to 1 of the quests.")

   'fetch-quest-4
   (read-prefix "with an NPC who has a rewarded quest to find their lost Goomba. The NPC's dialog changes once the quest is complete.")

   'fetch-quest-5
   (read-prefix "with a Lakitu NPC who has a high-reward quest to find their lost Spiny. Give the Spiny pickup and drop cutscenes (the drop cutscene only happens if dropped away from Lakitu).")

   ;Enemy Stimuli
   'enemy-1
   (read-prefix "with 10 strong, nocturnal enemies with moderate intelligence.")

   'enemy-2
   (read-prefix "with 4 low intelligence Goomba, 2 moderately intelligent Piranha, and a highly intelligent, nocturnal Bowser.")

   'enemy-3
   (read-prefix "with a spear and 3 highly intelligent enemies that drop gold coins.")

   'enemy-4
   (read-prefix "with Princess Peach, a spear, and 3 highly intelligent enemies that shoot fireballs. Include a creative game over cutscene.")

   'enemy-5
   (read-prefix "with an NPC who has a quest to slay all enemies; the quest has a point and item reward. Include 10 random enemies, a fireball power, and a game over cutscene.")
   
))