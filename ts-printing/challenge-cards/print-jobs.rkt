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

(define (try-take l n)
  (if (< (length l) n)
    l
    (take l n)))

#|
; ------ BATTLEARENA
(define (ts-battle-arena-asp-2019->Desktop)
  (local-require ts-battle-arena-asp-2019/katas)

  (set-fg-texture "battlearena-bg.jpg"
    (begin-job "ts-battle-arena-asp-2019"     
               ((collection-apply (curryr try-take 4) avatar-katas)
                 [FRONT-BG-COLOR googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(avatar)")]) 
               ((collection-apply (curryr try-take 5) enemy-katas) 
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(enemy)")])
               ((collection-apply (curryr try-take 5) weapon-katas) 
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(weapon)")])
               ((collection-apply (curryr try-take 5) powerup-katas) 
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(powerup)")])
               (background-katas ;Not 5 in here
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(background)")]))))

(define (ts-battle-arena-avengers-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-avengers-summer-camp-2019/katas)

  (set-fg-texture "battlearena-avengers-bg.jpg" 
                  (begin-job "battlearena-avengers"
                             ((collection-apply (curryr try-take 4) hero-katas) 
                              [FRONT-BG-COLOR    googly-red]
                              [FRONT-FG-COLOR clear-white]
                              [FRONT-TITLE    (title "(hero)")]) 
                             ((collection-apply (curryr try-take 5) planet-design-katas)  
                              [FRONT-BG-COLOR    googly-orange]
                              [FRONT-FG-COLOR clear-white]
                              [FRONT-TITLE    (title "(planet-design)")]) 
                             ((collection-apply (curryr try-take 5) villain-with-power-katas)
                              [FRONT-BG-COLOR    googly-yellow]
                              [FRONT-FG-COLOR clear-white]
                              [FRONT-TITLE    (title "(villain)")]) 
                             ((collection-apply (curryr try-take 5) hero-power-katas)
                              [FRONT-BG-COLOR    googly-green]
                              [FRONT-FG-COLOR clear-white]
                              [FRONT-TITLE    (title "(power)")]) 
                             ((collection-apply (curryr try-take 5) powerup-katas)
                              [FRONT-BG-COLOR    googly-blue]
                              [FRONT-FG-COLOR clear-white]
                              [FRONT-TITLE    (title "(power-up)")]))))

(define (ts-battle-arena-fortnite-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-fortnite-summer-camp-2019/katas)

  (set-fg-texture "battlearena-fortnite-bg.jpg" 
               (begin-job "battlearena-fortnite"
                          ((collection-apply (curryr try-take 4) avatar-katas) 
                            [FRONT-BG-COLOR    googly-red]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(avatar)")]) 
                          ((collection-apply (curryr try-take 5) selected-enemy-katas)
                            [FRONT-BG-COLOR    googly-orange]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(enemy)")]) 
                          ((collection-apply (curryr try-take 5) selected-weapon-katas) 
                            [FRONT-BG-COLOR    googly-yellow]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(weapon)")]) 
                          ((collection-apply (curryr try-take 5) powerup-katas ) 
                            [FRONT-BG-COLOR    googly-green]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(power-up)")]) 
                          ((collection-apply (curryr try-take 5) selected-tower-katas)
                            [FRONT-BG-COLOR    googly-blue]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(tower)")]) )))

(define (ts-battle-arena-starwars-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-starwars-summer-camp-2019/katas)

  (set-fg-texture "battlearena-starwars-bg.jpg"
    (begin-job "battlearena-starwars"
               ((collection-apply (curryr try-take 4) rebel-katas)
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(rebel)")]) 
               ((collection-apply (curryr try-take 5) imperial-katas)
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(imperial)")]) 
               ((collection-apply (curryr try-take 5) weapon-katas)
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(weapon)")]) 
               ((collection-apply (curryr try-take 5) powerup-katas)
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(power-up)")]) 
               ((collection-apply (curryr try-take 5) trap-weapon-katas)
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(trap-weapon)")]) )))

; ---- SURVIVAL
(define (ts-survival-asp-2019->Desktop)
  (local-require ts-survival-asp-2019/katas)

  (set-fg-texture "survival-bg.jpg"
    (begin-job "ts-survival-asp-2019"
               ((collection-apply (curryr try-take 4) avatar-katas)
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(avatar)")]) 
               ((collection-apply (curryr try-take 5) food-katas)
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(food)")]) 
               ((collection-apply (curryr try-take 5) enemy-katas) 
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(enemy)")]) 
               ((collection-apply (curryr try-take 5) crafter-katas)
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(crafter)")]) 
               (bg-katas
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(background)")]))))

(define (ts-survival-minecraft-summer-camp-2019->Desktop)
  (local-require ts-survival-minecraft-summer-camp-2019/katas)

  (set-fg-texture "survival-minecraft-bg.jpg" 
    (begin-job "survival-minecraft"
               ((collection-apply (curryr try-take 4) custom-skin-katas)
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(skin)")]) 
               ((collection-apply (curryr try-take 5) food-and-crafter-katas) 
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(food)")]) 
               ((collection-apply (curryr try-take 5) mob-and-entity-katas )
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(mob/entity)")]) 
               ((collection-apply (curryr try-take 5) ore-and-weapon-crafter-katas)
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(ore/weapon)")]) 
               ((collection-apply (curryr try-take 5) biome-and-sky-katas)
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(biome/sky)")]))))

(define (ts-survival-pokemon-summer-camp-2019->Desktop)
  (local-require ts-survival-pokemon-summer-camp-2019/katas)

  (set-fg-texture "survival-pokemon-bg.jpg" 
    (begin-job "survival-pokemon"
               ((collection-apply (curryr try-take 4) pokemon-katas)
                [FRONT-BG-COLOR googly-red]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(pokemon)")]) 
               ((collection-apply (curryr try-take 5) food-and-crafter-katas )
                [FRONT-BG-COLOR    googly-orange]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(food)")]) 
               ((collection-apply (curryr try-take 5) stone-katas )
                [FRONT-BG-COLOR    googly-yellow]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(stone)")]) 
               ((collection-apply (curryr try-take 5) friend-and-trainer-katas )
                [FRONT-BG-COLOR    googly-green] 
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(friend/trainer)")]) 
               ((collection-apply (curryr try-take 5) town-level-and-sky-katas ) 
                [FRONT-BG-COLOR    googly-blue]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(town/sky)")]) )))

;----- ADVENTURE
(define (ts-adventure-asp-2019->Desktop)
  (local-require ts-adventure-asp-2019/katas)

  (set-fg-texture "adventure-bg.jpg"
    (begin-job "ts-adventure-asp-2019-cards"     
               ((collection-apply (curryr try-take 4) avatar-katas)
                [FRONT-BG-COLOR googly-red]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(avatar)")])
               ((collection-apply (curryr try-take 5) enemy-katas)
                [FRONT-BG-COLOR googly-orange]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(enemy)")])
               ((collection-apply (curryr try-take 5) npc-katas)
                [FRONT-BG-COLOR googly-yellow]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(npc)")])
               ((collection-apply (curryr try-take 5) food-katas)
                [FRONT-BG-COLOR googly-green]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(food)")])
               ((collection-apply (curryr try-take 5) fetch-quest-katas)
                [FRONT-BG-COLOR googly-purple]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(fetch-quest)")]) )))|#

#|
(define (ts-adventure-mario-summer-camp-2019->Desktop)
  (local-require ts-adventure-mario-summer-camp-2019/katas)

  (set-fg-texture "adventure-mario-bg.jpg"
    (begin-job "adventure-mario"
               ((collection-apply (curryr try-take 4) character-katas)
                [FRONT-BG-COLOR googly-red]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(character)")])
               ((collection-apply (curryr try-take 5) coin-katas)
                [FRONT-BG-COLOR googly-orange]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(coin)")])
               ((collection-apply (curryr try-take 5) level-design-katas)
                [FRONT-BG-COLOR googly-yellow]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(level-design)")])
               ((collection-apply (curryr try-take 5) fetch-quest-katas)
                [FRONT-BG-COLOR googly-green]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(fetch-quest)")])
               ((collection-apply (curryr try-take 5) enemy-katas)
                [FRONT-BG-COLOR googly-purple]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(enemy)")]) )))

(define (ts-adventure-harrypotter-summer-camp-2019->Desktop)
  (local-require ts-adventure-harrypotter-summer-camp-2019/katas)

  (set-fg-texture "adventure-harrypotter-bg.jpg"
    (begin-job "adventure-harrypotter"
               ((collection-apply (curryr try-take 4) wizard-katas)
                [FRONT-BG-COLOR googly-red]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(wizard)")])
               ((collection-apply (curryr try-take 5) potion-katas)
                [FRONT-BG-COLOR googly-orange]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(potion)")])
               ((collection-apply (curryr try-take 5) loot-quest-katas)
                [FRONT-BG-COLOR googly-yellow]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(loot-quest)")])
               ((collection-apply (curryr try-take 5) npc-katas)
                [FRONT-BG-COLOR googly-green]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(npc)")])
               ((collection-apply (curryr try-take 5) spell-katas)
                [FRONT-BG-COLOR googly-purple]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(spell)")]) )))

; ---- K2
(define (ts-k2-farm-summer-camp-2019->Desktop)
  (local-require ts-k2-farm-summer-camp-2019/katas)

  (set-fg-texture "k2-farm-bg.jpg"
                  (begin-job "ts-k2-farm-summer-camp-2019"
                             ((collection-apply (curryr try-take 4) day-one) 
                              [FRONT-BG-COLOR    bright-red]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(food)")])
                             ((collection-apply (curryr try-take 5) day-two) 
                              [FRONT-BG-COLOR    bright-orange]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(food/coin)")])
                             ((collection-apply (curryr try-take 5) day-three) 
                              [FRONT-BG-COLOR    bright-yellow]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(coin)")])
                             ((collection-apply (curryr try-take 5) day-four)
                              [FRONT-BG-COLOR    bright-green]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(enemy)")])
                             ((collection-apply (curryr try-take 5) day-five)
                              [FRONT-BG-COLOR    bright-blue]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(more-enemy)")]))))

(define (ts-k2-sea-summer-camp-2019->Desktop)
  (local-require ts-k2-sea-summer-camp-2019/katas)

  (set-fg-texture "k2-sea-bg.jpg" 
                   (begin-job "ts-k2-sea-summer-camp-2019"
                              ((collection-apply (curryr try-take 4) food-katas) 
                               [FRONT-BG-COLOR    bright-red]
                               [FRONT-FG-COLOR    clear-white]
                               [FRONT-TITLE       (title "(food)")])
                              ((collection-apply (curryr try-take 5) enemy-katas) 
                               [FRONT-BG-COLOR    bright-orange]
                               [FRONT-FG-COLOR    clear-white]
                               [FRONT-TITLE       (title "(enemy)")])
                              ((collection-apply (curryr try-take 5) more-enemy-katas) 
                               [FRONT-BG-COLOR    bright-yellow]
                               [FRONT-FG-COLOR    clear-white]
                               [FRONT-TITLE       (title "(more-enemy)")])
                              ((collection-apply (curryr try-take 5) friend-katas)
                               [FRONT-BG-COLOR    bright-green]
                               [FRONT-FG-COLOR    clear-white]
                               [FRONT-TITLE       (title "(friend)")])
                              ((collection-apply (curryr try-take 5) more-friend-katas)
                               [FRONT-BG-COLOR    bright-blue]
                               [FRONT-FG-COLOR    clear-white]
                               [FRONT-TITLE       (title "(more-friend)")]))))

(define (ts-k2-hero-summer-camp-2019->Desktop)
  (local-require ts-k2-hero-summer-camp-2019/katas)

  (set-fg-texture "k2-hero-bg.jpg"
                  (begin-job "ts-k2-hero-summer-camp-2019"
                             ((collection-apply (curryr try-take 4) day-one) 
                              [FRONT-BG-COLOR    bright-red]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(basic)")])
                             ((collection-apply (curryr try-take 5) day-two) 
                              [FRONT-BG-COLOR    bright-orange]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(power)")])
                             ((collection-apply (curryr try-take 5) day-three) 
                              [FRONT-BG-COLOR    bright-yellow]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(power-color)")])
                             ((collection-apply (curryr try-take 5) day-four)
                              [FRONT-BG-COLOR    bright-green]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(power-ups)")])
                             ((collection-apply (curryr try-take 5) day-five)
                              [FRONT-BG-COLOR    bright-blue]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(multi-level)")]))))

(define (ts-k2-zoo-summer-camp-2019->Desktop)
  (local-require ts-k2-zoo-summer-camp-2019/katas)

  (set-fg-texture "k2-zoo-bg.jpg"
                  (begin-job "ts-k2-zoo-summer-camp-2019"
                             ((collection-apply (curryr try-take 4) day-one) 
                              [FRONT-BG-COLOR    bright-red]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(food)")])
                             ((collection-apply (curryr try-take 5) day-two) 
                              [FRONT-BG-COLOR    bright-orange]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(more-food)")])
                             ((collection-apply (curryr try-take 5) day-three) 
                              [FRONT-BG-COLOR    bright-yellow]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(coin)")])
                             ((collection-apply (curryr try-take 5) day-four)
                              [FRONT-BG-COLOR    bright-green]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(friend)")])
                             ((collection-apply (curryr try-take 5) day-five)
                              [FRONT-BG-COLOR    bright-blue]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(more-friend)")]))))

(define (ts-k2-asp-fall-2019->Desktop)
  (local-require ts-k2-asp-fall-2019/katas)

  (set-fg-texture "k2-animal-bg.jpg"
                  (begin-job "ts-k2-asp-fall-2019"
                             ((collection-apply (curryr try-take 4) day-one) 
                              [FRONT-BG-COLOR    bright-red]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(food)")])
                             ((collection-apply (curryr try-take 5) day-two) 
                              [FRONT-BG-COLOR    bright-orange]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(friend)")])
                             ((collection-apply (curryr try-take 5) day-three) 
                              [FRONT-BG-COLOR    bright-yellow]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(more-friend)")])
                             ((collection-apply (curryr try-take 5) day-four)
                              [FRONT-BG-COLOR    bright-green]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(enemy)")])
                             ((collection-apply (curryr try-take 5) day-five)
                              [FRONT-BG-COLOR    bright-blue]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(more-enemy)")]))))

(define (ts-3d-exploration-asp-2020->Desktop)
  (local-require ts-3d-exploration-asp-2020/katas)

  (set-fg-texture "3d-exploration-bg.jpg"
    (begin-job "3d-exploration"     
               ((collection-apply (curryr try-take 4) environment-katas)
                [FRONT-BG-COLOR googly-red]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(environment)")])
               ((collection-apply (curryr try-take 5) ground-objects-katas)
                [FRONT-BG-COLOR googly-orange]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(ground-objects)")])
               ((collection-apply (curryr try-take 5) sky-objects-katas)
                [FRONT-BG-COLOR googly-yellow]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(sky-objects)")])
               ((collection-apply (curryr try-take 5) particles-katas)
                [FRONT-BG-COLOR googly-green]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(particles)")])
               ((collection-apply (curryr try-take 5) animations-katas)
                [FRONT-BG-COLOR googly-blue]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(animations)")])
               )))|#

(define (ts-k2-clicker-asp-2020->Desktop)
  (local-require ts-k2-clicker-asp-2020/katas)

  (set-fg-texture "clicker-cartoon-bg.jpg"
    (begin-job "clicker-cartoon"     
               ((collection-apply (curryr try-take 4) day-one)
                [FRONT-BG-COLOR googly-red]
                [FRONT-FG-COLOR clear-white]
                [FRONT-TITLE    (title "(collect)")])
               ((collection-apply (curryr try-take 5) day-two)
                [FRONT-BG-COLOR googly-orange]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(more-collect)")])
               ((collection-apply (curryr try-take 5) day-three)
                [FRONT-BG-COLOR googly-yellow]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(avoid)")])
               ((collection-apply (curryr try-take 5) day-four)
                [FRONT-BG-COLOR googly-green]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(more-avoid)")])
               ((collection-apply (curryr try-take 5) day-five)
                [FRONT-BG-COLOR googly-blue]
                [FRONT-FG-COLOR clear-white] 
                [FRONT-TITLE    (title "(special)")])
               )))

(define (all->Desktop)
  ;(ts-battle-arena-asp-2019->Desktop)
  ;(ts-battle-arena-avengers-summer-camp-2019->Desktop)
  ;(ts-battle-arena-fortnite-summer-camp-2019->Desktop)
  ;(ts-battle-arena-starwars-summer-camp-2019->Desktop)
  
  ;(ts-survival-asp-2019->Desktop)
  ;(ts-survival-minecraft-summer-camp-2019->Desktop)
  ;(ts-survival-pokemon-summer-camp-2019->Desktop)

  ;(ts-adventure-asp-2019->Desktop)
  ;(ts-adventure-mario-summer-camp-2019->Desktop)
  ;(ts-adventure-harrypotter-summer-camp-2019->Desktop)

  ;(ts-k2-farm-summer-camp-2019->Desktop)
  ;(ts-k2-sea-summer-camp-2019->Desktop)
  ;(ts-k2-hero-summer-camp-2019->Desktop)
  ;(ts-k2-zoo-summer-camp-2019->Desktop)
  ;(ts-k2-asp-fall-2019->Desktop)
  ;(ts-3d-exploration-asp-2020->Desktop)
  (ts-k2-clicker-asp-2020->Desktop)
)


(all->Desktop)

