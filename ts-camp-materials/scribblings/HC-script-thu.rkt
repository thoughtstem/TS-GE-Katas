#lang scribble/manual

@(require "script-util.rkt")

@title{Thursday Head Coach Script}
@key

@section{Check In}
@(header-block check-in
               "8:45am-9:00am"
               "12:45pm-1:00pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
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


@section{Katas}          
@(header-block katas
               "9:15am-10:00am"
               "1:15pm-2:00pm"
               #:camp-type 'breakout)

@time-warning{@bold{15, 10, 5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item["Transition from independant review to learning new katas"]
          @item["Monitor and assist TLs as they work on the " @bold{next section katas}]
          @item[@pm-note[@bold{PM ONLY}]  @important-note[" -- take " @bold{YOUR 30 min lunch break}
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
@(header-block game-time-30
               "10:15am-10:45am"
               "2:15pm-2:45pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning{@bold{5 and 2 min} warnings}

@tabular[#:style 'boxed
         #:sep @hspace[1]
         #:row-properties '(bottom-border ())
         (list (list @bold{Age Group}
                     @bold{Game}
                     @bold{Notes})
               (list "All Ages"
                     @secref["Selfie_Scavenger_Hunt" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "Play with entire camp.")
               (list "Younger"
                     (list @secref["Duck_Duck_Goose" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                           " or "
                           @secref["What_Time_Is_It__Mr__Wolf__Tag" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")])
                     "Tag needs large outdoor space.")
               (list "Older"
                     @secref["Bring_Home_the_Bacon_Tag" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "Tag needs large outdoor play space."))]


@section{Nerd Out}
@(header-block nerd-out
               "10:45am-11:00am"
               "2:45pm-3:00pm"
               #:camp-type 'breakout
               #:outside? #t)

@time-warning{@bold{5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item["Announce today's mission:"
                @itemlist[@item[@new-note[@bold{Design a game! Think about the games you have been making
                                so far. In preparation for game jam, design a game that you could
                                make with this language.}]]
                          @item[@new-note{Make sure all teams have half-sheet paper, pens/pencils.}]
                          @item[@new-note{A prompt to inspire the students: "In this game you play as a
                                _____ your objective is ______ and the challenges are _______."}]]]
          @item["Monitor camp groups, inspiring further discussion as needed"]]


@section{Kata Practice}
@(header-block kata-practice
               "11:00am-11:30am"
               "3:00pm-3:30pm"
               #:camp-type 'breakout)

@time-warning{@bold{10, 5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@bold{Transition} " to computers and Katas"]
          @item["Monitor camp groups, assisting TLs as needed"]]


@section{Game Show}
@(header-block game-show
               "11:30am-11:45am"
               "3:30pm-3:45pm"
               #:camp-type 'start-together)

@time-warning{@bold{5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item["Review "@bold{rules & rewards} " of the game show as needed."]
          @item[@new-note["Today's Whole Camp Daily Game Show Questions:"]
                @itemlist[@item[@new-note[@bold{What are our Core Values?}
                                @italic{ It's not about my code, it's about what I CAN code. It's not about me, it't about my TEAM.}]]
                          @item[@new-note[@bold{(Without looking at any keyboards) How do you type an open parenthesis? Closed?}
                                @italic{ Shift+9 and shift+0}]]
                          @item[@new-note[@bold{Who can tell us about the game they designed today?}
                                @italic{ (1 answer per camp team)}]]
                          @item[@new-note[@bold{EVERYONE -- cover your nametags. Who can name the most people in the WHOLE camp??}]]]]
          @item[@breakout-note " for TLs to lead camp-specific
                game show questions"]]


@section{Market/Wrap Up}
@(header-block market-wrap-up
               "11:45am-12:00(ish)pm"
               "3:45am-4:00(ish)pm"
               #:camp-type 'start-breakout)

@itemlist[#:style 'compact
          @item[@pm-note["PM only -- ensure you finish with enough time to travel to check-out
                location by 4pm"]]
          @item["Assign yourself or a TL to be " @bold{Market Cashier}]
          @item["Students " @bold{tidy their camp table} " before allowed to go to
                market"]
          @item["Welcome camp teams " @bold{one at a time} " to visit market"]
          @item["Students done with market collect their things for lunch/home and line
                up by door"]]


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
          @item["Arrive at the check-out location " @bold{on time}]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Alert HQ of any students awaiting pickup at " @bold{ten past}
                " ("@am-note{1:10pm} "/" @pm-note{4:10pm} ") and keep HQ up to date when picked up"]
          @item[@pm-note[@bold{PM ONLY} " -- review and (if needed) finish EOD checklist,
                         below, with assistance from TLs, before dismissing TLs and clocking out"]]]


@section{EOD Checklist -- PM only}

@pm-note["Staff to complete (with assistance from students as appropriate) during Market/Wrap Up.
TL(s) continue as needed during checkout. "
@bold{Complete before dismissing TLs and clocking out.}]

@itemlist[#:style 'compact
          @item[@pm-note[@bold{Power down} " all chromebooks."]]
          @item[@pm-note[@bold{Properly store} " all chromebooks, mice, and other equipment as the
                location requires."]]
          @item[@pm-note[@bold{Divide lanyards} " into AM and PM groups. Be sure to put all-day
                campers' lanyards back with AM."]]
          @item[@pm-note[@bold{Tidy} " market, coach kits, tables, general room as needed."]]
          @item[@pm-note[@bold{Lights out} " and " @bold{lock up} " according to your location's
                protocol."]]]