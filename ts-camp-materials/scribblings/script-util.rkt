#lang racket

(require racket/runtime-path
         racket/contract
         pict
         scribble/manual
         (only-in scribble/core
                  style
                  color-property
                  background-color-property)
         (only-in racket/draw
                  make-color))

(provide header-block
         time-warning
         lunch-block
         important-note
         am-note
         pm-note
         new-note
         together-note
         breakout-note
         
         key
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
         check-in
         check-out
         
         outside-icon
         AM-icon
         PM-icon)

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
(define-runtime-path check-out "img/check-out.png")

(define-runtime-path bring-together-icon "img/together-icon-purple.png")
(define-runtime-path breakout-teams-icon "img/breakout-icon-teal.png")
(define-runtime-path AM-icon-path "img/sun-am.png")
(define-runtime-path PM-icon-path "img/sun-pm.png")
(define-runtime-path clock-icon "img/clock.png")
(define-runtime-path outside-icon "img/outside-icon.png")

(define time-warning-img  (image clock-icon #:scale .5))
;(define together          (image bring-together-icon #:scale .6))
;(define breakout          (image breakout-teams-icon #:scale .6))
(define AM-icon           (image AM-icon-path #:scale .25))
(define PM-icon           (image PM-icon-path #:scale .25))

(define small-break (ghost (rectangle 5 5)))
(define med-break   (ghost (rectangle 10 10)))

(define pict-orange (make-color 240 130 0))
(define pict-blue   (make-color 15 100 230))

(define (time-warning . s)
  (apply (curry elem time-warning-img #:style (style "grey" (list (color-property (list 100 100 100))))) s))

(define/contract (am-time t)
  (-> string? pict?)
  (hc-append (scale (bitmap AM-icon-path) .15)
             small-break
             (text t (cons pict-orange 'default) 20)))

(define/contract (pm-time t)
  (-> string? pict?)
  (hc-append (scale (bitmap PM-icon-path) .15) 
             small-break
             (text t (cons pict-blue 'default) 20)))

(define org-type?
  (or/c 'together 'breakout 'start-together 'start-breakout 'none))

(define/contract (header-block i am pm #:camp-type [org-type 'none] #:outside? [outside? #f])
  (->* (any/c string? string?) (#:camp-type org-type? #:outside? boolean?) pict?)

  (define together-pict
    (scale (bitmap bring-together-icon) .6))

  (define breakout-pict
    (scale (bitmap breakout-teams-icon) .6))

  (define outside-pict
    (scale (bitmap outside-icon) .6))
   
  (define org-img
    (cond [(eq? org-type 'together)       (vl-append med-break
                                                     together-pict)]
          [(eq? org-type 'breakout)       (vl-append med-break
                                                     breakout-pict)]
          [(eq? org-type 'start-together) (vl-append med-break
                                                     (hc-append
                                                      together-pict
                                                      med-break
                                                      breakout-pict))]
          [(eq? org-type 'start-breakout) (vl-append med-break
                                                     (hc-append
                                                      breakout-pict
                                                      med-break
                                                      together-pict))]
          [(eq? org-type 'none)           (ghost (rectangle 0 0))]))

  (define maybe-outside-icon
    (if outside? outside-pict (ghost (rectangle 0 0))))

  (define icons
    (hc-append org-img
               med-break
               maybe-outside-icon))
   
  (hc-append (scale (bitmap i) .5)
             (ghost (rectangle 20 20))
             (vl-append
              (am-time am)
              (pm-time pm)
              icons)))

(define lunch-block
  (hc-append (scale (bitmap lunch) .5)
             (ghost (rectangle 20 20))
             (vl-append
              (text "AM CAMP ONLY" (cons pict-orange 'default) 20)
              (am-time "12:00pm-12:45(ish)pm")
              med-break
              (scale (bitmap bring-together-icon) .6))))

(define red-style
  (style "red" (list (color-property "red"))))
(define am-style
  (style "orange" (list (color-property (list 240 130 0)))))
(define pm-style
  (style "blue" (list (color-property (list 15 100 230)))))
(define green-style
  (style "green" (list (color-property (list 0 150 20)))))
(define teal-style
  (style "teal" (list (color-property (list 0 221 162)))))
(define purple-style
  (style "purple" (list (color-property (list 179 106 226)))))

(define (important-note . s)
  (apply (curry elem #:style red-style) s))

(define (am-note . s)
  (apply (curry elem #:style am-style) s))

(define (pm-note . s)
  (apply (curry elem #:style pm-style) s))

(define (new-note . s)
  (apply (curry elem #:style green-style) s))

(define together-note
  (elem "Bring camp " (bold "all together") #:style purple-style))

(define breakout-note
  (elem "Breakout into " (bold "camp teams") #:style teal-style))


(define key
  (tabular #:style (style "color" (list (background-color-property '(245 245 255))))
           #:row-properties '(bottom-border)
           #:sep (hspace 1)
           (list (list  "" "" (bold "SCRIPT KEY") "")
                 (list "" (scale (bitmap AM-icon-path) .15)
                       " = AM camp"
                       (am-note "AM camp only notes"))
                 (list "" (scale (bitmap PM-icon-path) .15)
                       " = PM camp"
                       (pm-note "PM camp only notes"))
                 (list "" (scale (bitmap outside-icon) .5)
                       " = move outside for this block (if possible)"
                       'cont)
                 (list "" (scale (bitmap bring-together-icon) .5)
                       "= entire camp is together/mixed for this block"
                       'cont)
                 (list "" (scale (bitmap breakout-teams-icon) .5)
                       "= breakout into individual camp teams for this block"
                       'cont)
                 (list "" ""
                       (important-note "Really important notes!")
                       'cont)
                 (list "" ""
                       (new-note "New notes for this day only/this day forward")
                       'cont))))

