#lang scribble/manual

@(require "script-util.rkt")

@title{Friday Head Coach Script}

@(header-block check-in
               "8:45am-9:00am"
               "12:45pm-1:00pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
          @item[@bold{Touch base with TLs about Game Jam} ": answer any questions,
                confirm duties, etc. early in the day."]
          @item["Arrive at the check-in location at " @bold{quarter of}
                " (8:45am/12:45pm)."]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Head to camp room " @bold{on the hour} " (9am/1pm)"]
          @item["Assign " @bold{One TL} " to wait for any late students"
                @itemlist[@item{TL keeps tablet}
                          @item{TL returns to camp room when all students arrive or
                                at quarter past (9:15am/1:15pm)}]]
          @item["Once TL returns, " @bold{confirm attendance} " on backend is
                accurate with HQ over Slack"]]

@(header-block coding-warmup
               "9:00am-9:15am"
               "1:00pm-1:15pm"
               #:camp-type 'breakout)

@time-warning @bold{5 and 2 min} warnings
@itemlist[#:style 'compact
          @item["With loose guidance from TLs, " @bold{students review} " katas."]
          @item[@bold{Step in} " for TL who is waiting at check-in"]]

          
@(header-block final-katas
               "9:15am-10:00am"
               "1:15pm-2:00pm"
               #:camp-type 'breakout)

@time-warning @bold{15, 10, 5 and 2 min} warnings
@itemlist[#:style 'compact
          @item["Team Leaders introduce the last katas and/or review as they see fit --
                this is the " @bold{last learning/practice before the jam} "."]
          @item["Monitor and assist TLs."]
          @item[@bold{PM ONLY} " -- take " @bold{YOUR 30 min lunch break} " from "
                @bold{1:20-1:50}]]



@(header-block snack-break
               "10:00am-10:15am"
               "2:00pm-2:15pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning @bold{5 and 2 min} warnings
@itemlist[#:style 'compact
          @item[@bold{Dismiss TLs for break} " -- TLs should LEAVE the camp space so they
                can actually relax/check phones/not be interrupted by students"]
          @item["All students are " @bold{off computers} " for the entire break"]
          @item["Monitor all students and keep it " @bold{safe and sane}]]



@(header-block game-time-15
               "10:15am-10:30am"
               "2:15pm-2:30pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning @bold{5 and 2 min} warnings
@itemlist[@item["Note the shorter game time today. Feel free to adjust and pick a
                favorite game from earlier in the week to play again for less
                explaining time/more playing time."]]
@tabular[#:style 'boxed
         #:sep @hspace[1]
         #:row-properties '(bottom-border ())
         (list (list @bold{Age Group}
                     @bold{Game}
                     @bold{Notes})
               (list "All Ages"
                     (list @secref["Bippity_Bippity_Bop" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                           " or "
                            @secref["Elbow_Tag" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")])
                     "Tag needs large outdoor play space.")
               (list "Younger"
                     @secref["Ultimate_Rock_Paper_Scissors" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "10 player min.")
               (list "Older"
                     @secref["Jedi_Mind_Tricks" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "8 player min."))]


@(header-block game-jam-intro
               "10:30am-10:45am"
               "2:30pm-2:45pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
          @item["Announce to all students " @bold{Game Jam Info} ":"
                @itemlist[@item{45 min jam}
                          @item{How to earn points}
                          @item{Your game MUST RUN}
                          @item{Coach/TLs now Judges}
                          @item{Resources if you get stuck (and prices!)}
                          @item{Optional partners, rules for partners}
                          @item["Important advice: "@bold{Start SMALL and TEST often}]]]
          @item["Give time for " @bold{a few questions} "." ]
          @item["Before starting the jam, ensure that all students:"
                @itemlist[@item{Have a partner (if they choose)}
                          @item{Have an index card w/ their name(s)}
                          @item["Are " @bold{PUMPED} "!!!"]]]
          @item["Before starting the jam, ensure that all Team Leaders:"
                @itemlist[@item{Have stickers}
                          @item{Have challenge cards ready}
                          @item{Know resource prices}
                          @item{Agree on a "bonus point" range so that bonus points
                                stay fair across all camp teams (example, agree on a
                                range of 2 - 6 bonus points per student or pair.)}
                          @item["Are " @bold{PUMPED} "!!!"]]]]


@(header-block game-jam
               "10:45am-11:30am"
               "2:45pm-3:30pm"
               #:camp-type 'breakout)

@time-warning @bold{15, 10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Keep energy and positivity up!!}]
          @item["Monitor camp groups, assisting TLs as needed."]
          @item["Ensure all students get a " @bold{working game} " by the end of jam."]]


@(header-block scoring-market
               "11:30am-12:00(ish)pm"
               "3:30pm-4:00(ish)pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
          @item["Lead all "@bold{3rd-10th} " camps in scoring their games:"
                @itemlist[@item{Walk students through formula}
                          @item{TLs assist in checking scores}
                          @item{TLs award final $$$}]]
          @item["For " @bold{K-2nd camps} ", TLs lead scoring as you lead 3rd-10th."]
          @item["As awarding is finishing up, open the market."]
          @item["Assign yourself or a TL to be " @bold{Market Cashier}]
          @item["Students " @bold{tidy their camp table} " before allowed to go to
                market"]
          @item["Welcome camp teams " @bold{one at a time} " to visit market"]
          @item["Students done with market collect their things for lunch/home and line
                up by door"]
          @item["PM only -- ensure you finish with enough time to travel to check-out
                location by 4pm"]]

@lunch-block

@time-warning @bold{10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Ensure you finish with enough time to travel to check-out
                location by 12:45pm"]
          @item["Keep lunch time " @bold{safe and organized}]]


@(header-block check-out
               "12:45pm-1:10pm"
               "4:00pm-4:10pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
          @item[@bold{Students take home lanyards, extra dollars, prizes.}]
          @item["Arrive at the check-out location " @bold{on time}]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Alert HQ of any students awaiting pickup at " @bold{ten past}
                " (1:10pm/4:10pm) and keep HQ up to date when picked up"]
          @item[@bold{PM ONLY} " -- dismiss TLs ASAP and clock out. "
                @bold{Have a great weekend!}]]