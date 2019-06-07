#lang scribble/manual

@(require "script-util.rkt")

@title{Wednesday Head Coach Script}
@key

@section{Check In}
@(header-block check-in
               "8:45am-9:00am"
               "12:45pm-1:00pm"
               #:camp-type 'together)

@itemlist[#:style 'compact
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


@section{Coding Warmup}
@(header-block coding-warmup
               "9:00am-9:15am"
               "1:00pm-1:15pm"
               #:camp-type 'breakout)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["With loose guidance from TLs, " @bold{students review} " katas."]
          @item[@bold{Step in} " for TL who is waiting at check-in"]]


@section{Katas}          
@(header-block katas
               "9:15am-10:00am"
               "1:15pm-2:00pm"
               #:camp-type 'breakout)

@time-warning @bold{15, 10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Transision from independant review to learning new katas"]
          @item["Monitor and assist TLs as they work on the " @bold{next section katas}]
          @item[@important-note[@bold{PM ONLY} " -- take " @bold{YOUR 30 min lunch break}
                          " from " @bold{1:20-1:50}]]]


@section{Snack Break}
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


@section{Game Time}
@(header-block game-time-30
               "10:15am-10:45am"
               "2:15pm-2:45pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning @bold{5 and 2 min} warnings

@tabular[#:style 'boxed
         #:sep @hspace[1]
         #:row-properties '(bottom-border ())
         (list (list @bold{Age Group}
                     @bold{Game}
                     @bold{Notes})
               (list "All Ages"
                     (list @secref["What_s_the_Difference__--_Partners" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                           " or "
                            @secref["What_s_the_Difference__--_Group" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")])
                     'cont)
               (list "Younger"
                     (list @secref["Wax_Museum" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                           " or "
                           @secref["Clam_Free_Tag" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")])
                     "Tag needs large outdoor space.")
               (list "Older"
                     @secref["Blind_Emoji_Artist" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "Can play with any number of players."))]


@section{Nerd Out}
@(header-block nerd-out
               "10:45am-11:00am"
               "2:45pm-3:00pm"
               #:camp-type 'breakout)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Announce today's mission:"
                @itemlist[@item[@bold{Design an Original Character in your fandom/animal world.
                                Give your character a name, some other defining characteristics and
                                draw a picture of them!}]
                          @item{Make sure each team has half-sheet paper, pens/pencils/markers.}
                          @item{Help Team Leaders come up at least 3 more characteritics to be
                                defined that are specific to their fandom.}]]
          @item["Monitor camp groups, inspiring further creativity as needed"]]


@section{Kata Practice}
@(header-block kata-practice
               "11:00am-11:30am"
               "3:00pm-3:30pm"
               #:camp-type 'breakout)

@time-warning @bold{10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Transition annoucement:}
                @itemlist[@item{Wrap up discussion}
                          @item{Back to katas}
                          @item{Earn more katas or extra challenges from TLs!}]]
          @item["Monitor camp groups, assisting TLs as needed"]]


@section{Game Show}
@(header-block game-show
               "11:30am-11:45am"
               "3:30pm-3:45pm"
               #:camp-type 'start-together)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Bring camp " @bold{all together}]
          @item["Review "@bold{rules & rewards} " of the game show as needed."]
          @item["Today's Whole Camp Daily Game Show Questions:"
                @itemlist[@item[@bold{Name three different non-computer games we have played so far?}
                                @italic{ (games played during game time)}]
                          @item[@bold{How long does Game Jam last?}
                                @italic{ 45 minutes.}]
                          @item[@bold{Who can tell me 1 thing about the Original Character they created today?}
                                @italic{ (1 answer per camp team)}]
                          @item[@bold{Team Leaders (and self!) -- cover your nametags. Who can name ALL camp staff??}]]]
          @item["Breakout into " @bold{camp teams} " for TLs to lead camp-specific
                game show questions"]]


@section{Market/Wrap Up}
@(header-block market-wrap-up
               "11:45am-12:00(ish)pm"
               "3:45am-4:00(ish)pm"
               #:camp-type 'start-breakout)

@itemlist[#:style 'compact
          @item["PM only -- ensure you finish with enough time to travel to check-out
                location by 4pm"]
          @item["Assign yourself or a TL to be " @bold{Market Cashier}]
          @item["Students " @bold{tidy their camp table} " before allowed to go to
                market"]
          @item["Welcome camp teams " @bold{one at a time} " to visit market"]
          @item["Students done with market collect their things for lunch/home and line
                up by door"]]

@section{Lunch -- AM only}
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
          @item["Arrive at the check-out location " @bold{on time}]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Alert HQ of any students awaiting pickup at " @bold{ten past}
                " (1:10pm/4:10pm) and keep HQ up to date when picked up"]
          @item[@bold{PM ONLY} " -- review and complete EOD checklist, below,
                with assitance from TLs before dismissing TLs ASAP and clock out"]]

@section{EOD Checklist -- PM only}

Staff to complete (with assistance from students as appropriate) during Market/Wrap Up.
TL(s) continue as needed during checkout.
@bold{Complete before dismissing TLs and clocking out.}

@itemlist[#:style 'compact
          @item[@bold{Power down} " all chromebooks."]
          @item[@bold{Properly store} " all chromebooks, mice, and other equipment as the
                location requires."]
          @item[@bold{Divide lanyards} " into AM and PM groups. Be sure to put all-day
                campers' lanyards back with AM."]
          @item[@bold{Tidy} " market, coach kits, tables, general room as needed."]
          @item[@bold{Lights out} " and " @bold{lock up} " according to your location's
                protocol."]]