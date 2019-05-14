#lang scribble/manual

@(require "script-util.rkt")

@title{Monday Head Coach Script}

@(header-block check-in-icebreakers
               "8:45am-9:30am"
               "12:45pm-1:30pm"
               'together)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Arrive at the check-in location at " @bold{quarter of} " (8:45am/12:45pm)."]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Check for " @bold{incomplete paperwork} " before letting parent leave"]
          @item["Stay at check-in until all students arrive or " @bold{quarter past}
                " (9:15am/1:15pm). Return to camp room."]
          @item["Recommended Icebreakers: "
                @secref["Meet__n__Greet"
                        #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")] " or " 
                @secref["Four_Corners"
                        #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]]]



@(header-block intro-starter-katas
               "9:30am-10:15am"
               "1:30pm-2:15pm"
               'start-together)

@time-warning @bold{15, 10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Announce to all students:}
                @itemlist[@item["Welcome! " @bold{Introduce} " self and TLs"]
                          @item["Explain " @bold{Game Jam}]
                          @item["Explain " @bold{Katas}]
                          @item["Explain " @bold{Kata Cards, ThoughtSTEM Dollars, Market & Badges}]]]
          @item["Teach all students the " @bold{Core Values kata}]
          @item["Breakout into " @bold{camp teams}]
          @item["Monitor and assist TLs as they work on katas, starting with "
                @bold{Hello World kata}]
          @item[@bold{PM ONLY} " -- take " @bold{YOUR 30 min lunch break} " from "
                @bold{1:45-2:15}]]


@(header-block snack-break
               "10:15am-10:30am"
               "2:15pm-2:30pm"
               'together)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Bring camp " @bold{all together}]
          @item[@bold{Dismiss TLs for break} " -- TLs should LEAVE the camp space so they
                can actually relax/check phones/not be interrupted by students"]
          @item["All students are " @bold{off computers} " for the entire break"]
          @item["Monitor all students and keep it " @bold{safe and sane}]]


@(header-block game-time-15
               "10:30am-10:45am"
               "2:30pm-2:45pm"
               'together)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Bring camp " @bold{all together}]
          @item[@tabular[#:style 'boxed
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
                                     'cont))]]]



@(header-block nerd-out
               "10:45am-11:00am"
               "2:45pm-3:00pm"
               'breakout)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Breakout into " @bold{camp teams}]
          @item["Announce today's mission:"
                @itemlist[@item[@bold{Create a TEAM NAME and POSTER}]
                          @item["if additional time: "@bold{Share your favorite
                                animal(k2) or character(3-10) from your camp's fandom!}]]]
          @item["Monitor camp groups, inspiring further discussion as needed"]]


@(header-block kata-practice
               "11:00am-11:30am"
               "3:00pm-3:30pm"
               'breakout)

@time-warning @bold{10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Transition annoucement:}
                @itemlist[@item{Wrap up discussion}
                          @item{Back to katas}
                          @item{Earn more katas or extra challenges from TLs!}]]
          @item["Monitor camp groups, assisting TLs as needed"]]


@(header-block game-show
               "11:30am-11:45am"
               "3:30pm-3:45am"
               'start-together)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Bring camp " @bold{all together}]
          @item["Announce "@bold{rules & rewards} " of the game show:"
                @itemlist[@item{TLs as buzzers or raised hands}
                          @item{Wait to be called on, no shouting out!}
                          @item{TS dollars/other reward?}]]
          @item["Today's Whole Camp Daily Game Show Questions:"
                @itemlist[@item[@bold{When is Game Jam?}
                                @italic{ Friday}]
                          @item[@bold{How do you earn your first badge? Second? Final?}
                                @italic{ After earning 10 katas. 20 katas. Completing Game Jam.}]
                          @item[@bold{What are our Core Values?}
                                @italic{ It's not about my code, it's about what I CAN code. It's not about me, it't about my TEAM.}]
                          @item[@bold{Team Leaders -- cover your nametags. Who can tell me their Team Leader's name?}
                                @italic{ ...}]
                          @item[@bold{What is the program we are coding in?}
                                @italic{ DrRacket}]]]
          @item["Breakout into " @bold{camp teams} " for TLs to lead camp-specific
                game show questions"]]


@(header-block market-wrap-up
               "11:45am-12:00(ish)pm"
               "3:45pm-4:00(ish)pm"
               'start-breakout)

@itemlist[#:style 'compact
          @item[@bold{PM ONLY} " -- ensure you finish with enough time to travel to check-out
                location by 4pm"]
          @item["Assign yourself or a TL to be " @bold{Market Cashier}]
          @item["Students " @bold{tidy their camp table} " before allowed to go to
                market"]
          @item["Welcome camp teams " @bold{one at a time} " to visit market"]
          @item["Students done with market collect their things for lunch/home and line
                up by door"]]


@lunch-block

@time-warning @bold{10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Announce to all students} " the rules of lunch:"
                @itemlist[@item{Absolutely no running}
                          @item{Be courteous and polite to staff/other diners}
                          @item{One dessert per day}
                          @item{Clean up correctly}
                          @item{Sit together}]]
          @item["Gather all students with " @bold{allergies} " and give them a tour"]
          @item["Ensure you finish with enough time to travel to check-out
                location by 12:45pm"]
          @item["Keep lunch time " @bold{safe and organized}]]


@(header-block check-out
               "12:45pm-1:10pm"
               "4:00pm-4:10pm"
               'together)

@itemlist[#:style 'compact
          @item["Arrive at the check-out location " @bold{on time}]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Alert HQ of any students awaiting pickup at " @bold{ten past}
                " (1:10pm/4:10pm) and keep HQ up to date when picked up"]
          @item[@bold{PM ONLY} " -- dismiss TLs ASAP and clock out"]]