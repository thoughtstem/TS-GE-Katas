#lang racket

(provide adventure-badges
         survival-badges
         battlearena-badges

         k2-farm-badges
         k2-sea-badges
         k2-superhero-badges
         k2-zoo-badges
         
         avengers-badges
         fortnite-badges
         starwars-badges
         
         ;harrypoter-badges
         ;lotr-badges
         ;mario-badges
         
         (all-from-out "./styles/hexagon.rkt"
                       "./icons/main.rkt"
                       "./colors/pallets.rkt"
                       "./util.rkt"))

(require "./icons/main.rkt")
(require "./colors/pallets.rkt")
(require "./styles/hexagon.rkt")
(require "./util.rkt")

(define adventure-badges
  (hexagon-triad question question question
                 googly-red googly-blue googly-green))

(define survival-badges
  (hexagon-triad potion sword carrot
                 googly-yellow googly-red googly-green))

(define battlearena-badges
  (hexagon-triad double-swords mace coins
                 googly-green googly-blue googly-yellow))

(define k2-farm-badges
  (hexagon-triad chicken cow horse
                 bright-red bright-blue bright-green))

(define k2-sea-badges
  (hexagon-triad question question question
                 bright-purple bright-blue bright-green))

(define k2-superhero-badges
  (hexagon-triad play thor superhero
                 bright-red bright-yellow bright-blue))

(define k2-zoo-badges
  (hexagon-triad question question question
                 bright-red bright-yellow bright-orange))

(define avengers-badges
  (hexagon-triad question question question 
                 googly-red googly-blue googly-green))

(define fortnite-badges
  (hexagon-triad question question question
                 googly-blue googly-green googly-yellow))

(define starwars-badges
  (hexagon-triad laser-sword robot space-ship 
                 googly-green googly-yellow googly-red))

;NOTE: If you make more of these, please document them in ts-kata-util/scribblings/badge-maker.scrbl


;harrypoter-badges
;lotr-badges
;mario-badges

(module+ test
  adventure-badges
  survival-badges
  battlearena-badges

  k2-farm-badges
  k2-sea-badges
  k2-superhero-badges
  k2-zoo-badges
         
  avengers-badges
  fortnite-badges
  starwars-badges
  )
