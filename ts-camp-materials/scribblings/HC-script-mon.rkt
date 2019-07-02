#lang scribble/manual

@(require "script-util.rkt")

@title{Monday Head Coach Script}
@key

@section{Pre-Camp Checklist}

@AM-icon
@itemlist[#:style 'compact
          @item[@am-note[@bold{Adjust Camp Tables} " for week's enrollments -- add or remove
                         chairs/tables."]]
          @item[@am-note[@bold{Team Leaders} " create kata cards/lanyards for their camps "
                         @bold{AM and PM}]]
          @item[@am-note[@bold{TLs} " put their AM and PM " @bold{challenge cards}
                         " in teaching kit and " @bold{label kit} " with their name (using blue tape)"]]
          @item[@am-note["Set out " @bold{AM Camp Topic Signs} " on tables"]]]

@PM-icon
@itemlist[#:style 'compact
          @item[@pm-note["Set out " @bold{PM Camp Topic Signs} " on tables"]]]


@section{Check In & Icebreakers}
@(header-block check-in-icebreakers
               "8:45am-9:30am"
               "12:45pm-1:30pm"
               #:camp-type 'together)

@time-warning{@bold{5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item["Arrive at the check in location at " @bold{quarter of} " ("
                @am-note{8:45am} "/" @pm-note{12:45pm} ")."]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Stay at check in until all students arrive or " @bold{quarter past}
                " (" @am-note{9:15am} "/" @pm-note{1:15pm} "). Return to camp room."]
          @item["Recommended Icebreakers: "
                @secref["Meet__n__Greet"
                        #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")] " or " 
                @secref["Four_Corners"
                        #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]]]


@section{Intro & Starter Katas}
@(header-block intro-starter-katas
               "9:30am-10:15am"
               "1:30pm-2:15pm"
               #:camp-type 'start-together)

@time-warning{@bold{15, 10, 5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@together-note]
          @item[@bold{Announce to all students:}
                @itemlist[@item["Welcome! " @bold{Introduce} " self and TLs"]
                          @item["Explain " @bold{Game Jam}]
                          @item["Explain " @bold{Katas}]
                          @item["Explain " @bold{Kata Cards, ThoughtSTEM Dollars, Market & Badges}]]]
          @item["Teach all students the " @bold{Core Values kata}]
          @item[@breakout-note]
          @item["Monitor and assist TLs as they work on katas, starting with "
                @bold{Hello World kata}]
          @item[@pm-note[@bold{PM ONLY}]  @important-note[" -- take " @bold{YOUR 30 min lunch break}
                          " from " @bold{1:45-2:15}]]]

@section{Snack Break}
@(header-block snack-break
               "10:15am-10:30am"
               "2:15pm-2:30pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning{@bold{5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@important-note[@bold{Dismiss TLs for break} " -- TLs should LEAVE the camp space so they
                can actually relax/check phones/not be interrupted by students"]]
          @item["Unstructured break time! Students should snack, chat, play (non-computer) games, etc.
                Students " @bold{cannot be on computers, phones, other devices (theirs or ours)}]
          @item["Monitor all students and keep it " @bold{safe and sane}]]

@section{Game Time}
@(header-block game-time-15
               "10:30am-10:45am"
               "2:30pm-2:45pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning{@bold{5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@bold{Choose game(s)} " from chart below. Consider expected interest
                of the group, any play space restraints, and what has been already
                played when choosing."]
          @item[@bold{If both groups will be playing the same game} ", introduce the
                game first, then split up. " @bold{Otherwise} " split first, and have
                TLs help you in explaining/playing the games."]
          @item["When splitting into game groups, consider age recommendations,
                student safety (physical size of students), and actual student
                interest."]]
@tabular[#:style 'boxed
         #:sep @hspace[1]
         #:row-properties '(bottom-border ())
         (list (list @bold{Age Group}
                     @bold{Game}
                     @bold{Notes})
               (list "All Ages"
                     @secref["The_Red_Wind_Blows___" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "10 player min.")
               (list "Younger"
                     @secref["Four_Corners" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "If not played as icebreaker.")
               (list "Older"
                     (list @secref["Two_Truths_and_a_Lie" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                           " or "
                           @secref["Human_Knot" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")])
                     'cont))]


@section{Nerd Out}
@(header-block nerd-out
               "10:45am-11:00am"
               "2:45pm-3:00pm"
               #:camp-type 'breakout)

@time-warning{@bold{5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item["Announce today's mission:"
                @itemlist[@item[@new-note[@bold{Create a TEAM NAME and POSTER}]]
                          @item[@new-note{Make sure all teams have paper, markers.}]]]
          @item["Monitor camp groups, inspiring further discussion as needed"]]

@section{Kata Practice}
@(header-block kata-practice
               "11:00am-11:30am"
               "3:00pm-3:30pm"
               #:camp-type 'breakout)

@time-warning{@bold{10, 5 and 2 min} warnings}

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

@time-warning{@bold{5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@together-note]
          @item["Announce "@bold{rules & rewards} " of the game show:"
                @itemlist[@item{TLs as buzzers or raised hands}
                          @item{Wait to be called on, no shouting out!}
                          @item{TS dollars/other reward?}]]
          @item[@new-note{Today's Whole Camp Daily Game Show Questions:}
                @itemlist[@item[@new-note[@bold{When is Game Jam?}
                                          @italic{ Friday}]]
                          @item[@new-note[@bold{How do you earn your first badge? Second? Final?}
                                          @italic{ After earning 10 katas. 20 katas. Completing Game Jam.}]]
                          @item[@new-note[@bold{What are our Core Values?}
                                          @italic{ It's not about my code, it's about what I CAN code. It's not about me, it't about my TEAM.}]]
                          @item[@new-note[@bold{Team Leaders -- cover your nametags. Who can tell me their Team Leader's name?}]]
                          @item[@new-note[@bold{What is the program we are coding in?}
                                          @italic{ DrRacket}]]]]
          @item[@breakout-note " for TLs to lead camp-specific
                game show questions"]]

@section{Market/Wrap Up}
@(header-block market-wrap-up
               "11:45am-12:00(ish)pm"
               "3:45pm-4:00(ish)pm"
               #:camp-type 'start-breakout)

@itemlist[#:style 'compact
          @item[@pm-note[@bold{PM ONLY} " -- ensure you finish with enough time to travel to check-out
                         location by 4pm"]]
          @item["Assign yourself or a TL to be " @bold{Market Cashier}]
          @item["Students " @bold{tidy their camp table} " before allowed to go to
                market " @pm-note{(see EOD Checklist below for PM todo list)}]
          @item["Welcome camp teams " @bold{one at a time} " to visit market"]
          @item["Students done with market collect their things for lunch/home and line
                up by door"]]

@section{Lunch -- AM only}
@lunch-block

@time-warning{@bold{10, 5 and 2 min} warnings}

@itemlist[#:style 'compact
          @item[@am-note[@bold{Announce to all students} " the rules of lunch:"]
                         @itemlist[@item[@am-note{Absolutely no running}]
                                   @item[@am-note{Be courteous and polite to staff/other diners}]
                                   @item[@am-note{One dessert per day}]
                                   @item[@am-note{Clean up correctly}]
                                   @item[@am-note{Sit together}]]]
                @item[@am-note["Gather all students with " @bold{allergies} " and give them a tour"]]
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
          @item[@pm-note[@bold{PM ONLY} " -- review and (if needed) finish EOD (end of day) checklist,
                         below, with assistance from TLs, before dismissing TLs and clocking out"]]]

@section{EOD (End Of Day) Checklist -- PM only}

@pm-note["Staff to complete (with assistance from students as appropriate) during Market/Wrap Up.
TL(s) continue as needed during checkout. "
@bold{Complete before dismissing TLs and clocking out.}]
@itemlist[#:style 'compact
          @item[@pm-note[@bold{Power down} " all chromebooks."]]
          @item[@pm-note[@bold{Properly store} " all chromebooks, mice, and other equipment
                         according to your location's protocol."]]
          @item[@pm-note[@bold{Divide lanyards} " into AM and PM groups. Be sure to put
                         all-day campers' lanyards back with AM."]]
          @item[@pm-note[@bold{Tidy} " market, coach kits, tables, general room as needed."]]
          @item[@pm-note[@bold{Put away} " topic signs in proper bin."]]
          @item[@pm-note[@bold{Lights out} " and " @bold{lock up} " according to your
                         location's protocol."]]]