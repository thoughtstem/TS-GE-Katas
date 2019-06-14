#lang scribble/manual

@(require "../tactics/lang.rkt")


@title{ThoughtSTEM Language Learning Handbook}

@section{Introduction}

Welcome!  This handbook contains learning "tactics" -- i.e. algorithms, games, and activities designed to help people become extremely fluent in a variety of programming languages.

If you're a coach, you should use these tactics to teach your students two things:

@itemlist[#:style 'ordered
          @item{How to code}
          @item{How to use the learning tactics on their own}]

This second point is subtle but incredibly important: You are not just teaching coding; you are teaching people how to learn coding.  You're not just playing games with students; you're teaching them how to play the games without your help.  You're not just being a coach; you're teaching them how to be coaches.  You're not just being a teacher; you're teaching them how to be teachers.   You're not just being a leader; you're teaching them how to lead.

What all this means is: as students become more and more skilled at doing these tactics, you should be giving them more and more responsibility for helping you lead the tactics. 

@itemlist[@item{A @bold{brand new student} might simply follow along as you lead a tactic. That's fine.  But...}

          @item{A @bold{first-day student} who has done a few tactics already should be capable of helping to explain those tactics to others.}
          @item{A @bold{new student} with a few days of class under their belt should be able to help you out as an assistant coach in various ways.}
          @item{@bold{Intermediate students} should be able to lead a few easy learning tactics from memory and a few advanced ones if they are referencing this book.} 
          @item{@bold{Advanced students} should be able to lead many tactics on their own from memroy and any tactic if they use this book.}]

Students will only experience this growth in self-driven learning and leadership if you encourage them to begin taking on leadership roles as soon as possible.

@itemlist[@item{@bold{Don't}: Only use this book to teach coding.}
          @item{@bold{Do}: Teach how to use this book while you're teaching coding.}]

Here's one concrete way you can do that: In this book, you will see many tactics that give an instruction to you, the coach.  For example:

@(tactic->scribble
   (instruction 'Coach
          (hand-write
            (contents-of
              (back-of 'Challenge-Card))
            (bottom-half-of 'The-Whiteboard))))

A novice coach might see this instruction and immediately begin writing on the whiteboard. 

But let me ask you, who is "the coach"?  Remember, it isn't just you.  Think of your students as coaches-in-training from day 1.   

Ask @emph{them} to write code on the board.  Ask @emph{them} to interpret the instructions for you.  Ask @emph{them} to step into your shoes and lead for a few seconds.  A few minutes.  A full tactic.  Two tactics in a row.  And so on.

Students should always be actively participating as both learners and leaders.  With your help, they can simultaneously improve at both.

It can take time.  Have patience.  But believe in your students.  And believe in yourself. 

@section{The Language Learning Loop}

The core thing you'll be doing as a coach is running a "Language Learning Loop".
It's essential that coaches (and coaches-in-training) know what that is (and isn't).

@subsection{The "Basic"}

The most basic thing that can be considered a "Language Learning Loop" is this, which we call the "Basic":


  @(tactic->scribble 
    (list
    (until (predicate "is over" "class")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (instruction (group-add 'Coach 'Team)
      (body-action "do tactic together"))

     (instruction 'Team
      (body-action "take Kata Test on challenge-card")))))

A Language Learning Loop is any teaching/learning algorithm that has these 5 essential qualities:

@itemlist[@item{@bold{It is a loop}.  The part that says @tactic->scribble[(until (predicate "is over" "class"))] is what makes it a "loop".}
          @item{@bold{It involves selecting a challenge card in some langauge being learned} (e.g. @racket[battlearena], @racket[html5-lang], @racket[vr-lang], or any other ThoughtSTEM language)}
          @item{@bold{It involves selecting a tactic} -- i.e. a learning algorithm -- from this handbook.  All tactics in this book are language-independent!  That is: any tactic will work for any language.}
          @item{@bold{It involves doing that tactic together with the team} -- helping them understand both the code on the challenge card, but also the tactic itself, so that they become better and better learners in the future.}
          @item{@bold{It ends with students being officially tested} -- to see if they can write the code from the back of the challenge card while only seeing the front of the card.  Whether they pass or fail, the conclusion of this test is the end of one cycle of the loop -- at which point it can begin again with a new challenge card (or the same one).}]

There are as many Langauge Learning Loops as there are coaches, and we do encourage you to develop your own unique loop (i.e. unique teaching style) over time.  However, when you do decide to innovate on the Language Learning Loop, it is essential that you avoid accidentally leading something that does @bold{not} fit the definition of a Language Learning Loop.  

For example, this does @bold{not} fit the definition:

  @(tactic->scribble
    (list
    (until (predicate "is over" "class")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (instruction (group-add 'Coach 'Team)
      (body-action "do tactic together")))))

It is a loop.  But this loop is missing one of the essential qualities!  Indeed, it is missing the @bold{most} essential quality of a Language Learning Loop: there is no test at the end!

Remember that students get badges like these for every ten tests that they pass:

@(require ts-kata-util/badge-maker/main)

@avengers-badges

These badges need to mean something.  The tests are what help the badges maintain integrity.  Tests are not easy to pass; and badges are not easy to earn.  It's supposed to be that way.

However, with the appropriate attitude, the learning (and earning) process can be fun -- even though it is not easy.  That's precisely your job as a coach: to help students stay excited about challenging themselves, to help them embrace failure as a opportunity, to help them become proud of their hard work, to help them realize that they @bold{can} do this even though it is hard.

There is nothing wrong with the "Basic".  Many coaches, even extremely advanced ones, use this exact loop.  Also, because it is so simple, it is a great one to teach to assistant coaches (i.e. your students). 

There are other Language Learning Loops, however, with different properties.  We'll look at a few now.

@subsection{The "Reduce Failures"}

Some coaches do not like to see students fail.  That's understandable.  This is a loop that greatly increases the chances that all of the students on your team will pass the test at the end of the loop.  It does so by having another loop inside it, in which you @bold{really} make sure that students are prepared for the test at the end.

 @(tactic->scribble
(until (predicate "is up" "time")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (until (predicate "is completed satisfactoraly" "the tactic")
      (instruction (group-add 'Coach 'Team)
       (body-action "do tactic together")))

     (instruction 'Team
      (body-action "take Kata Test on challenge-card"))))

This Language Learning Loop is good for novice students (who tend to be sensitive to failure).   The drawback is that it takes longer to get to the test.  (Then again, the "drawback" also the whole point -- to delay getting there until students are ready.)

@subsection{The "100% Pass Rate"}

Here's one that makes absolutely certain that students pass the test at the end of the loop.  It works by having an inner loop that
has increasingly difficult tests @bold{embedded inside of it}.  This means that by the time you get to the test,
you've already done the test many times already.

Here's the "100% Pass Rate":

  @(tactic->scribble 
    (list
    (until (predicate "is up" "time")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick Disintegrating Code tactic"))

     (instruction (group-add 'Coach 'Team)
       (body-action "do Disintegrating Code together"))

     (instruction 'Team
      (body-action "test on challenge-card")))))

This is @bold{exactly} the same as the "Reduce Failures" -- except that instead of picking any tactic in this book, you must
pick the @bold{Disintegrating Code} tactic.  This tactic (printed below, and also later in this book) involves
a loop where the coach writes code on the whiteboard and removes parts from it until there is nothing left, testing the team at each stage:

  @(tactic->scribble
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers))

By the time the tactic is complete, the students have written the entire code without any prompting -- which is precisely what the
official test requires them to do.  Thus, the test can be skipped (since they did it during the tactic).  No need to test the team twice!

This Language Learning Loop is excellent for very sensitive novice students.  It has a drawback, though: It only involves one tactic!
There are many tactics in this book.  Each tactic helps strengthen different coding skillsets.  A well-rounded education does
require doing a diverse variety of tactics over time.

This is a great loop to start with, though. (Adding in the @bold{Code Anatomy} tactic into the loop can be a great way to add another dimension to the educational experience.)

@subsection{The "Choose Your Own Adventure"}

This is a great loop for advanced students because it gives them more agency over their learning.  Here, the tactic is chosen by discusssion, and this continues until @emph{the team} decides to move on to the test.

  @(tactic->scribble 
    (list
    (until (predicate "is up" "time")

     (instruction 'Coach
      (body-action "pick challenge-card"))

     (until (predicate "decides they are ready for test" "team")

      (instruction 'Coach
       (discuss "Which tactic should we do next?"))

      (instruction 'Team
       (vote-on "which tactic to do next"))

      (instruction (group-add 'Coach 'Team)
       (body-action "do tactic together")))


     (instruction 'Team
      (body-action "test on challenge-card")))))


This works best with students who know a variety of tactics and who have developed enough metacognitive ability to know which tactics will help them and their team learn most effectively. 

It is also a perfect example of the fundamental principle of this handbook: Teach students how to learn.  The more you involve them as active participants in their own learning, the better.

The challenges are that you will need to know when to override the team's decisions if their educational insights are flawed:

@itemlist[@item{If they tend to keep picking the same comfortable tactics over and over, you will need to encourage them to explore new ones and to embrace discomfort.}
          @item{If they tend to be reluctant to test themselves, you may need to encourage them to stop doing tactics and take the test -- teaching them that failing a test is not something to be afraid of.}
          @item{If they tend to be too focused on taking tests and earning badges as fast as possible, you may need to slow them down and point out that the goal is to learn deeply, not quickly.}]

And so on...

Remember that traning your students to be coaches doesn't mean that you stop being one!


@subsection{Language Learning Loops, Conclusion}

To conclude, there are many possible Language Learning Loops.  You can even create your own.  And you are allowed to switch between different loops at will (even in the middle of a class).

As long as a loop contains the essential qualities, it is valid, and you may do it.     

Keep in mind, though, the mark of a good coach isn't how cool or complicated your Langauge Learning Loops are.  It's how and what your students are learning.  

Are they learning coding?  Are they learning how to coach themselves and others?

After just one hour of coaching, you can self-assess with some of these questions:

@itemlist[@item{@bold{Do your students know about this handbook?}  If not, why were you hiding it from them?  The first step to helping them to become better coaches is to reveal the resources that @bold{you} use.  Help them understand how t @bold{they} can use those same resources.}
          @item{@bold{Have your students seen you use this handbook to lead a Language Learning Loop and at least one tactic?}  It's fine if you have the contents of this book memorized (the more you coach, the more tactics you'll memoriz) -- but you still need to teach "out of the book".  Why?  Because it implicitly teaches students how @bold{they} can teach.  If they see you using the handbook, they will be less shy about using it themselves when you hand it over to them and ask them to lead an activity.  Use the book -- and let your team see you using it.  It is a mark of an experienced coach if you can simultaneously: 1) teach coding and 2) teach your teaching process.}
          @item{@bold{Do your students know what a Language Learning Loop is?  Do they know what a tactic is?}  If not, why not?  Weren't you doing a Language Learning Loop with them?  (You should have been!  That's your job as a coach.)  If you were, then why weren't you calling it the "Language Learning Loop"?  Use the vocabulary from this book as you lead activities and structure the educational experience.  Your students should know these words: "tactic", "challenge card", "Language Learning Loop", etc.  They should know these terms because you've been using them the whole time!}
          @item{@bold{Would your students be able to lead a tactic on their own?}  If not, that's okay.  This can take time for some students.  But ask yourself, what can you do next time to challenge them to take on even more of a leadership role? }]


@section{Disintegrating Code}

@(require "../tactics/tactic-library/disintegrating-code.rkt")

  @(tactic->scribble
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers))

@section{Code Anatomy}

@(require "../tactics/tactic-library/code-anatomy.rkt")

  @(tactic->scribble
    (code-anatomy 'Coach
                  'Team
                  'Team-Computers
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers))

@section{Translation Challenge}

@(require "../tactics/tactic-library/translation-challenge.rkt")

@(tactic->scribble
  (translation-challenge 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers
                         'five-minutes
                         'timer))

@section{Reverse Engineering}

@(require "../tactics/tactic-library/reverse-engineer.rkt")

@(tactic->scribble
  (reverse-engineer 'Coach
                    'Team
                    'Coach-Computer
                    'Team-Computers
                    'the-challenge-card
                    'the-kata-page
                    'the-whiteboard
                    'the-markers))

@section{???}

TODO

@section{???}

TODO

@section{???}

TODO

@section{Advanced Tactics}

These are tactics that are longer and more complex.  If students have done many smaller tactics, they are ready for these.  If they cannot do smaller tactics quickly and efficiently, though, they are probably not ready. 

There's no harm in trying.  But if it takes too long to get your team to understand how to do these tactics, then they simply need more practice.  Do some easier ones and come back to these on a different day.

Note that the instructions in these tactics may make use of @bold{subroutines} -- which are instructions that aren't printed in the tactic itself.  It'll look something like this:

@tactic->scribble[
  (list
    (instruction team (verb "Do something"))
    (instruction team (verb "Do something else"))
    (sub-routine (select-secret-subgroup 'Hackers))
    (instruction team (verb "Do something at the end")))
]

How many instructions are in the tactic above?  It may seem that there are just three or four.  But the @bold{GO SUB:} instruction is very special.

Whenever you see one of these, someone on the team must type in the program shown.  This will print out further instructions to be followed.  When all of those instructions are followed to completion, only then should the instructions after the subroutine be followed -- i.e. @tactic->scribble[(instruction team (verb "Do something at the end"))]

Doing tactics with subroutines requires keeping track of where you were in the tactic before you started doing the subroutine (because you'll need to come back there when the subroutine is finished).  It is the team's responsibility to keep these things in mind -- which is why these tactics are for advanced teams.

@section{Mafia}

@(require "../tactics/tactic-library/mafia.rkt")

@(tactic->scribble
 (mafia 'Coach
           'Team
           'Team-Computers
           'the-challenge-card
           'the-whiteboard
           'the-markers
           'the-timer))


@section{Team Memorize}

@(require "../tactics/tactic-library/team-memorize.rkt")

  @(tactic->scribble
    (team-memorize 
     'Coach
     'Team
     'Team-Computers
     'the-challenge-card
     'the-timer
     'the-whiteboard
     'the-markers))

@section{???}

TODO


@section{???}

TODO

@section{???}

TODO

@section{Subroutines}

Subroutines must be run on the computer, because they will print out differently depending on what arguments you supply.  However, we will print some examples here so that you can get a sense of what certain common subtroutines will look like. 

@subsection{Pass And Memorize}

@(tactic->scribble
  (pass-and-memorize))

@subsection{Post Mortem}

@(tactic->scribble
  (all-correct-post-mortem))


@subsection{Select Secret Subgroup}

Here's an example of what you get with

@codeblock{
  #lang ts-tactics

  (select-secret-subgroup 'Hackers)
}

@(tactic->scribble
  (select-secret-subgroup 'Hackers))


@subsection{Collaboratively Debug}

@(tactic->scribble
  (collaboratively-debug))


@subsection{Vote Member Into New Group}

Here's an example of what you get with

@codeblock{
  #lang ts-tactics

  (vote-member-into-new-group (not-in 'Jail) 'Jail)
}

@(tactic->scribble
  (vote-member-into-new-group (not-in 'Jail) 'Jail))





