#lang scribble/manual

@(require ts-kata-util)


@title{Game Jam}

The goals of a Game Jam are simple:

@itemlist[@item["Game Jam is "  @bold{different and more exciting}
                " than a typical kata-earning day."]
          @item["Students " @bold{code a game} " from beginning to end."]
          @item["Students feel " @bold{proud and accomplished} " regarding
                what they did in Game Jam."]]

Rules of Game Jam can be adjusted to accomodate the needs of a particular batch of students,
as long as the goals above are still being served. Remember that adding support, hints
and assistance can make a potentially frustrating Game Jam into a success! However, adding
too much help can undermine a feeling of actual accomplishment. It's all about balance!

Coach energy is a big element in making this day different from others -- if @bold{you}
are excited, pumped, focused and wowed by student work, the students will follow!

@section{Game Jam for Different Age Groups}

Fundamentally, Game Jam is the same for any age.
However, differences in execution (especially for the K-2nd age group) are explained
in this doc. These changes help all students, regardless of age, achieve the goals above.

@section{Objective}

@larger{3rd-10th}

Build a working game, from scratch, using as many of the skills learned from katas and
other exercises plus additional resources available during Jam.

@larger{K-2nd}

Instead of working on one large game, K-2nd students work on individual kata cards, trying
to build as many games back-to-back as they can!

@section{Prompt}

@larger{3rd-10th}

Every student/pair of students is given three challenge cards as a starting prompt for
their game. @bold{These are optional!} If students have their own ideas of what they want
to create, go for it! The 3 card prompt is merely an inspiration to turn to if they get
stuck.

@larger{K-2nd}

A single challenge card is given to each student/pair of students. Once that challenge is
correctly completed, they receive their next challenge card!

@section{Partnering Up}

Working in pairs is recommended whenever possible -- two brains working on the same code
often leads to higher achievement! However, in smaller groups (like Summer Camps with
groups of 5) this doesn't always work. If you cannot make it mandatory, at least make it
an option! Here are some tips when pairing students up, whether you make it optional or
not:

@itemlist[@item{Give the students advance notice that they will be/might be working in
                pairs. This helps students who don't adjust to change very well prepare.}
          @item{Practice pairing up at least once before the actual jam.}
          @item{You can pair up the students yourself if you think students may end up in
                distracting/unsuccessful partnerships or have difficulties settling into
                happy pairs. You can
                also let students pick their own partners and just help negotiate any
                disagreements as they arise.}
          @item{When leading into Game Jam, let student pick their partners/pair up the
                students yourself sooner rather
                than later -- they will be worrying about who they will end up with until
                its settled and won't be listening to a word you say until then!}
          @item{Have students switch "drivers" (who is typing) every 3 minutes. Set a
                timer and just keep running it, instucting students to swap everytime it
                goes off.}]

@section{Student Resources}


@section{Scoring}

Points are only given for @bold{working games!} Coaches do whatever it takes to get every
student to have at least one working game. The suggested point algorithms are below,
but can be adjusted to make sure students earn enough money to feel accomplished without
bankrupting the coaches! $10-25 per student (more when more money is spent during Jam)
is a good sweet-spot.

@larger{3rd-10th}

After the Jam time is up, students should score their own games, under the guidance and 
review of coaches. 

Scoring Step-by-Step:
@itemlist[#:style 'ordered
          @item{Count up total number of open and closed parens in RUNNING code (each
                single paren counts as one). Write this number down.}
          @item{Count up total keywords in RUNNING code. Write this number down.}
          @item{Add the previous two numbers together.}
          @item{Divide this number by five. (HINT: divide by less if average game is
                on the shorter side. Divide by more if games are longer.)}
          @item{Add on any additional bonus points.}
          @item{Give the ending number of dollars and Game Jam Badge to that student/each
                student in that pair!!!}]

Score Algorithm:
@racketblock[
 (((num of open parens)+(num of close parens)+(num of keywords, ex. #:avatar)) / 5)

   + (num of bonus point stickers) = TOTAL $$]

@larger{K-2nd}

K-2nd students will need a little more guidance in scoring, but should still participate
and help their coach!

@itemlist[#:style 'ordered
          @item{Count up the total number of challenge cards each student/pair of student
                completed.}
          @item{If the average number is greater than 20 or so, divide this number by 2
                (see note about not bankrupting the coaches at the top of this section!).}
          @item{Add any additional bonus points earned.}
          @item{Give the ending number of dollars and Game Jam Badge to that student/each
                student in that pair!!!}]


@section{Game Jam Intro Video}

This introduction video outlines everything a student needs to know
before going into game jam, including:
@itemlist[@item{How to pair program}
          @item{How scoring works}
          @item{All about the resource center}]
It also can serve as a reminder to coaches on how game jam works!

@GAME-JAM-VID

Keep in mind that these are the minimum guidelines of a jam, and that
coaches can always add rules and student supports as they see fit.

