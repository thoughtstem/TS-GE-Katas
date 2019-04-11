#lang racket

(provide survival-badges
         battle-arena-badges
         k2-superhero-badges
         k2-farm-badges
         starwars-badges

         (all-from-out "./styles/hexagon.rkt"
                       "./icons/main.rkt"
                       "./colors/pallets.rkt"
                       "./util.rkt"))

(require "./icons/main.rkt")
(require "./colors/pallets.rkt")
(require "./styles/hexagon.rkt")
(require "./util.rkt")

(define survival-badges
  (hexagon-triad potion sword carrot
                 googly-yellow googly-red googly-green))

(define battle-arena-badges
  (hexagon-triad double-swords mace coins
                 googly-green googly-blue googly-yellow))

(define k2-superhero-badges
  (hexagon-triad play thor superhero
                 bright-red bright-yellow bright-blue))

;NOTE: If you make more of these, please document them in ts-kata-util/scribblings/badge-maker.scrbl

(define k2-farm-badges
  (hexagon-triad chicken cow horse
                 bright-red bright-yellow bright-blue))

(define starwars-badges
  (hexagon-triad laser-sword robot space-ship 
                 googly-red googly-blue googly-green))

(module+ test
  survival-badges
  battle-arena-badges
  k2-superhero-badges
  k2-farm-badges
  starwars-badges
  )
