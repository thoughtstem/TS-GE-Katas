#lang scribble/manual

@(require "script-util.rkt")

@title{Tuesday Head Coach Script}

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

@(header-block coding-warmup
               "9:00am-9:15am"
               "1:00pm-1:15pm"
               #:camp-type 'breakout)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["With loose guidance from TLs, " @bold{students review} " katas from
                yesterday"]
          @item[@bold{Step in} " for TL who is waiting at check-in"]]


          
@(header-block katas
               "9:15am-10:00am"
               "1:15pm-2:00pm"
               #:camp-type 'breakout)

@time-warning @bold{15, 10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Transision announcement:}
                @itemlist[@item["Welcome back!"]
                          @item[@bold{New Katas} " today!"]
                          @item["So " @bold{listen up} " to TLs"]]]
          @item["Monitor and assist TLs as they work on the " @bold{next section katas}]
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



@(header-block game-time-30
               "10:15am-10:45am"
               "2:15pm-2:45pm"
               #:camp-type 'together
               #:outside? #t)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Choose game(s)} " from chart below. Consider expected interest
                of the group, any play space restraints, and what has been already
                played when choosing."]
          @item[@bold{If both groups will be playing the same game} ", introduce the
                game first, then split up." @bold{Otherwise} " split first, and have
                TLs help you in explaining/playing the games."]
          @item["When splitting into game groups, consider age recommendations,
                student safety (physical size of students), and actual student
                interest."]]
@tabular[#:style 'boxed
         #:row-properties '(bottom-border ())
         #:sep @hspace[1]
         (list (list @bold{Age Group}
                     @bold{Game}
                     @bold{Notes})
               (list "All Ages"
                     @secref["Who_Am_I_" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "Can play with any number of players.")
               (list "Younger"
                     (list @secref["Follow_the_Leader" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                           " or "
                           @secref["Sharks_and_Minnows_Tag" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")])
                     "Tag needs large outdoor space.")
               (list "Older"
                     @secref["Hand_Game" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
                     "5 player min."))]



@(header-block nerd-out
               "10:45am-11:00am"
               "2:45pm-3:00pm"
               #:camp-type 'breakout
               #:outside? #t)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Announce today's mission:"
                @itemlist[@item["3rd-10th camps --"@bold{What do you like about your
                                fandom? Why do you think this fandom is so popular?}]
                          @item["K-2nd camps -- " @bold{What is your favorite animal?
                                What animals do you think a lot of people like? Why?}]]]
          @item["Monitor camp groups, inspiring further discussion as needed"]]


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


@(header-block game-show
               "11:30am-11:45am"
               "3:30pm-3:45pm"
               #:camp-type 'start-together)

@time-warning @bold{5 and 2 min} warnings

@itemlist[#:style 'compact
          @item["Bring camp " @bold{all together}]
          @item["Review "@bold{rules & rewards} " of the game show:"
                @itemlist[@item{TLs as buzzers or raised hands}
                          @item{Wait to be called on, no shouting out!}
                          @item{TS dollars/other reward?}]]
          @item["Today's Whole Camp Daily Game Show Questions:"
                @itemlist[@item[@bold{What is the most important keys/characters when coding in Dr Racket?}
                                @italic{ Open and closing parentheses ( )}]
                          @item[@bold{What is Game Jam?}
                                @italic{ A race to create the best game you can using the skills you learn over this week.}]
                          @item[@bold{Everyone -- cover your nametags. Who can tell me the name of everyone in their camp team?}]
                          @item[@bold{How many tiles are there in the games we are making?}
                                @italic{ K-2: 4 (2x2) 3-10: 9 (3x3)}]
                          @item[@bold{Who can tell me 1 of the reasons that your team brainstormed for why your fandom is popular? K2 -- what animals are popular?}
                                @italic{ (1 answer per camp team)}]]]
          @item["Breakout into " @bold{camp teams} " for TLs to lead camp-specific
                game show questions"]]


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


@lunch-block

@time-warning @bold{10, 5 and 2 min} warnings

@itemlist[#:style 'compact
          @item[@bold{Remind all students} " the rules of lunch:"
                @itemlist[@item{Absolutely no running}
                          @item{Be courteous and polite to staff/other diners}
                          @item{One dessert per day}
                          @item{Clean up correctly}
                          @item{Sit together}]]
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
          @item[@bold{PM ONLY} " -- dismiss TLs ASAP and clock out"]]