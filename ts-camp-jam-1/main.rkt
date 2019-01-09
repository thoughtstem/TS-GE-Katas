#lang racket

(provide battle-arena-katas
         battle-arena-proto-katas
         avatar-katas
         enemy-katas
         spear-katas
         sword-katas
         paint-thrower-katas
         magic-balance-katas
         melee-balance-katas
         repeater-balance-katas
         spear-tower-katas
         dagger-tower-katas
         repeater-tower-katas
         single-shot-katas
         spread-shot-katas
         homing-repeater-katas

         kata->dollar-icons
         kata->sticker-icon
         kata->title

         scribblify-collection
         name-contains)

(require ts-kata-util/katas/main
         ts-kata-util/katas/rendering) 

(require (only-in scribble/manual image para subsection))
(define dollar-icon
  (image "scribblings/imgs/ts-dollar.png"
         #:scale .15))

(define color-bar-icon (image "scribblings/imgs/color-bar.png"
                              #:scale .5))
(define add-star-icon  (image "scribblings/imgs/star-sticker.png"
                              #:scale .5))
(define add-heart-icon (image "scribblings/imgs/extra-life.png"
                              #:scale .5))


(define (kata->sticker-icon k)
  (para
   (cond [(bronze? k)        color-bar-icon]
         [(silver? k)        add-star-icon]
         [(or (gold? k)
              (platinum? k)) add-heart-icon]
         [else               (list)])))


(define (kata->num-dollars k)
  (cond [(bronze? k)     1]
        [(silver? k)     3]
        [(gold?   k)     5]
        [(platinum?   k) 7]
        [else 0]))

(define (bronze? k)
  (string=? "Bronze" (kata->difficulty-name k)))

(define (silver? k)
  (string=? "Silver" (kata->difficulty-name k)))

(define (gold? k)
  (string=? "Gold" (kata->difficulty-name k)))

(define (platinum? k)
  (string=? "Platinum" (kata->difficulty-name k)))

(define (kata->difficulty-name k)
  (cond [(string-suffix? (~a (kata-id k)) "-1")     "Bronze"]
        [(string-suffix? (~a (kata-id k)) "-2")     "Silver"]
        [(string-suffix? (~a (kata-id k)) "-3")     "Gold"]
        [(string-suffix? (~a (kata-id k)) "-4")     "Platinum"]
        [else            "Unknown"]))

(define (kata->category-name k)
  (string-titlecase
   (regexp-replace*
    #rx"[0-9]*"
    (regexp-replace*
     #rx"-"
     (~a (kata-id k))
     " ")
    "")))

(define (name-contains k s)
  (string-contains? (kata->category-name k) s))

(define (kata->dollar-icons k)
  (para
   (map (thunk* dollar-icon)
        (range (kata->num-dollars k)))))

(define (kata->title k)
  (subsection (~a (kata->difficulty-name k) " "
                  (kata->category-name k) " "
                  "Kata")))


(define battle-arena-proto-katas
  (lang->kata-collection 'battle-arena))

(define battle-arena-katas
  (fill-in-stimuli battle-arena-proto-katas
   
   'spear-1
   (read "Make a game that has a spear.")

   'spear-2
   (read "Make a game with your own defined spear.")

   'spear-3
   (read "Make a game that has a fully customizable spear in it where you can modify its damage and durability.")

   'spear-4
   (read "Make a game that has a fully customizable spear in it where you can modify its speed, range, and sprite.")


   'sword-1
   (read "Make a game that has a sword.")

   'sword-2
   (read "Make a game with your own defined sword.")

   'sword-3
   (read "Make a game with a fully customized sword.")

   'sword-4
   (read "Make a game that has a customizable sword in it where you can modify its speed, range, and sprite.")

          
   'paint-thrower-1
   (read "Make a game that has a paint thrower in it.")

   'paint-thrower-2
   (read "Make a game with your own defined paint thrower with customizable rarity.")

   'paint-thrower-3
   (read "Make a game that has a customizable paint thrower in it where you can modify the damage and durability of the paint.")

   'paint-thrower-4
   (read "Make a game that has a customizable paint thrower in it where you can modify the speed, range, and sprite of the paint.")

         
   'avatar-1
   (read "Make a game with an avatar.")

   'avatar-2
   (read "Make a game with a blue circle avatar.")

   'avatar-3
   (read "Make a game with a random-character-sprite as your avatar.")

   'avatar-4
   (read "Make a game with a defined custom avatar that has a sprite you chose from the random-character-row list.")


   'enemy-1
   (read "Make a game with an enemy.")

   'enemy-2
   (read "Make a game with a defined and customized enemy.")

   'enemy-3
   (read "Make a game with an enemy that is one of the basic shapes.")

   'enemy-4
   (read "Make a game with a defined custom enemy that has a sprite you chose from the random-character-row list.")


   'magic-balance-1
   (read "Make a game that has a light magic weapon.")

   'magic-balance-2
   (read "Make a game that has a heavy magic weapon.")
   
   'magic-balance-3
   (read "Make a game that has a light and a heavy magic weapon.  Balance them relative to each other.")


   
   'melee-balance-1
   (read "Make a game that has a light melee weapon.")

   'melee-balance-2
   (read "Make a game that has a heavy melee weapon.")
   
   'melee-balance-3
   (read "Make a game that has a light and a heavy melee weapon.  Balance them relative to each other.")
   

   'repeater-balance-1
   (read "Make a game that has a light repeater weapon.")

   'repeater-balance-2
   (read "Make a game that has a heavy repeater weapon.")
   
   'repeater-balance-3
   (read "Make a game that has a light and a heavy repeater weapon.  Balance them relative to each other.")
   

   'lava-1
   (read "Make a game that has a custom weapon that deploys a lava pit.")

   'lava-2
   (read "Make a game that has a custom weapon that deploys a lava pit with custom damage and size.")

   'lava-3
   (read "Make a game that has a custom weapon that deploys a lava pit with custom damage, size, sprite, and range.")


   'spike-mine-1
   (read "Make a game that has a weapon that deploys a default spike mine")
   
   'spike-mine-2
   (read "Make a game that has a weapon that deploys a spike mine with a large range and speed")
   
   'spike-mine-3
   (read "Make a game that has a weapon that deploys a spike mine with a large range and speed, high damage, and non-default sprite")


   'spear-tower-1
   (read "Make a game that has a custom weapon that deploys a spear tower.")

   'spear-tower-2
   (read "Make a game that has a custom weapon that deploys a spear tower with a speed of 10 and a range of 20.")

   'spear-tower-3
   (read "Make a game that has a custom weapon that deploys a spear tower with a custom spear image, damage level, range and speed")


   'enemy-weapon-1
   (read "Make a game that has a an enemy and give it a custom weapon.")

   'enemy-weapon-2
   (read "Make a game that has an enemy, give it a custom weapon and customize it.")

   'enemy-weapon-3
   (read "Make a game that has am enemy, give it a custom weapon, and customize the dart.")

   
   'repeater-armor-1
   (read "Make a game that has armor called Repeater Armor.")

   'repeater-armor-2
   (read "Make a game that has working Repeater Armor.")

   'repeater-armor-3
   (read "Make a game that has 10 enemies with a repeater and armor for your avatar that will protect against that repeater!")


   'sword-armor-1
   (read "Make a game that has armor called Sword Armor.")

   'sword-armor-2
   (read "Make a game that has working Sword Armor.")

   'sword-armor-3
   (read "Make a game that has 10 enemies with a sword and armor for your avatar that will protect against that sword!")


   'rocket-tower-1
   (read "Make a game that has a custom weapon that deploys Rocket Tower.")

   'rocket-tower-2
   (read "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower.")

   'rocket-tower-3
   (read "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower that shoots a custom rocket.")


   'repeater-tower-1
   (read "Make a game that has a weapon that deploys a Repeater Tower.")

   'repeater-tower-2
   (read "Make a game that has a weapon that deploys a Repeater Tower with slow bullets but a fast fire rate.")

   'repeater-tower-3
   (read "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower that shoots a custom rocket.")


   'dagger-tower-1
   (read "Make a game that has a custom weapon that deploys a dagger tower.")

   'dagger-tower-2
   (read "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower.")

   'dagger-tower-3
   (read "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower with a custom dagger.")


   
   'single-shot-1
   (read "Make a game that has a custom weapon that has a normal fire mode.")

   'single-shot-2
   (read "Make a game that has a custom weapon that has a normal fire mode and a customized dart.")

   'single-shot-3
   (read "Make a game that has a custom weapon that has a normal fire mode and a customized dart with a food sprite.")


   'spread-shot-1
   (read "Make a game that has a weapon that has a spread fire mode.")

   'spread-shot-2
   (read "Make a game that has a weapon that has a spread fire mode and a customized dart.")

   'spread-shot-3
   (read "Make a game that has a weapon that has a spread fire mode and a customized dart with an object sprite.")


   'homing-repeater-1
   (read "Make a game that has a weapon that has a hoaming fire mode.")

   'homing-repeater-2
   (read "Make a game that has a weapon that has a hoaming fire mode and a customized dart.")

   'homing-repeater-3
   (read "Make a game that has a weapon that has a hoaming fire mode and a customized dart with an animal sprite.")
   
   ))


(define (scribblify-collection kc)
  (kata-collection->scribble
   #:befores (list kata->title
                   kata->dollar-icons
                   kata->sticker-icon)

   kc))

(define avatar-katas
  (filter-collection
   (curryr name-contains "Avatar")
   battle-arena-katas))

(define enemy-katas
  (filter-collection
   (and/c (curryr name-contains "Enemy")
          (not/c (curryr name-contains "Weapon")))
   battle-arena-katas))

(define sword-katas
  (filter-collection
   (and/c (curryr name-contains "Sword")
          (not/c (curryr name-contains "Tower")))
   battle-arena-katas))

(define spear-katas
  (filter-collection
   (and/c (curryr name-contains "Spear")
          (not/c (curryr name-contains "Tower")))
   battle-arena-katas))

(define paint-thrower-katas
  (filter-collection
   (curryr name-contains "Paint Thrower")
   battle-arena-katas))

(define magic-balance-katas
  (filter-collection
   (curryr name-contains "Magic Balance")
   battle-arena-katas))

(define melee-balance-katas
  (filter-collection
   (curryr name-contains "Melee Balance")
   battle-arena-katas))

(define repeater-balance-katas
  (filter-collection
   (curryr name-contains "Repeater Balance")
   battle-arena-katas))

(define spear-tower-katas
  (filter-collection
   (curryr name-contains "Spear Tower")
   battle-arena-katas))

(define dagger-tower-katas
  (filter-collection
   (curryr name-contains "Dagger Tower")
   battle-arena-katas))

(define repeater-tower-katas
  (filter-collection
   (curryr name-contains "Repeater Tower")
   battle-arena-katas))

(define single-shot-katas
  (filter-collection
   (curryr name-contains "Single Shot")
   battle-arena-katas))

(define spread-shot-katas
  (filter-collection
   (curryr name-contains "Spread Shot")
   battle-arena-katas))

(define homing-repeater-katas
  (filter-collection
   (curryr name-contains "Homing Repeater")
   battle-arena-katas))

