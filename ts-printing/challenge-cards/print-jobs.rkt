#lang racket

(require "./main.rkt"
         ts-kata-util/katas/main
         ts-kata-util/badge-maker/colors/pallets
         2htdp/image)


(define (title s) (text s 30 (color 0 0 0 150)))

(define clear-white (color 255 255 255 100))

(define (ts-battle-arena->Desktop)
  (local-require ts-battle-arena/katas)
  ;Could use begin-job to get more control,
  ; but this is an internal collection, so here's
  ; the simplest way to turn collections into cards.
  ; No fancy colors or settings.  (Default is green
  ; front, no title)
  (collection->folder battle-arena-katas 
                      (build-path (find-system-path 'home-dir)
                                  "Desktop"
                                  "ts-battle-arena-cards")))

(define (ts-battle-arena-asp-2019->Desktop)
  (local-require ts-battle-arena-asp-2019/katas)

  (begin-job "ts-battle-arena-asp-2019-cards"     
    (avatar-katas 
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(avatar)")]) 
    (enemy-katas 
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(enemies)")])
    (weapon-katas 
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(weapons)")])
    (powerup-katas
      [FRONT-COLOR    googly-green]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(powerups)")])
    (background-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(background)")])
    (level-design-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(level-design)")])
    (repeater-armor-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(repeater-armor)")])
    (sword-armor-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(sword-armor)")])))

(define (ts-battle-arena-avengers-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-avengers-summer-camp-2019/katas)

  (begin-job "ts-battle-arena-avengers-summer-camp-2019-cards"    
    (hero-katas 
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(hero)")]) 
    (planet-design-katas 
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(planet-design)")]) 
    (villain-with-power-katas
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(villains)")]) 
    (hero-power-katas
      [FRONT-COLOR    googly-green]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(hero-powers)")]) 
    (powerup-katas
      [FRONT-COLOR    googly-blue]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(powerup)")]) 
    (shield-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(shield)")]) 
    (force-field-extra-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(force-field)")]) 
    (armor-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(armor)")]) 
    (lava-pit-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(lava-pits)")]) 
    (spike-mine-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(spike-mines)")]) 
    (planet-design-extra-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(planet-design++)")])))



(define (ts-battle-arena-fortnite-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-fortnite-summer-camp-2019/katas)

  (begin-job "ts-battle-arena-fortnite-summer-camp-2019-cards"    
    (avatar-katas
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(avatar)")]) 
    (selected-enemy-katas
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(enemies)")]) 
    (selected-weapon-katas
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(weapons)")]) 
    (powerup-katas
      [FRONT-COLOR    googly-green]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(powerups)")]) 
    (selected-tower-katas
      [FRONT-COLOR    googly-blue]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(towers)")]) 
    (background-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(background)")]) 
    (level-design-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(level-design)")]) 
    (force-field-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(force-field)")]) 
    (lava-pit-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(lava-pits)")]) 
    (spike-mine-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(spike-mines)")]) 
    (armor-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(armor++)")])
    (dagger-tower-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(dagger-towers)")])
    (rocket-tower-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(rocket-towers)")])))


(define (ts-battle-arena-starwars-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-starwars-summer-camp-2019/katas)

  (begin-job "ts-battle-arena-starwars-summer-camp-2019-cards"    
    (rebel-katas
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(rebels)")]) 
    (imperial-katas
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(imperials)")]) 
    (weapon-katas
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(weapons)")]) 
    (powerup-katas
      [FRONT-COLOR    googly-green]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(powerups)")]) 
    (trap-weapon-katas
      [FRONT-COLOR    googly-blue]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(trap-weapons)")]) 
    (planet-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(planets)")]) 
    (level-design-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(level-design)")]) 
    (boost-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(boosts)")]) 
    (shield-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(shields)")]) 
    (lava-pit-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(lava-pits)")]) 
    (blaster-droid-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(blaster-droids)")])
    (lightsaber-armor-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(lightsaber-armor)")])
    (blaster-armor-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(blaster-armor)")])))


(define (ts-survival-asp-2019->Desktop)
  (local-require ts-survival-asp-2019/katas)

  (begin-job "ts-survival-asp-2019-cards"
    (avatar-katas
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(avatar)")]) 
    (food-katas
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(food)")]) 
    (enemy-katas
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(enemies)")]) 
    (crafter-katas
      [FRONT-COLOR    googly-green]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(crafters)")]) 
    (bg-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(backgrounds)")]) 
    (level-design-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(level-design)")]) 
    (coin-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(coins)")]) 
    (weapon-crafter-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(weapon-crafters)")]) 
    (sky-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(sky)")]) 
    (npc-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(npcs)")])))

(define (ts-survival-minecraft-summer-camp-2019->Desktop)
  (local-require ts-survival-minecraft-summer-camp-2019/katas)

  (begin-job "ts-survival-minecraft-summer-camp-2019-cards"
    (custom-skin-katas
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(custom-skin)")]) 
    (food-katas
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(food)")]) 
    (ore-katas
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(ore)")]) 
    (mob-katas
      [FRONT-COLOR    googly-green]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(mobs)")]) 
    (crafter-katas
      [FRONT-COLOR    googly-blue]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(crafting)")]) 
    (entity-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(entities)")]) 
    (biome-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(bioms)")]) 
    (sky-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(sky)")])))

(define (ts-survival-pokemon-summer-camp-2019->Desktop)
  (local-require ts-survival-pokemon-summer-camp-2019/katas)

  (begin-job "ts-survival-pokemon-summer-camp-2019-cards"
    (pokemon-katas
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(avatar)")]) 
    (food-katas
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(food)")]) 
    (trainer-katas
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(trainers)")]) 
    (stone-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(stone)")]) 
    (sky-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(sky)")]) 
    (level-design-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(level-design)")]) 
    (town-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(towns)")])))

(define (ts-adventure-mario-summer-camp-2019->Desktop)
  (local-require ts-adventure-mario-summer-camp-2019/katas)

  (begin-job "ts-adventure-mario-summer-camp-2019-cards"     
    (character-katas 
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(character)")]) 
    (coin-katas 
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(coin)")])
    (level-design-katas 
      [FRONT-COLOR    googly-yellow]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(level-design)")])
    (fetch-quest-katas
      [FRONT-COLOR    googly-green]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(fetch-quest)")])
    (enemy-katas
      [FRONT-COLOR    googly-purple]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(enemy)")])
    ))

 ; ------ K2
(define (ts-k2-farm-summer-camp-2019->Desktop)
  (local-require ts-k2-farm-summer-camp-2019/katas)

  (begin-job "ts-k2-farm-summer-camp-2019-cards"
    (farm
      [FRONT-COLOR    bright-orange]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(farm)")])))

(define (ts-k2-sea-summer-camp-2019->Desktop)
  (local-require ts-k2-sea-summer-camp-2019/katas)

  (begin-job "ts-k2-sea-summer-camp-2019-cards"
    (sea
      [FRONT-COLOR    bright-blue]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(sea)")])))

(define (ts-k2-hero-summer-camp-2019->Desktop)
  (local-require ts-k2-hero-summer-camp-2019/katas)

  (begin-job "ts-k2-hero-summer-camp-2019-cards"
    (hero
      [FRONT-COLOR    bright-green]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(heros)")])))


(define (all->Desktop)
  ;(ts-battle-arena-asp-2019->Desktop)
  (ts-battle-arena-avengers-summer-camp-2019->Desktop)
  (ts-battle-arena-fortnite-summer-camp-2019->Desktop)
  (ts-battle-arena-starwars-summer-camp-2019->Desktop)
  
  ;(ts-survival-asp-2019->Desktop)
  (ts-survival-minecraft-summer-camp-2019->Desktop)
  (ts-survival-pokemon-summer-camp-2019->Desktop)
  
  (ts-adventure-mario-summer-camp-2019->Desktop)

  
  (ts-k2-farm-summer-camp-2019->Desktop)
  (ts-k2-sea-summer-camp-2019->Desktop)
  (ts-k2-hero-summer-camp-2019->Desktop))

#;(all->Desktop)
