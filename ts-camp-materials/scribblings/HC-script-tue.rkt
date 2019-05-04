#lang scribble/manual

@(require "script-util.rkt")

@title{Tuesday Head Coach Script}

@(header-block check-in
               "8:45am-9:00am"
               "12:45pm-1:00pm"
               'together)

@itemlist[#:style 'compact
          @item["Arrive at the check-in location at " @bold{quarter of}
                " (8:45am/12:45pm)."]
          @item[@bold{Assign} " specific jobs to all TLs"]
          @item["Head to camp room " @bold{on the hour} " (9am/1pm)"]
          @item["Assign " @bold{One TL} " to wait for any late students"
                @itemlist[@item{TL keeps tablet?}
                          @item{TL returns to camp room when all students arrive or
                                at quarter past (9:15am/1:15pm)}]]]

@(header-block coding-warmup
               "9:00am-9:15am"
               "1:00pm-1:15pm"
               'breakout)

@itemlist[#:style 'compact
          @item["With loose guidance from TLs, " @bold{students review} " code from
                yesterday"]
          @item[@bold{Step in} " for TL who is waiting at check-in"]]

@time-warning @bold{5 and 2 min} warnings
          
@(header-block katas
               "9:15am-10:00am"
               "1:15pm-2:00pm"
               'breakout)

@itemlist[#:style 'compact
          @item[@bold{Transision announcement:}
                @itemlist[@item["Welcome back!"]
                          @item[@bold{New Katas} " today!"]
                          @item["So " @bold{listen up} " to TLs"]]]
          @item["Monitor and assist TLs as they work on the " @bold{next section katas}]
          @item[@bold{PM ONLY} " -- take " @bold{YOUR 30 min lunch break} " from "
                @bold{1:20-1:50}]]

@time-warning @bold{15, 10, 5 and 2 min} warnings


@(header-block snack-break
               "10:00am-10:15am"
               "2:00pm-2:15pm"
               'together)

@itemlist[#:style 'compact
          @item[@bold{Dismiss TLs for break} " -- TLs should LEAVE the camp space so they
                can actually relax/check phones/not be interrupted by students"]
          @item["All students are " @bold{off computers} " for the entire break"]
          @item["Monitor all students and keep it " @bold{safe and sane}]]

@time-warning @bold{5 and 2 min} warnings

@(header-block game-time-30
               "10:15am-10:45am"
               "2:15pm-2:45pm"
               'together)
@;edit from here
@itemlist[#:style 'compact
          @item["Recommended game: " @secref["I_Like_My_Neighbors_Who___"
                                             #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                @itemlist[@item["Since this is a speedy game, and there is a risk of
                                collisions, "  @bold{split the camp} " into  a
                                smaller-students group and a larger-students group"]]]]

@time-warning @bold{5 and 2 min} warnings

@(header-block nerd-out
               "10:45am-11:00am"
               "2:45pm-3:00pm"
               'breakout)

@itemlist[#:style 'compact
          @item["Breakout into " @bold{camp teams}]
          @item["Announce today's prompt:"
                @itemlist[@item[@bold{Share your favorite animal(k2) or character(3-10) from
                                      your camp's fandom!}]]]
          @item["Monitor camp groups, inspiring further discussion as needed"]]
@time-warning @bold{5 and 2 min} warnings

@(header-block kata-practice
               "11:00am-11:30am"
               "3:00pm-3:30pm"
               'breakout)

@itemlist[#:style 'compact
          @item[@bold{Transition annoucement:}
                @itemlist[@item{Wrap up discussion}
                          @item{Back to katas}
                          @item{Earn more katas or extra challenges from TLs!}]]
          @item["Monitor camp groups, assisting TLs as needed"]]
@time-warning @bold{10, 5 and 2 min} warnings

@(header-block game-show
               "11:30am-11:45am"
               "3:30pm-3:45am"
               'start-together)

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
@time-warning @bold{5 and 2 min} warnings

@(header-block market-wrap-up
               "11:45am-12:00(ish)pm"
               "3:45am-4:00(ish)pm"
               'start-breakout)

@itemlist[#:style 'compact
          @item["PM only -- ensure you finish with enough time to travel to check-out
                location by 4pm"]
          @item["Assign yourself or a TL to be " @bold{Market Cashier}]
          @item["Students tidy their camp table before allowed to go to market"]
          @item["Welcome camp teams " @bold{one at a time} " to visit market"]
          @item["Students done with market collect their things for lunch/home and line
                up by door"]]


@lunch-block

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
@time-warning @bold{10, 5 and 2 min} warnings