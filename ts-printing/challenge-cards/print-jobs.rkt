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

(define (ts-battle-arena-asp-2019->Desktop)
  (local-require ts-battle-arena-asp-2019/katas)

  (set-fg-texture "paint-daubs1.jpg"
    (begin-job "ts-battle-arena-asp-2019"     
               ((collection-apply (curryr try-take 4) avatar-katas)
                 [FRONT-BG-COLOR googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(avatar)")]) 
               ((collection-apply (curryr try-take 5) enemy-katas) 
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(enemies)")])
               ((collection-apply (curryr try-take 5) weapon-katas) 
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(weapons)")])
               ((collection-apply (curryr try-take 5) powerup-katas) 
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(powerups)")])
               (background-katas ;Not 5 in here
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(background)")]))))

(define (ts-battle-arena-avengers-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-avengers-summer-camp-2019/katas)

  (set-fg-texture "grunge1.jpg" 
    (begin-job "ts-battle-arena-avengers-summer-camp-2019"    
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
                 [FRONT-TITLE    (title "(villains)")]) 
               ((collection-apply (curryr try-take 5) hero-power-katas)
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(hero-powers)")]) 
               ((collection-apply (curryr try-take 5) powerup-katas)
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(powerup)")]))))



(define (ts-battle-arena-fortnite-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-fortnite-summer-camp-2019/katas)

  (set-fg-texture "swirls1.jpg" 
               (begin-job "ts-battle-arena-fortnite-summer-camp-2019"    
                          ((collection-apply (curryr try-take 4) avatar-katas) 
                            [FRONT-BG-COLOR    googly-red]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(avatar)")]) 
                          ((collection-apply (curryr try-take 5) selected-enemy-katas)
                            [FRONT-BG-COLOR    googly-orange]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(enemies)")]) 
                          ((collection-apply (curryr try-take 5) selected-weapon-katas) 
                            [FRONT-BG-COLOR    googly-yellow]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(weapons)")]) 
                          ((collection-apply (curryr try-take 5) powerup-katas ) 
                            [FRONT-BG-COLOR    googly-green]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(powerups)")]) 
                          ((collection-apply (curryr try-take 5) selected-tower-katas)
                            [FRONT-BG-COLOR    googly-blue]
                            [FRONT-FG-COLOR clear-white]
                            [FRONT-TITLE    (title "(towers)")]) )))


(define (ts-battle-arena-starwars-summer-camp-2019->Desktop)
  (local-require ts-battle-arena-starwars-summer-camp-2019/katas)

  (set-fg-texture "paint-swirls1.jpg"
    (begin-job "ts-battle-arena-starwars-summer-camp-2019"    
               ((collection-apply (curryr try-take 4) rebel-katas)
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(rebels)")]) 
               ((collection-apply (curryr try-take 5) imperial-katas)
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(imperials)")]) 
               ((collection-apply (curryr try-take 5) weapon-katas)
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(weapons)")]) 
               ((collection-apply (curryr try-take 5) powerup-katas)
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(powerups)")]) 
               ((collection-apply (curryr try-take 5) trap-weapon-katas)
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(trap-weapons)")]) )))


(define (ts-survival-asp-2019->Desktop)
  (local-require ts-survival-asp-2019/katas)

  (set-fg-texture "swish1.jpg"
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
                 [FRONT-TITLE    (title "(enemies)")]) 
               ((collection-apply (curryr try-take 5) crafter-katas)
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(crafters)")]) 
               (bg-katas
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(backgrounds)")]))))

(define (ts-survival-minecraft-summer-camp-2019->Desktop)
  (local-require ts-survival-minecraft-summer-camp-2019/katas)

  (set-fg-texture "checkers.jpg" 
    (begin-job "ts-survival-minecraft-summer-camp-2019"
               ((collection-apply (curryr try-take 4) custom-skin-katas)
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(custom-skin)")]) 
               ((collection-apply (curryr try-take 5) food-katas) 
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(food)")]) 
               ((collection-apply (curryr try-take 5) ore-katas )
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(ore)")]) 
               ((collection-apply (curryr try-take 5) mob-katas)
                 [FRONT-BG-COLOR    googly-green]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(mobs)")]) 
               ((collection-apply (curryr try-take 5) crafter-katas)
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(crafting)")]))))

(define (ts-survival-pokemon-summer-camp-2019->Desktop)
  (local-require ts-survival-pokemon-summer-camp-2019/katas)

  (set-fg-texture "rays1.jpg" 
    (begin-job "ts-survival-pokemon-summer-camp-2019"
               ((collection-apply (curryr try-take 4) pokemon-katas)
                 [FRONT-BG-COLOR    googly-red]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(avatar)")]) 
               ((collection-apply (curryr try-take 5) food-katas )
                 [FRONT-BG-COLOR    googly-orange]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(food)")]) 
               ((collection-apply (curryr try-take 5) trainer-katas )
                 [FRONT-BG-COLOR    googly-yellow]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(trainers)")]) 
               ((collection-apply (curryr try-take 5) stone-katas )
                 [FRONT-BG-COLOR    googly-green] 
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(stone)")]) 
               ((collection-apply (curryr try-take 5) sky-katas ) 
                 [FRONT-BG-COLOR    googly-blue]
                 [FRONT-FG-COLOR clear-white]
                 [FRONT-TITLE    (title "(sky)")]) )))

(define (ts-k2-sea-summer-camp-2019->Desktop)
  (local-require ts-k2-sea-summer-camp-2019/katas)

  (set-fg-texture "swish2.jpg" 
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
                               [FRONT-TITLE       (title "(more-enemies)")])
                              ((collection-apply (curryr try-take 5) friend-katas)
                               [FRONT-BG-COLOR    bright-green]
                               [FRONT-FG-COLOR    clear-white]
                               [FRONT-TITLE       (title "(friend)")])
                              ((collection-apply (curryr try-take 5) more-friend-katas)
                               [FRONT-BG-COLOR    bright-blue]
                               [FRONT-FG-COLOR    clear-white]
                               [FRONT-TITLE       (title "(more-friend)")]))))

(define (ts-k2-farm-summer-camp-2019->Desktop)
  (local-require ts-k2-farm-summer-camp-2019/katas)

  (set-fg-texture "wallpaper1.jpg"
                  (begin-job "ts-k2-farm-summer-camp-2019"
                             ((collection-apply (curryr try-take 4) day-one) 
                              [FRONT-BG-COLOR    bright-red]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(food)")])
                             ((collection-apply (curryr try-take 5) day-two) 
                              [FRONT-BG-COLOR    bright-orange]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(coin)")])
                             ((collection-apply (curryr try-take 5) day-three) 
                              [FRONT-BG-COLOR    bright-yellow]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(more-coin)")])
                             ((collection-apply (curryr try-take 5) day-four)
                              [FRONT-BG-COLOR    bright-green]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(enemy)")])
                             ((collection-apply (curryr try-take 5) day-five)
                              [FRONT-BG-COLOR    bright-blue]
                              [FRONT-FG-COLOR    clear-white]
                              [FRONT-TITLE       (title "(more-enemy)")]))))

(define (ts-k2-hero-summer-camp-2019->Desktop)
  (local-require ts-k2-hero-summer-camp-2019/katas)

  (set-fg-texture "wavy-lines1.jpg"
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
                              [FRONT-TITLE       (title "(levels)")]))))




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


