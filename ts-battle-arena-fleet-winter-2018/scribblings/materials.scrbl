#lang scribble/manual

@(require 2htdp/image)

@;============== CAMP MATERIALS ================
@title{Camp Materials}

This is essentially a packing list of all materials necessary to run this camp.


@;====== EQUIPMENT =======
@section{Equipment}

Pack the following materials:

@itemlist[
 @item{30 chromebooks}
 @item{30 chargers}
 @item{30 mice}
 @item{8 power strips}
 @item{8 extension cords}
 @item{5 clipboards - see below for what should be attached}
 @item{Projector - if location doesn't have one}
 @item{Extra tables - if location doesn't have enough for students + marketplace + game jam score}
 @item{Markers}
 @item{Stickers -- stars and hearts that fit both the mini and game jam health bars}]

@;====== TEACHER CLIPBOARD =======
@section{Teacher Clipboard Materials}

A clipboard containing the following materials should be put together for each camp instructor.

@;@subsection{All Kata 1-pagers for the day}


@subsection{Core Values Cheat Sheet}

Highlight the core values below and print if necessary.  Cut into strips and put one on each instructor's clipboard.  (Or just memorize them...)

@bold{Core Values}

@(require ts-kata-util/katas/rendering
          ts-fundamentals/katas)
@(kata->scribble
  core-values)



@subsection{Schedule}

Print out a copy of this schedule for each instructor.

---------------------------

@(image "scribblings/imgs/2018-fleet-winter-schedule.png")

@subsection{Schedule breakdown}

Highlight the schedule breakdown below and print a copy for each instructor.

----------------------------

@larger{@bold{Camp Schedule Breakdown}}

@bold{8:45 am - 9:15 am : Drop-off}

@bold{8:45 am - 9:45 am : Intro to Camp}

As they walk in:

@itemlist[
 @item{Ask name -- write on badge/practice kata health bar}
 @item{Have them put bags down, sit on the floor}
 @item{Small talk}]

Once everyone is there, or at 9:15:

@itemlist[
 @item{Explain Kata (table) System}
 @item{Explain Game Jam}
 @item{Explain kata health bar, game jam health bar.}
 @item{Get into teams (divide evenly into number of coaches) (teams between 3 and 8 students)}
 @item{Team name and dance (each member can add a word to the team name and dance move)}
 @item{Write team name on Daily Score butcher paper}]

@bold{9:45 am - 10:15 am : Table 1}

Complete as many katas at this table as students can!

@bold{10:15 am - 10:45 am : Table 2}

Complete as many katas at this table as students can!

@bold{10:45 am - 11:15 am : Snack/Game Break}

Have snack for 10 min.

Play a game for 20 min.

@itemlist[
 @item{Ninja, Wah, Human Knot, Mafia, I Like My Neighbors Who, Wax Museum, Indian Chief}
 @item{Find these games and more @hyperlink["https://tinyurl.com/ts-fleet-games" "here"].}]

@bold{11:15 am - 11:45 am : Table 3}

Complete as many katas at this table as students can!

@bold{11:45 am - 12:00 pm : Buffer/Get ready for lunch}

Can use this time if anything took longer than expected.

Wrap-up & prep for lunch.

@bold{12:00 pm - 1:00 pm : Lunch}

@bold{1:00 pm - 1:30 pm : Table 4}

Complete as many katas at this table as students can!

@bold{1:30 pm - 2:00pm : Table 5}

Complete as many katas at this table as students can!

@bold{2:00 pm - 2:20 pm : Snack/Game Break}

Have snack for 10 min.

Play a game for 20 min.

@bold{2:20 pm - 2:30 pm : Game Jam Intro}

Review goals, rules, health bar etc
Bring energy up!!!

@bold{2:30 pm - 3:30 pm : Game Jam}

Start without any hints.

Give them life lines: ask a coach, peak at cheat sheet.

Students can assist each other once they completed that code (no touching any other computer).

@bold{3:30 pm - 3:45 pm : Market}

@bold{3:45 pm - 4:15 pm : Pick-up}

@subsection{Camp Jam Rules}

Print out a copy of the Camp Jam Rules for each instructor.

------------------------------

@larger{@larger{@bold{CAMP JAM RULES}}}

------------------------------

@larger{@bold{At the Beginning:}}
@itemlist[
 @item{@bold{Be positive}; encourage all students to continue and help each other}
 @item{@bold{High focused energy}; praise them once they get stuff finished/working}
 @item{@bold{Promote focus}; make sure everyone is on task and moving along}]

@larger{@bold{During:}}
@itemlist[
 @item["Encourage students to:"
       @itemlist[@item{@bold{Start Small, Test Often}}
                 @item{Start with the @bold{1st Kata Codes}}
                 @item{After that, @bold{then customize}}]]
 @item{Work towards @bold{all students success}}
 @item{Find ways to @bold{praise all teams} throughout the jam}
 @itemlist[
 @item["Life Lines:"
       @itemlist[@item{Life Line is asking a coach for help}
                 @item{Each student gets @bold{1 free Life Line} -- once used, the coach initials the name tag}
                 @item{Each additional Life Line is @bold{$1 TSD}}]]]]

@larger{@bold{At the End:}}
@itemlist[
 @item{Each student gets @bold{$10 TSD} for participating!}
 @item["Scoring:"
       @itemlist[@item{1 point per filled Health Bar Square}
                 @item{3 points per Star Sticker}
                 @item{5 points per Extra Life (heart sticker)}]]
 @item{Emphasize @bold{Camp Total Points} over team or individual scores}
 @item{Add camp total score to @bold{Whole Camp Leader Board}}]

@subsection{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------

@(define (cool-guy) (image "scribblings/imgs/cool-guy.png"))
@(define (bad-guy) (image "scribblings/imgs/bad-guy.png"))
@(define (spear) (image "scribblings/imgs/spear.png"))
@(define (sword) (image "scribblings/imgs/sword.png"))
@(define (paint-thrower) (image "scribblings/imgs/paint-thrower.png"))

@codeblock{#lang battle-arena}
@racketblock[
 (define (cool-guy)
   (custom-avatar #:sprite #, (cool-guy)))

 (define (bad-guy)
   (custom-enemy #:sprite #,       (bad-guy)
                 #:ai              'easy
                 #:health          200
                 #:shield          100
                 #:amount-in-world 5))

 (define (sharp-stick)
   (custom-weapon #:name     "Spear"
                  #:sprite #,(spear)
                  #:dart     (spear)
                  #:rarity   'common))

 (define (metal-blade)
   (custom-weapon #:name     "Sword"
                  #:sprite #,(sword)
                  #:dart     (sword)))

 (define (paint-spitter)
   (custom-weapon #:name     "Paint Thrower"
                  #:sprite #,(paint-thrower)
                  #:dart     (paint)
                  #:rarity   'epic))

 (battle-arena-game
  #:avatar      (cool-guy)
  #:enemy-list  (list (bad-guy))
  #:weapon-list (list (sharp-stick)
                      (metal-blade)
                      (paint-spitter)))
 ]

@subsection{Example Camp Jam code (w/in-line)}

This is an example of how all the components come together during camp-jam into one piece of code:

@codeblock{#lang battle-arena}
@racketblock[

 (battle-arena-game
  #:avatar      (custom-avatar #:sprite #, (cool-guy))
  #:enemy-list  (list (custom-enemy #:sprite #,       (bad-guy)
                                    #:ai              'easy
                                    #:health          200
                                    #:shield          100
                                    #:amount-in-world 5))
  #:weapon-list (list (custom-weapon #:name     "Spear"
                                     #:sprite #,(spear)
                                     #:dart     (spear)
                                     #:rarity   'common)
                      (custom-weapon #:name     "Sword"
                                     #:sprite #,(sword)
                                     #:dart     (sword))
                      (custom-weapon #:name     "Paint Thrower"
                                     #:sprite #,(paint-thrower)
                                     #:dart     (paint)
                                     #:rarity   'epic)))
 ]

@subsection{Dollars}

@subsection{Stopwatch}

Attach a stopwatch to each clipboard.


@;====== TABLE MATERIALS =======
@section{Table Materials}

@subsection{Markers and Stickers}

@subsection{Piskel Cheat Sheet}

@(image "scribblings/imgs/piskel-cheat-sheet.png")



@;====== IN CLASSROOM =======
@section{In Classroom Materials}

@subsection{Daily Team Page}

On butcher paper

Include date, theme, 5 columns w/ space for team name and 5 game jam health bars each. Example:

@;scale not working??
@(image "scribblings/imgs/daily-team-page.jpeg"
        #:scale .2)

@subsection{Whole Camp Leaderboard}

Include every date/theme, place for total score. Example:

@;scale not working??
@(image "scribblings/imgs/leaderboard.jpeg"
        #:scale .2)

@subsection{Leaderboard Winner Indicator}

A clothes pin with crown is a good marker.

@subsection{Markers}

@subsection{Heart & Star Stickers}


@;====== MATERIALS FOR EACH STUDENT =======

@section{Materials for Each Student}

@subsection{Printing}

Print one for each student:

@bold{Kata Health Bar}

@(image "scribblings/imgs/small-health-bars.png"
               #:scale 0.5)

@(image "scribblings/imgs/small-health-bar.svg") <-- svg file. Incorrect fonts.

@bold{Game Jam Health Bar}

@(image "scribblings/imgs/large-health-bars.png"
               #:scale 0.5)

@(image "scribblings/imgs/large-health-bar.svg") <-- svg file. Incorrect fonts.

@subsection{Packing}

Pack one of the following for each student:

@itemlist[
 @item{1 ThoughtSTEM lanyard}
 @item{1 clear plastic badge holder, attached to lanyard}
 @item{1 printed kata health bar (see above) - When they arrive for the day, you will write the student's name on the back of this:}
 @item{1 printed game jam health bar (see above)}
       ]
