#lang racket

(require racket/runtime-path
         racket/contract
         pict
         scribble/manual)

(provide header-block
         time-warning
         lunch-block
         
         check-in-icebreakers
         intro-starter-katas 
         snack-break 
         game-time-15 
         nerd-out 
         kata-practice
         game-show
         market-wrap-up 
         lunch
         coding-warmup
         katas
         game-time-30
         final-katas
         game-jam-intro
         game-jam
         scoring-market
         check-in)

(define-runtime-path check-in-icebreakers "img/check-in-icebreakers.png")
(define-runtime-path intro-starter-katas "img/intro-starter-katas.png")
(define-runtime-path snack-break "img/snack-break.png")
(define-runtime-path game-time-15 "img/game-time-15-min.png")
(define-runtime-path nerd-out "img/nerd-out.png")
(define-runtime-path kata-practice "img/kata-practice.png")
(define-runtime-path game-show "img/game-show.png")
(define-runtime-path market-wrap-up "img/market-wrap-up.png")
(define-runtime-path lunch "img/lunch.png")
(define-runtime-path coding-warmup "img/coding-warmup.png")
(define-runtime-path katas "img/katas.png")
(define-runtime-path game-time-30 "img/game-time-30-min.png")
(define-runtime-path final-katas "img/final-katas-practice-review.png")
(define-runtime-path game-jam-intro "img/game-jam-intro.png")
(define-runtime-path game-jam "img/game-jam.png")
(define-runtime-path scoring-market "img/scoring-market.png")
(define-runtime-path check-in "img/check-in.png")

(define-runtime-path bring-together-icon "img/together-icon.png")
(define-runtime-path breakout-teams-icon "img/breakout-icon.png")
(define-runtime-path AM-icon "img/sun-am.png")
(define-runtime-path PM-icon "img/sun-pm.png")
(define-runtime-path clock-icon "img/clock.png")

(define time-warning (image clock-icon #:scale .75))
(define together (image bring-together-icon #:scale .5))
(define breakout (image breakout-teams-icon #:scale .5))


(define/contract (am-time t)
  (-> string? pict?)
  (hc-append (scale (bitmap AM-icon) .15)
             (ghost (rectangle 5 5))
             (text t null 20)))

(define/contract (pm-time t)
  (-> string? pict?)
  (hc-append (scale (bitmap PM-icon) .15) 
             (ghost (rectangle 5 5))
             (text t null 20)))

(define org-type?
  (or/c 'together 'breakout 'start-together 'start-breakout 'none))

(define/contract (header-block i am pm org-type)
  (-> any/c string? string? org-type? pict?)

  (define together-pict
    (scale (bitmap bring-together-icon) .3))

  (define breakout-pict
    (scale (bitmap breakout-teams-icon) .3))
   
  (define org-img
    (cond [(eq? org-type 'together)       (vl-append (ghost (rectangle 10 10))
                                                     together-pict)]
          [(eq? org-type 'breakout)       (vl-append (ghost (rectangle 10 10))
                                                     breakout-pict)]
          [(eq? org-type 'start-together) (vl-append (ghost (rectangle 10 10))
                                                     (hc-append
                                                      together-pict
                                                      (ghost (rectangle 10 10))
                                                      breakout-pict))]
          [(eq? org-type 'start-breakout) (vl-append (ghost (rectangle 10 10))
                                                     (hc-append
                                                      breakout-pict
                                                      (ghost (rectangle 10 10))
                                                      together-pict))]
          [(eq? org-type 'none)           (ghost (rectangle 0 0))]))
   
  (hc-append (scale (bitmap i) .5)
             (ghost (rectangle 20 20))
             (vl-append
              (am-time am)
              (pm-time pm)
              org-img)))

(define lunch-block
  (hc-append (scale (bitmap lunch) .5)
             (ghost (rectangle 20 20))
             (vl-append
              (am-time "12:00pm-12:45(ish)pm")
              (ghost (rectangle 10 10))
              (scale (bitmap bring-together-icon) .3))))