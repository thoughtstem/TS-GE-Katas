#lang scribble/manual

@(require "script-util.rkt")

@title{Friday Head Coach Script}
@key

@section{Check In}
@(header-block check-in
               "8:45am-9:00am"
               "12:45pm-1:00pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
          @item[@new-note[@bold{Touch base with TLs about Game Jam} ": answer any questions,
                confirm duties, etc. early in the day."]]
          @item["Arrive at the check in location at " @bold{quarter of} " ("
                @am-note{8:45am} "/" @pm-note{12:45pm} ")."]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Head to camp room " @bold{on the hour} " (" @am-note{9am} "/"
                @pm-note{1pm} ")"]
          @item["Assign " @bold{One TL} " to wait for any late students"
                @itemlist[@item{TL keeps tablet}
                          @item["TL returns to camp room when all students arrive or
                                at quarter past (" @am-note{9:15am} "/" @pm-note{1:15pm} ")"]]]
          @item["Once TL returns, " @bold{confirm attendance} " on backend is
                accurate with HQ over Slack"]]


@section{Coding Warmup}
@(header-block coding-warmup
               "9:00am-9:15am"
               "1:00pm-1:15pm"
               #:camp-type 'breakout)

@time-warning{@bold{5 and 2 min} warnings}
@itemlist[#:style 'compact
          @item["With loose guidance from TLs, " @bold{students review} " katas."]
          @item[@bold{Step in} " for TL who is waiting at check-in"]]


@section{Final Katas -- Practice and Review}
@(header-block final-katas
               "9:15am-10:00am"
               "1:15pm-2:00pm"
               #:camp-type 'breakout)

@time-warning{@bold{15, 10, 5 and 2 min} warnings}
@itemlist[#:style 'compact
          @item[@new-note["Team Leaders introduce the last katas and/or review as they see fit --
                this is the " @bold{last learning/practice before the jam} "."]]
          @item["Monitor and assist TLs."]
          @item[@important-note[@bold{PM ONLY} " -- take " @bold{YOUR 30 min lunch break}
                          " from " @bold{1:20-1:50}]]]


@section{Snack Break}
@(header-block snack-break
               "10:00am-10:15am"
               "2:00pm-2:15pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning{@bold{5 and 2 min} warnings}
@itemlist[#:style 'compact
          @item[@important-note[@bold{Dismiss TLs for break} " -- TLs should LEAVE the camp space."]]
          @item["All students are " @bold{off computers} " for the entire break"]
          @item["Monitor all students and keep it " @bold{safe and sane}]]


@section{Game Time}
@(header-block game-time-15
               "10:15am-10:30am"
               "2:15pm-2:30pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning{@bold{5 and 2 min} warnings}
@itemlist[@item[@new-note["Note the " @bold{shorter game time} " today. Feel free to adjust and pick a
                favorite game from earlier in the week to play again for less
                explaining time/more playing time."]]]
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


@section{Game Jam Intro}
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


@section{Game Jam}
@(header-block game-jam
               "10:45am-11:30am"
               "2:45pm-3:30pm"
               #:camp-type 'breakout)

@time-warning{@bold{15, 10, 5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@bold{Keep energy and positivity up!!}]
          @item["Monitor camp groups, assisting TLs as needed."]
          @item["Ensure all students get a " @bold{working game} " by the end of jam."]]


@section{Scoring & Market}
@(header-block scoring-market
               "11:30am-12:00(ish)pm"
               "3:30pm-4:00(ish)pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
          @item[@new-note["Lead all "@bold{3rd-10th} " camps in scoring their games:"]
                @itemlist[@item[@new-note{Walk students through formula}]
                          @item[@new-note{TLs assist in checking scores}]
                          @item[@new-note{TLs award final $$$ & badge}]]]
          @item[@new-note["For " @bold{K-2nd camps} ", TLs lead scoring as you lead 3rd-10th."]]
          @item[@new-note["As TLs finish up awarding dollars/badges, open the market."]]
          @item["Assign yourself or a TL to be " @bold{Market Cashier}]
          @item["Students " @bold{tidy their camp table} " before allowed to go to
                market" @pm-note{(check EOW Checklist below for PM todo list)}]
          @item["Welcome camp teams " @bold{one at a time} " to visit market"]
          @item["Students done with market collect their things for lunch/home and line
                up by door"]
          @item[@pm-note["PM only -- ensure you finish with enough time to travel to check-out
                location by 4pm"]]]

@section{Lunch -- AM only}
@lunch-block

@time-warning{@bold{10, 5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@am-note["Ensure you finish with enough time to travel to check-out
                location by 12:45pm"]]
          @item[@am-note["Keep lunch time " @bold{safe and organized}]]]


@section{Check Out}
@(header-block check-out
               "12:45pm-1:10pm"
               "4:00pm-4:10pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
          @item[@new-note[@bold{Students take home} " lanyards, extra dollars, prizes."]]
          @item["Arrive at the check-out location " @bold{on time}]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Alert HQ of any students awaiting pickup at " @bold{ten past}
                " ("@am-note{1:10pm} "/" @pm-note{4:10pm} ") and keep HQ up to date when picked up"]
          @item[@pm-note[@bold{PM ONLY} " -- review and (if needed) finish EOW (end of week) checklist,
                         below, with assistance from TLs, before dismissing TLs and clocking out"]
                @new-note[@bold{Have a great weekend!}]]]


@section{EOW Checklist -- PM only}

@pm-note{Staff to complete (with assistance from students as appropriate) during Market/Wrap Up.
TL(s) continue as needed during checkout. Complete before dismissing TLs and clocking out.}
@new-note[@bold{Disregard this list if final week, please refer to pack-up instructions.}]

@itemlist[#:style 'compact
          @item[@pm-note[@bold{Power down} " all chromebooks."]]
          @item[@new-note["In most locations, please leave the following " @bold{set up} ":"]
                @itemlist[#:style 'compact
                          @item[@new-note{Extension cords, power strips & power cords}]
                          @item[@new-note{Market setup (DO organize and tidy)}]
                          @item[@new-note{Tables & Chairs}]
                          @item[@new-note{Schedule poster}]]]
          @item[@new-note["In " @italic{all} " locations, please " @bold{neatly store}
                " the following in the " @bold{correctly labeled bins} ":"]
                @itemlist[#:style 'compact
                          @item[@new-note{Market items}]
                          @item[@new-note{Lanyards, badge holders and kata cards}]
                          @item[@new-note{Teaching kit materials}]
                          @item[@new-note{Head Coach bag materials}]
                          @item[@new-note{Extra markers, scrap paper, etc.}]
                          @item[@new-note{Mice}]
                          @item[@new-note{Chromebooks (unless location has charging locker,
                                where chromebooks should stay)}]]]
          @item[@new-note[@bold{Tidy} " the room (leave it how you would like to find it!)."]]
          @item[@new-note[@bold{Inform HQ} " of any equipment issues/needs."]]]