#lang racket

(require "./main.rkt"
         ts-kata-util/katas/main
         ts-kata-util/badge-maker/colors/pallets
         2htdp/image)

;Can we abstract the local-require?  Is it always /katas?

(define (title s)
  (text s 30 (color 0 0 0 150)))

(define clear-white (color 255 255 255 100))

(define (ts-battle-arena->Desktop)
  (local-require ts-battle-arena/katas)
  (collection->folder battle-arena-katas 
                      (build-path (find-system-path 'home-dir)
                                  "Desktop"
                                  "ts-battle-arena-cards")))


;How to pull apart for settings, e.g. different bg color... 
(define (ts-battle-arena-asp-2019->Desktop)
  (local-require ts-battle-arena-asp-2019/katas)

  (begin-job 
    (avatar-katas 
      [FRONT-COLOR    googly-red]
      [FRONT-COLOR-FG clear-white]
      [FRONT-TITLE    (title "(avatar)")]) 
    (weapon-katas 
      [FRONT-COLOR    googly-orange]
      [FRONT-COLOR-FG clear-white] 
      [FRONT-TITLE    (title "(weapon)")])))

(define-syntax-rule (begin-job 
                      (collection [k v] ...) 
                      ...)
  (begin
    (define counter 0)

    (parameterize ([k v] ...
                         [STARTING-CARD-NUMBER counter])
      (collection->Desktop collection)
      (set! counter (+ counter 
                       (length 
                         (kata-collection-katas collection))))) 
    ...))




(ts-battle-arena-asp-2019->Desktop)





