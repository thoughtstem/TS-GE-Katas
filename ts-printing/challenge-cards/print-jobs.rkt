#lang racket

(require "./main.rkt"
         "../common.rkt"
         ts-kata-util/katas/main
         ts-kata-util/badge-maker/colors/pallets
         2htdp/image
         (prefix-in p: (only-in pict bitmap))
         )


(define (title s) (text s 30 (color 0 0 0 255)))

(define clear-white (color 255 255 255 100))

(define-syntax-rule (set-fg-texture img body)
  (parameterize ([FRONT-BG-TEXTURE (make-texture (p:bitmap (~a "../common/textures/" img)))])
    body))


(define (ts-battle-arena-asp-2019->Desktop)
  (local-require ts-battle-arena-asp-2019/katas)

  (set-fg-texture "paint-daubs1.jpg"
    (begin-job "ts-battle-arena-asp-2019-cards"     
               (avatar-katas 
                 [FRONT-BG-COLOR googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(avatar)")]) 
               (enemy-katas 
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(enemies)")])
               (weapon-katas 
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(weapons)")])
               (powerup-katas
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(powerups)")])
               (background-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(background)")])
               (level-design-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(level-design)")])
               (repeater-armor-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(repeater-armor)")])
               (sword-armor-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(sword-armor)")]))))

(define (ts-battle-arena-avengers-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-avengers-summer-camp-2019/katas)

  (set-fg-texture "grunge1.jpg" 
    (begin-job "ts-battle-arena-avengers-summer-camp-2019-cards"    
               (hero-katas 
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(hero)")]) 
               (planet-design-katas 
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(planet-design)")]) 
               (villain-with-power-katas
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(villains)")]) 
               (hero-power-katas
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(hero-powers)")]) 
               (powerup-katas
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(powerup)")]) 
               (shield-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(shield)")]) 
               (force-field-extra-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(force-field)")]) 
               (armor-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(armor)")]) 
               (lava-pit-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(lava-pits)")]) 
               (spike-mine-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(spike-mines)")]) 
               (planet-design-extra-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(planet-design++)")]))))



(define (ts-battle-arena-fortnite-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-fortnite-summer-camp-2019/katas)

  (set-fg-texture "swirls1.jpg" 
               (begin-job "ts-battle-arena-fortnite-summer-camp-2019-cards"    
                          (avatar-katas
                            [FRONT-BG-COLOR    googly-red]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(avatar)")]) 
                          (selected-enemy-katas
                            [FRONT-BG-COLOR    googly-orange]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(enemies)")]) 
                          (selected-weapon-katas
                            [FRONT-BG-COLOR    googly-yellow]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(weapons)")]) 
                          (powerup-katas
                            [FRONT-BG-COLOR    googly-green]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(powerups)")]) 
                          (selected-tower-katas
                            [FRONT-BG-COLOR    googly-blue]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(towers)")]) 
                          (background-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(background)")]) 
                          (level-design-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(level-design)")]) 
                          (force-field-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(force-field)")]) 
                          (lava-pit-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(lava-pits)")]) 
                          (spike-mine-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(spike-mines)")]) 
                          (armor-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(armor++)")])
                          (dagger-tower-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(dagger-towers)")])
                          (rocket-tower-katas
                            [FRONT-BG-COLOR    googly-purple]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(rocket-towers)")]))))


(define (ts-battle-arena-starwars-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-starwars-summer-camp-2019/katas)

  (set-fg-texture "paint-swirls1.jpg"
    (begin-job "ts-battle-arena-starwars-summer-camp-2019-cards"    
               (rebel-katas
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(rebels)")]) 
               (imperial-katas
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(imperials)")]) 
               (weapon-katas
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(weapons)")]) 
               (powerup-katas
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(powerups)")]) 
               (trap-weapon-katas
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(trap-weapons)")]) 
               (planet-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(planets)")]) 
               (level-design-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(level-design)")]) 
               (boost-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(boosts)")]) 
               (shield-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(shields)")]) 
               (lava-pit-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(lava-pits)")]) 
               (blaster-droid-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(blaster-droids)")])
               (lightsaber-armor-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(lightsaber-armor)")])
               (blaster-armor-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(blaster-armor)")]))))


(define (ts-survival-asp-2019->Desktop)
  (local-require ts-survival-asp-2019/katas)

  (set-fg-texture "swish1.jpg"
    (begin-job "ts-survival-asp-2019-cards"
               (avatar-katas
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(avatar)")]) 
               (food-katas
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(food)")]) 
               (enemy-katas
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(enemies)")]) 
               (crafter-katas
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(crafters)")]) 
               (bg-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(backgrounds)")]) 
               (level-design-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(level-design)")]) 
               (coin-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(coins)")]) 
               (weapon-crafter-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(weapon-crafters)")]) 
               (sky-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(sky)")]) 
               (npc-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(npcs)")]))))

(define (ts-survival-minecraft-summer-camp-2019->Desktop)
  (local-require ts-survival-minecraft-summer-camp-2019/katas)

  (set-fg-texture "checkers.jpg" 
    (begin-job "ts-survival-minecraft-summer-camp-2019-cards"
               (custom-skin-katas
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(custom-skin)")]) 
               (food-katas
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(food)")]) 
               (ore-katas
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(ore)")]) 
               (mob-katas
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(mobs)")]) 
               (crafter-katas
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(crafting)")]) 
               (entity-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(entities)")]) 
               (biome-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(biomes)")]) 
               (sky-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(sky)")]))))

(define (ts-survival-pokemon-summer-camp-2019->Desktop)
  (local-require ts-survival-pokemon-summer-camp-2019/katas)

  (set-fg-texture "rays1.jpg" 
    (begin-job "ts-survival-pokemon-summer-camp-2019-cards"
               (pokemon-katas
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(avatar)")]) 
               (food-katas
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(food)")]) 
               (trainer-katas
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(trainers)")]) 
               (stone-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(stone)")]) 
               (sky-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(sky)")]) 
               (level-design-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(level-design)")]) 
               (town-katas
                 [FRONT-BG-COLOR    googly-purple]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(towns)")]))))

(define (ts-k2-farm-summer-camp-2019->Desktop)
  (local-require ts-k2-farm-summer-camp-2019/katas)

  (begin-job "ts-k2-farm-summer-camp-2019-cards"
    (farm
      [FRONT-BG-COLOR    bright-orange]
      [FRONT-FG-COLOR clear-white]
      [FRONT-TITLE    (title "(farm)")])))

(define (ts-k2-sea-summer-camp-2019->Desktop)
  (local-require ts-k2-sea-summer-camp-2019/katas)

  (begin-job "ts-k2-sea-summer-camp-2019-cards"
    (sea
      [FRONT-BG-COLOR    bright-blue]
      [FRONT-FG-COLOR clear-white]
      [FRONT-TITLE    (title "(sea)")])))

(define (ts-k2-hero-summer-camp-2019->Desktop)
  (local-require ts-k2-hero-summer-camp-2019/katas)

  (begin-job "ts-k2-hero-summer-camp-2019-cards"
    (hero
      [FRONT-BG-COLOR    bright-green]
      [FRONT-FG-COLOR clear-white]
      [FRONT-TITLE    (title "(heros)")])))


(define (all->Desktop)
  (ts-battle-arena-asp-2019->Desktop)
  (ts-battle-arena-avengers-summer-camp-2019->Desktop)
  (ts-battle-arena-fortnite-summer-camp-2019->Desktop)

  (ts-battle-arena-starwars-summer-camp-2019->Desktop)
  (ts-survival-asp-2019->Desktop)
  (ts-survival-minecraft-summer-camp-2019->Desktop)

  (ts-survival-pokemon-summer-camp-2019->Desktop)
  (ts-k2-farm-summer-camp-2019->Desktop)
  (ts-k2-sea-summer-camp-2019->Desktop)
  (ts-k2-hero-summer-camp-2019->Desktop))


#;
(all->Desktop)


#;
(ts-battle-arena-fortnite-summer-camp-2019->Desktop)


