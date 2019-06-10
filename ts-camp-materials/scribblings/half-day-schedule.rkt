#lang scribble/manual

@(require racket/runtime-path)

@(define-runtime-path schedule "img/half-camp-sched.png")

@title{Half Day Camp Schedule}

@section{Schedule}

@(image schedule #:scale .25)


@section{Schedule Breakdown}

Here is some detailed information on how each block of time on the
schedule above is expected to run. But first:

@subsection{Day Differences}

As you see on the visual schedule above, the schedules for Monday, Tuesday/Wednesday/Thursday,
and Friday are all slightly different. The reasons for this are straightforward:

@itemlist[#:style 'ordered
          @item{Additional time for check-in is allowed on Monday, since
                all students and staff will stay at the pick up location until 9:15
                on the first day.}
          @item{Also, the first activities are icebreakers, for obvious reasons!}
          @item{For Tuesday/Wednesday/Thursday, these extra 15 minutes go into
                game time.}
          @item{On Friday there is GAME JAM! The last hour and a half are spent on
                this.}]

@subsection{Check-in}

@larger{AM -- mon 8:45am-9:15am & tue-fri 8:45am-9:00am}

@larger{PM -- mon 12:45pm-1:15pm & tue-fri 12:45pm-1:00pm}

It is important to start check-in on time, @bold{but not early!} On the first day,
all staff and students stay at the pick up location until all students arrive, or
9:15am -- whichever comes first. All other days, all students and the majority of
staff go to the camp room at 9am, and one Team Leader will stay at the pick up
location until all students have arrived or 9:15 -- whichever comes first.

In most locations, parents should be staying in their cars during drop off.
No need t enforce this on Day One, when many parents may want to walk
their student up the the camp. Staff should tell parents that for pick-up and
future check-ins that they can stay in their car.

To run a smooth and successful check-in, each coach should take over a specific
job in the check in process:

@bold[@larger{Head Coach}]

The Head Coach duties during check-in are:
@itemlist[#:style 'compact
          @item{Assign jobs to Team Leaders, adjust jobs as needed}
          @item{Check students in as they arrive on ThoughtSTEM backend,
                using tablet}
          @item{Answer parent questions or direct parents to contact HQ}
          @item{Oversee the check-in process to ensure safety and sanity}]

@bold[@larger{Home Base Managers -- 1-2 Team Leaders}]

These TLs hang out with the students who have already been dropped off.
Duties include:
@itemlist[#:style 'compact
          @item{Keeping all students in our care together and safe}
          @item{Interrupting and redirecting unsafe student behavior
                (ex. wandering off, playing with sticks, throwing rocks, etc)}
          @item["Fostering a comfortable, welcoming environment by talking to
                students, starting conversations between students and going
                out of their way to engage students on the fringe. "
                @bold{This is especially important on day one!}]]

@bold[@larger{Runners -- 1-2 Team Leaders}]

These TLs move between cars, completing the following duties:
@itemlist[#:style 'compact
          @item{Ensuring student safety around cars}
          @item{directing them (or in some cases, walking them) to where the rest
                of the students are, with HB Managers}
          @item{Checking in with parents, answering any quick questions and calling
                over the Head Coach to deal with any more complex questions}
          @item{Helping Head Coach keep track of all arriving students and correctly
                check them in.}]

@bold[@larger{Traffic Cop -- 1 Team Leader}]

This TL helps keep the car chaos to a minimum. Duties include:
@itemlist[#:style 'compact
          @item{Ensuring student safety around cars}
          @item{Keeping the car line moving forward}
          @item{Helping parents navigate out safely}
          @item{Reminding parents they they should stay in cars, or, helping them
                find a place to park on a rare occasion where they need to get out
                of the car}]

@bold[@larger{If Needed: Complete Set Up -- 1-2 Team Leaders}]

If 8:45 arrives and there is more setup to complete, the Head Coach can assign one
or two TLs to stay in the camp room and finish up. Some locations require this, see
the note below:

@bold[@larger{Monitoring Camp Room}]

We can never leave our equipment alone in an unlocked room; this means that a TL will
have to remain behind every day during check-in at some locations. This TL can complete
set up during this time.

Camp locations where room will be @bold{unlocked} during all camp hours (will need
a TL to remain during check in):
@itemlist[#:style 'compact
          @item{UCSD}
          @item{San Diego Christian College}
          @item{La Jolla Country Day Camp (not typical check-in, see note below)}]

Camp locations with exceptions, where no monitoring is needed during check-in:
@itemlist[#:style 'compact
          @item{Cal State San Marcos -- Head Coach has key to lock room}
          @item{SDSU -- doors autolock at check-in time}
          @item{Fleet Science Center -- check-in is at camp room}
          @item{Del Mar Unified School District -- check-in is at camp room}
          @item{Lawrence Family JCC -- check-in is at camp room}]

@smaller[@italic{Location notes updated 5/2019}]

@bold[@larger{Special Location Instructions}]

Some of our camp locations have different check-in procedures. In some cases, we
are part of a larger camp where the main staff handles check-in. Others require
slightly different jobs:

@bold{Fleet Science Center}

@itemlist[#:style 'compact
          @item{On first day check in, Head Coach needs to confirm the authorized
                pick up list with each parent/guardian as they drop off their
                student.}
          @item{There also may be additional paperwork to hand out to parents.}
          @item{Parents are welcome to either wait in the pickup line or park and
                walk their student up every day.}
          @item{Team Leader Assignments -- Traffic
                Cop may shift to assist Head Coach or to HB Managers.}]

@bold{Del Mar Unified School District}

All students are brought to the camp room, either by the parent or the early child
care counselors.

@bold{Lawrence Family JCC}

Students are part of a larger camp and will be brought to your room by counselors.
Attendance is still required.

@bold{La Jolla Country Day Center}

LJCD Staff handles student check-in. From 8:30-9:00am there is a Morning Kick-Off with all
students across all camps. Pick up your students from that Kick-Off room and bring to the
camp room at 9am.

@subsection{Icebreakers}
@larger{AM -- mon 9:15am-9:30am}

@larger{PM -- mon 1:15pm-1:30pm}

The first activity upon arriving to the classroom should be getting to know the
students and giving them a chance to get to know you! @bold{EXCITING ENERGY} is
vital for this activity, even though it may feel like ice skating uphill at times.

Icebreakers should be led by the Head Coach, and all Team Leaders should
participate.

Choose one or two of the @secref["Icebreaker_Games"
                                 #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
or play your own favorite get-to-know-you game!


@subsection{Coding Warmup}
@larger{AM -- tue-fri 9:00am-9:15am}

@larger{PM -- tue-fri 1:00pm-1:15pm}

A chance for students to settle in, try katas from yesterday, test combining
katas, etc while the Teaching Team settles in as well. Fairly independant time,
since at least 1 Team Leader may still be at the pick-up/drop-off location. TLs
and the Head Coach may want to give out specific challenges with goals and TS
Dollar rewards to keep students on task.

@subsection{Intro & Starter Katas}
@larger{AM -- mon 9:30am-10:15am}

@larger{PM -- mon 1:30pm-2:15pm}

Head Coach leads into this section by explaining a few core concepts:
@itemlist[#:style 'compact
          @item{GAME JAM!}
          @item{Katas}
          @item{Kata cards, ThoughtSTEM Dollars & Market}]

Head Coach also leads camp in earning their very first Kata -- the Core Values
Kata. Once all students have earned the kata (HC and Team Leaders working
together to award kata card hole punches and dollars), HC hands it over the the
TLs, who start their team on the first kata section. See more details on
teaching katas below:

@subsection{Katas}
@larger{AM -- tue-fri 9:15am-10:00am}

@larger{PM -- tue-fri 1:15pm-2:00pm}

Breakout time where each camp is working independently with their Team Leader to
learn and earn katas in their curriculum. Here's how to optimize the LEARNING as
well as the FUN:

@itemlist[@item[@bold{Mix Up Tactics} " -- Be intentional in choosing tactics.
                Don't be afraid to try something new!"]
          @item[@bold{Quality over Quantity} " -- It is more important that the
                students actually earn the katas than get through any specific
                number of katas. To earn a kata, a student must be able to
                code the response to the given stimuli without hints. This does
                require repetition and practice to achieve a mix of memorization
                and comprehension. Just like learning a new language!"]
          @item[@bold{Don't Over Do It!} " -- Resist the temptation to 'just
                finish this one kata...' and stretch over the 45 minute time
                block. In addition to students and TLs needing a break, getting
                off schedule adds extra stress of needing to catch up and cut
                time from other activities."]]

Head Coach is working the whole classroom; checking in, offering advice and
encouragement, helping with any especially tricky bugs and assisting in behavior
management when needed.

@subsection{Snack Break}
@larger{AM -- mon 10:15am-10:30am & tue-fri 10:00am-10:15am}

@larger{PM -- mon 2:15pm-2:30pm & tue-fri 2:00pm-2:15pm}

This is @bold{Team Leader Break Time} as well. Head Coach should manage the
camp while TLs @bold{leave the camp room} and take a 15 minute break. If the HC
cannot fully focus on the entire camp for whatever reason (debugging the computers,
handling behavior issues), there is also the option to keep some or all TLs
during snack, and they can take their break during Game Time.

For the students, this is @bold{unstructured} break time. These are great times
for students to take a break from the computers, snack and relax! However,
@bold{even in unstructured time, staff should always be aware of, and in control of
the camp environment}. Remember:

@itemlist[@item[@bold{During breaks, all students are OFF computers.}
                " This can be a hard rule to enforce all the time -- what
                about the student who wants to keep coding, that's good
                right? Or the student who is a bit behind, and wants to spend
                break catching up? What if they are just playing their game?
                But really. " @larger{Really.} " Please make sure all students
                are completely off the computers during all breaks. Among
                other things, time away from the computer allows for students
                to get back in touch with those annoying physical bodies we
                have -- and sometimes it's not until they step away
                from the screen that they realize 'Oh! I'm hungry/thirsty/sore/need
                to go to the bathroom!' " 
                @bold{This is a ThoughtSTEM Camp policy and needs to be followed!}]
          @item[@bold{Keep it sane and safe.} " HC can (and should!) give the
                students some space during these breaks, but must stay attentive
                for student safety. There shouldn't be running or throwing things. 
                HC should also be mindful of conversations -- keeping an ear
                out for topics that could upset or seem inappropriate to other
                students. " @bold{Per ThoughtSTEM Policy, student phones and other
                           tech should remain off in student bags through all of camp,
                           breaks included.}]
          @item[@bold{Be mindful of ALL students.} " Just like during the rest of
                camp, HC is working to make this as positive of an experience
                for each student as possible! To this end, " @bold{watch for lonely kiddos}
                ". Do your best to make every student feel welcomed, even it if means
                you just sit with that quiet student and chat about Spiderman for a
                few minutes."]]

@subsection{Game Time}
@larger{AM -- mon 10:30am-10:45am & tue-fri 10:15am-10:45am}

@larger{PM -- mon 2:30pm-2:45pm & tue-fri 2:15pm-2:45pm}

Why Game Time? Social games can help students...
@itemlist[#:style 'compact
          @item{...release excess energy!}
          @item{...take a brain break from coding!}
          @item{...socialize, especially if they are shy!}
          @item{...feel like they are getting a "real camp experience!"}
          @item{...engage and connect with students and staff from other camps and age groups!}
          @item{...remember who the staff are and how to listen to them!}]

The Head Coach Script has a game recommendation or two for each day. Sometimes this
will be one game for all ages, or a game for younger and a game for older students.
In either case, HC can divide the camp into two or more groups:

@itemlist[#:style 'compact
          @item{Whenever possible, mix up the camp groups.}
          @item{HC can announce the games and let students choose which they want to play}
          @item{Or HC can split by grade (this will still mix up camp groups, as long
                as you do some crossing over; K-4 and 5-10 for example)}]

HCs are welcome to pick thier own games to serve their specific group of students,
but keep in mind that while it can be tempting to stick with one game that
entertains, it can be worthwhile to try new things too!

Head Coaches run Game Time with all students from all camps; with support from Team
Leaders. By default, TLs are participating in games and helping create a
safe and fun environment. TLs also should step in to remind individual students to
listen or participate, as needed, so HC can focus on the larger group. Sometimes a HC
will ask TLs to lead a game, especially if the group is splitting up and playing two
different games.

@bold{"But I don't want to play"} -- if a student does not want to participate, try
to encourage them or find a way they can participate in another way. But if they are
just not having it, that's okay! They can sit out with a Team Leader for company.
@bold{However, no one can be on computers during this time}. Make sure the student
sitting out is not distracting the students who actually want to play and be mindful
of how "fun" not participating looks -- it's always easier NOT do things, and if it
looks like it's easy AND fun to sit out instead of play, you are going to fighting an
uphill battle to get students to stay long enough to even learn the game!

Here are a whole bunch of @secref["Camp_Games" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")]
with instructions!

@subsection{Nerd Out}
@larger{AM -- mon-thu 10:45am-11:00am}

@larger{PM -- mon-thu 2:45pm-3:00pm}

During Nerd Out, students and Team Leaders breakout into their camp groups. Head
Coach gives out a discussion or activity prompt, which TLs can then customize
for their specific camp fandom. Nerd Out is an opportunity for...
@itemlist[#:style 'compact
          @item{...students to "nerd out" about their fandom!}
          @item{...students to teach the TLs more about their fandom!}
          @item{...TLs to get to know the students more!}
          @item{...think critically about the media they enjoy and how they can "add" to that world!}
          @item{...start planning for Game Jam and the game they may want to create!}]

@subsection{Kata Practice}
@larger{AM -- mon-thu 11:00am-11:30am}

@larger{PM -- mon-thu 3:00pm-3:30pm}

Kata Practice is a time to continue working on the day's katas. Depending on student
progress and areas of challenge, the Team Leader may choose to do one or more of the
following, roughly ordered by priority:

@itemlist[#:style 'ordered
          @item[@bold{Practice synthesizing different katas into one game -- like they will
                do in Game Jam!}]
          @item{Continue earning katas in the day's section, if TL feels like they
                did not make enough progress earlier.}
          @item{Go back and earn katas from a previous day's section, if TL feels that
                the students will benefit from more skill in another area.}]

On most days, the TLs should use this time to challenge students to
creatively use the knowledge they have gained through katas to build a more complex game.
The TL can combine two or more challenge cards (from sections that they have covered)
to create a custom challenge for their students. For example: It is day three and you
have learned Avatar, Enemies and Weapons. You pick an Avatar card that says "Make a game
with a pirateboy-sprite avatar." You pick a Weapons card that says "Make a game with a
sword that does 50 damage." You challenge your students to build a game with a pirateboy-sprite
avatar and a sword that does 50 damage.


@subsection{Game Show}
@larger{AM -- mon-thu 11:30am-11:45am}

@larger{PM -- mon-thu 3:30pm-3:45pm}

This activity starts as a whole camp activity lead by the Head Coach, before breaking out
into their camp groups.

Head Coach starts by asking a question related to the day's activities. Questions are
provided in the day's script. Rules and rewards of the game show are outlined in advance
-- raised hands or some other non-screaming answer strategy*, waiting for HC to call on you
before answering, playing for ThoughtSTEM Dollars or some other reward.

After asking the handful of all-access questions, HC passes off to TLs, who continue the
game show with questions specific to their camp and the katas learned that day. Rules and
rewards may change going from the big group to the smaller group, so be sure to review
before you start -- "buzzers" or some other non-screaming answer strategy*, waiting to be
called on before answering, playing for ThoughtSTEM Dollars or some other reward.

* To make the Game Show more fun, HCs/TLs are encouraged to use a more active/fun way of
indicating that you know the answer than simply raising your hand. For example, when in
the whole camp group, high fiving the TL who then makes a buzzer noise. Then HC can call
on the TL who buzzes first, who can pick the student who high fived them first. Or, when
in camp teams, making your own answer buzzer sound!

@subsection{Market/Wrap Up}
@larger{AM -- mon-thu 11:45am-12:00(ish)pm}

@larger{PM -- mon-thu 3:45pm-4:00(ish)pm}

At the end of every day there is an opportunity for Market. However, Market is a reward/privilege
and can be cancelled if there is no time, or if students misbehaved/didn't earn Market
Time.

To keep the Market Time organized and sane, the following guidelines are highly recommended:

@itemlist[#:style 'compact
          @item{Only 1 camp/5 students at the Market at a time.}
          @item{Keep students moving through the Market so you have time for everyone.
                ("Okay, you have been here for 5 min, you have 1 more min to make your choice!")}
          @item{Have the Market display up and accessible all day so students can plan
                for what they want to get at the end of the day!}
          @item{Create a Cash Rule -- money must be unfolded and handed nicely to the cashier
                (no crumpled bills shoved in our faces!).}
          @item{Exchange bills throughout the day, not during Market (five 1s for one 5, etc.).}
          @item{One or two staff run the Market, while the others keep students coming/going.}
          @item{If you don't have enough time, save it for another day rather than rush.}] 

@subsection{GAME JAM}
@larger{AM -- fri 10:30am-12:00pm}

@larger{PM -- fri 2:30pm-4:00pm}

Information on Game Jam Intro, Game Jam and Scoring can be found on the
@secref["Game_Jam" #:doc '(lib "ts-camp-materials/scribblings/manual.scrbl")] page.

@subsection{Lunch}
@larger{AM ONLY -- mon-fri 12:00pm-12:45pm}

All lunches are held at a university buffet-style dining hall. Before heading to lunch on
Monday, outline safety rules and remind students as needed throughout the week. Head Coach
should check in with dining hall staff for entering procedures, additional rules or, if HC
has worked this location before, at least a touch-base and any special updates for the week.

@bold{The following rules are standard across all ThoughtSTEM camps and must be followed}
for student safety and continued positive relations with the camp locations:

@itemlist[#:style 'ordered
          @item{Absolutely no running.}
          @item{Be courteous and polite to all dining hall staff and other diners.}
          @item{Line up to enter the dining hall and wait for your Head Coach to dismiss
                you into the hall.}
          @item{All students with food allergies (marked on roster) will meet with the
                HC on the first day for a quick tour and guide on what to look for to stay
                away from their allergens. (Usually signage at each station.)}
          @item{Only one dessert per day.}
          @item{Clean up all trash and put away dishes correctly (a staff member should
                be stationed by the dish station at the end of lunch on day one to help
                students figure it out!).}
          @item{Ideally, all students should be seated in the same area. If the hall is
                crowded and that isn't possible, there should be a staff member with every
                group of students and HC should know where all those groups are.}]

The following guidelines are recommended. The Head Coach may instate any of these
additional rules as needed:

@itemlist[@item{One one plate at a time.}
          @item{If you want to ask me "Can I have ____??" Just imagine I am your
                mom/dad/primary caregiver; what would they say? Would your dad say yes to
                three cups of Mountain Dew?}]

@bold[@larger{Monitoring Camp Room}]

We can never leave our equipment alone in an unlocked room; this means that one TL must
be in the room at all times during lunch at some camp locations. In these cases, 2 TLs a
day will split the lunch shift. @bold{Head Coach is responsible for assigning TLs and
making sure room is monitored AND all TLs get lunch.} HC cannot perform this duty, as
they are CPR certified and required at the lunch location.

Camp locations where room will be @bold{unlocked} during all camp hours (will need
monitoring over lunch):
@itemlist[#:style 'compact
          @item{UCSD}
          @item{San Diego Christian College}
          @item{La Jolla Country Day Camp}
          @item{Fleet Science Center -- (lunch is Bring Your Own, so one lucky TL
                a day can take the whole lunch break in the room. Make sure this
                break rotates fairly throughout the week.)}]

Camp locations with exceptions, where no monitoring is needed during lunch:
@itemlist[#:style 'compact
          @item{Cal State San Marcos -- Head Coach has key to lock room}
          @item{SDSU -- doors autolock at lunch time}
          @item{Del Mar Unified School District -- no lunch}
          @item{Lawrence Family JCC -- no lunch}]

@smaller[@italic{Location notes updated 5/2019}]


@subsection{Check-out}
@larger{AM -- mon-fri 12:45pm-1:10pm}

@larger{PM -- mon-fri 4:00pm-4:10pm}

Be sure to arrive @bold{promptly} at the checkout location -- this means leaving the camp
room/lunch hall BEFORE the time check-out is supposed to start!

If there are still students waiting on pick-up at 10 past the hour (1:10/4:10), notify HQ
who will call the parent. @bold{Update HQ as soon as that student is picked up!}

The AM check-out is also the PM check-in time! The only additional step will be checking
with each parent to see if they are dropping off or picking up a student! Everything else
should overlap intuitively.

At most locations, parents will remain in the car, and staff will bring students to their
parents. Just like check-in, Head Coach should assign jobs to everyone with the goal of
keeping the process safe and orderly:

@bold[@larger{Head Coach}]

The Head Coach duties during check-out are:
@itemlist[#:style 'compact
          @item{Assign jobs to Team Leaders, adjust jobs as needed}
          @item{Make sure any special check-out procedures for students are followed}
          @item{Answer parent questions or direct parents to contact HQ}
          @item{Oversee the check-out process to ensure safety and sanity}]

@bold[@larger{Home Base Managers -- 1-2 Team Leaders}]

These TLs hang out with the students who are still in our care. Duties include:
@itemlist[#:style 'compact
          @item{Keeping all students together and safe}
          @item{Interrupting and redirecting unsafe student behavior
                (ex. wandering off, playing with sticks, throwing rocks, etc)}
          @item{Fostering a comfortable, welcoming environment by talking to
                students, starting conversations between students and going
                out of their way to engage students on the fringe.}]

@bold[@larger{Runners -- 1-2 Team Leaders}]

These TLs move between cars, completing the following duties:
@itemlist[#:style 'compact
          @item{Ensuring student safety around cars}
          @item{Communicating with Home Base Managers to safely relay students from Home
                Base to their parent's car.}
          @item{Checking in with parents, answering any quick questions and calling
                over the Head Coach to deal with any more complex questions}]

@bold[@larger{Traffic Cop -- 1 Team Leader}]

This TL helps keep the car chaos to a minimum. Duties include:
@itemlist[#:style 'compact
          @item{Ensuring student safety around cars}
          @item{Keeping the car line moving forward}
          @item{Helping parents navigate out safely}
          @item{Reminding parents they they should stay in cars, or, helping them
                find a place to park on a rare occasion where they need to get out
                of the car}]

@bold[@larger{Monitoring Camp Room}]

We can never leave our equipment alone in an unlocked room; this means that a TL will
have to remain behind every day during check-out at some locations. This TL will be
responsible for tidying and prepping the room for the next day/camp (this should not
be a gargantuan task -- end-of-camp tidying is part of the camp routine for students
and should be done before students are allowed to visit market).

At the end of the PM camp, TL must remain in the room until it is locked by location
staff or HC returns.

Camp locations where room will be @bold{unlocked} during all camp hours (will need
a TL to remain during check-out):
@itemlist[#:style 'compact
          @item{UCSD}
          @item{San Diego Christian College}
          @item{La Jolla Country Day Camp (not typical check-out, see note below)}]

Camp locations with exceptions, where no monitoring is needed during check-in:
@itemlist[#:style 'compact
          @item{Cal State San Marcos -- Head Coach has key to lock room}
          @item{SDSU -- doors autolock at check-in time}
          @item{Fleet Science Center -- check-out is at camp room}
          @item{Del Mar Unified School District -- check-out is at camp room}
          @item{Lawrence Family JCC -- check-out is at camp room}]

@smaller[@italic{Location notes updated 5/2019}]

@bold[@larger{Special Location Instructions}]

Some of our camp locations have different check-out procedures. In some cases, we
are part of a larger camp where the main staff handles check-out. Others require
slightly different jobs:

@bold{Fleet Science Center}

Every day, Head Coach must check the IDs of every picking-up adult against
the authorized pick-up for that student. If someone who isn't on that list
wants to pick up, the primary adult contact must be called and the pick-up
adult cleared by them.

@bold{Del Mar Unified School District}

Parents come to the classroom for pick up; staff can dismiss from the door of the room,
"Home Base" is just the classroom.

@bold{Lawrence Family JCC}

Students are part of a larger camp and will be taken to their next activity from JCC camp
staff.

@bold{La Jolla Country Day Center}

Bring students to their age group's designated dismissal room. Assist LJCD Camp Staff as
needed. 


@subsection{Staff Dismissal}

At the end of the PM camp, all staff get to go home for a well-earned rest! All Team
Leaders must @bold{wait until offically dimissed by their Head Coach.} Dismissal can
be directly from the check-out location.

HC should dismiss TLs:
@itemlist[#:style 'compact
          @item{all at the same time}
          @item{when all students are gone, or HC feels they can safely monitor the few
                remaining students by themselves}
          @item{when camp room is sufficiently tidied and ready for the next day}
          @item{promptly and unambigiously}
          @item[@bold{no later than 4:30} ", preferably by 4:15"]]

HC should notify HQ through Slack when TLs are dismissed.

In the cases where one TL has to remain in the camp room to monitor equipment/tidy up,
there may have to be some differences on when that person is released -- since they must
stay in the room until HC returns or location staff comes to lock up. HC should stay in
contact with this TL through Slack with any delays on their return, and TL should notify
HC if lock up happens prior to HC's return and HC can dismiss them remotely. Switch up
the TL who gets "stuck" with this job.

Head Coach must remain at the camp location until all students are picked up (or, in
some cases, safely passed on to camp staff) and equipment is safely locked in the camp
room. HC then notifies HQ through Slack that they are leaving.




