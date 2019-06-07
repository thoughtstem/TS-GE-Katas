#lang scribble/manual

@(require "../lang.rkt")


@title{ThoughtSTEM Language Learning Handbook}

@section{Introduction}

Welcome!  This handbook contains learning "tactics" -- i.e. algorithms, games, and activities designed to help people become extremely fluent in a variety of programming languages.

If you're a coach, you should use these tactics to teach your students two things:

@itemlist[#:style 'ordered
          @item{How to code}
          @item{How to use the learning tactics on their own}]

This second point is subtle but incredibly important: You are not just teaching coding; you are teaching people how to learn coding.  You're not just playing games with students; you're teaching them how to play the games without your help.  You're not just being a coach; you're teaching them how to be coaches.  You're not just being a teacher; you're teaching them how to be teachers.   You're not just being a leader; you're teaching them how to lead.

What all this means is: as students become more and more skilled at doing these tactics, you should be giving them more and more responsibility for helping you run the tactics. 

@itemlist[@item{A @bold{brand new student} might simply follow along as you lead a tactic. That's fine.  But...}

          @item{A @bold{first-day student} who has done a few tactics already should be capable of helping to explain those tactics to others.}
          @item{A @bold{new student} with a few days of class under their belt should be able to help out as an "assistant" coach in various ways.}
          @item{@bold{Intermediate students} should be able to run a few easy learning tactics from memory and a few advanced ones if they are referencing this book.} 
          @item{@bold{Advanced students} should be able to run many tactics on their own and any tactic if they are referncing it in this book.}]

Students will only experience this growth in self-driven learning and leadership if you encourage them to begin taking on leadership roles as soon as possible.

@centered[@emph{Don't: Just use this book to teach coding}]

@centered[@emph{Do: Teach them how to use this book}]

To make that very concrete: In this book, you will see many tactics that give an instruction to you, the coach.  For example:

@(codeblock
(tactic->string
   (instruction 'Coach
          (hand-write
            (contents-of
              (back-of 'Challenge-Card))
            (bottom-half-of 'The-Whiteboard)))))

A novice coach might see this instruction and immediately begin writing on the whiteboard. 

But let me ask you, who is "the coach"?  Remember, it isn't just you.  Your students are coaches-in-training from day 1.  

Ask @emph{them} to interpret the instructions for you.  Ask @emph{them} to write code on the board.  Ask @emph{them} to step into your shoes and lead for a few seconds.  A few minutes.  A full tactic.  Two tactics in a row.  And so on.

This can take time.  Have patience.  But believe in your students.  And believe in yourself. 

@section{The Language Learning Loop}

The core thing you'll be doing as a coach is running a "Language Learning Loop".
It's essential that coaches (and coaches-in-training) know what that is (and isn't).

@subsection{The "Basic"}

The most basic thing that can be considered a "Language Learning Loop" is this, which we call the "Basic":

@(verbatim
   (tactic->string 
    (list
    (until (predicate "is over" "class")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (instruction (group-add 'Coach 'Team)
      (body-action "do tactic together"))

     (instruction 'Team
      (body-action "take Kata Test on challenge-card"))))))

A Language Learning Loop is any teaching/learning algorithm that has these 5 essential qualities:

@itemlist[@item{@bold{It is a loop}.  The @verbatim{Do Until class is over} is what makes it a "loop".}
          @item{@bold{It involves selecting a challenge card in some langauge being learned} (e.g. @racket[battlearena], @racket[html5-lang], @racket[vr-lang], or any other ThoughtSTEM language)}
          @item{@bold{It involves selecting a tactic} -- i.e. a learning algorithm -- from this handbook.  All tactics in this book are language-independent!  That is: any tactic will work for any language.}
          @item{@bold{It involves doing that tactic together with the team} -- helping them understand both the code on the challenge card, but also the tactic itself, so that they become better and better learners in the future.}
          @item{@bold{It ends with students being officially tested} -- to see if they can write the code from the back of the challenge card while only seeing the front of the card.  Whether they pass or fail, the conclusion of this test is the end of one cycle of the loop -- at which point it can begin again with a new challenge card (or the same one).}]

There are as many Langauge Learning Loops as there are coaches, and we do encourage you to develop your own unique loop (i.e. unique teaching style) over time.  However, when you do decide to innovate on the Language Learning Loop, it is essential that you avoid accidentally running something that does @bold{not} fit the definition of a Language Learning Loop.  

For example, this does @bold{not} fit the definition:

@(verbatim
   (tactic->string 
    (list
    (until (predicate "is over" "class")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (instruction (group-add 'Coach 'Team)
      (body-action "do tactic together"))))))

It is a loop.  But this loop is missing one of the essential qualities!  Indeed, it is missing the @bold{most} essential quality of a Language Learning Loop: there is no test at the end!

Remember that students get badges like these for every ten tests that they pass:

@(require ts-kata-util/badge-maker/main)

@avengers-badges

These badges need to mean something.  The tests are what help the badges maintain integrity.  Tests are not easy to pass; and badges are not easy to earn.  It's supposed to be that way.

However, with the appropriate attitude, the learning (and earning) process can be fun -- even though it is not easy.  That's precisely your job as a coach: to help students stay excited about challenging themselves, to help them embrace failure as a opportunity, to help them become proud of their hard work, to help them realize that they @bold{can} do this even though it is hard.

There is nothing wrong with The Basic Loop.  Many coaches, even extremely advanced ones, use this exact loop.  Also, because it is so simple, it is a great one to teach to assistant coaches (i.e. your students). 

@subsection{The "Reduce Failures"}

Some coaches do not like to see students fail.  That's understandable.  This is a loop that greatly increases the chances that all of the students on your team will pass the test at the end of the loop.  It does so by having another loop inside it, in which you @bold{really} make sure that students are prepared for the test at the end.

@(verbatim
   (tactic->string 
    (list
    (until (predicate "is up" "time")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (until (predicate "is completed satisfactoraly" "the tactic")
      (instruction (group-add 'Coach 'Team)
       (body-action "do tactic together")))

     (instruction 'Team
      (body-action "take Kata Test on challenge-card"))))))

This Language Learning Loop is good for novice students (who tend to be sensitive to failure).   The drawback is that it takes longer to get to the test.  But that's also kind of the point -- to delay getting there until students are ready.

@subsection{The "100% Pass Rate"}

Here's one that makes absolutely certain that students pass the test at the end of the loop.  It works by having an inner loop that
has increasingly difficult tests @bold{embedded inside of it}.  This means that by the time you get to the test,
you've already done the test many times already.

Here's the "100% Pass Rate":

@(verbatim
   (tactic->string 
    (list
    (until (predicate "is up" "time")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick Disintegrating Code tactic"))

     (instruction (group-add 'Coach 'Team)
       (body-action "do Disintegrating Code together"))

     (instruction 'Team
      (body-action "test on challenge-card"))))))

This is @bold{exactly} the same as the "Reduce Failures" -- except that instead of picking any tactic in this book, you must
pick the @bold{Disintegrating Code} tactic.  This tactic (printed below, and also later in this book) is somewhat special because it involves
a loop where the coach writes code on the whiteboard and removes parts from it until there is nothing left, testing the team at each stage:

@(verbatim
   (tactic->string
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers)))

By the time the tactic is complete, the students have written the entire code without any prompting -- which is precisely what the
official test requires them to do.  Thus, the test can be skipped (since they did it during the tactic).  No need to test the team twice!

This Language Learning Loop is excellent for very sensitive novice students.  It has a drawback, though: It only involves one tactic!
There are many tactics in this book.  Each tactic helps strengthen different coding skillsets.  A well-rounded education does
require doing a diverse variety of tactics over time.

This is a great loop to start with, though.

@subsection{The "Choose Your Own Adventure"}

This is a great loop for advanced students because it gives them more agency over their learning.  Here the tactic is chosen by discusssion, and this continues until @emph{the team} decides to move on to the test.

@(verbatim
   (tactic->string 
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
      (body-action "test on challenge-card"))))))


This works best with students who know a variety of tactics and who have developed enough metacognitive ability to know which tactics will help them and their team learn most effectively. 

It is also a perfect example of the fundamental principle of this handbook: Teach students how to learn.  The more you involve them as active participants in their own learning, the better.

The challenges are that you will need to know when to override the team's decisions if their educational insights are flawed:

@itemlist[@item{If they tend to keep picking the same comfortable tactics over and over, you will need to encourage them to explore new ones and to embrace discomfort.}
          @item{If they tend to be reluctant to test themselves, you may need to encourage them to stop doing tactics and take the test -- teaching them that failing a test is not something to be afraid of.}
          @item{If they tend to be too focused on taking tests and earning badges as fast as possible, you may need to slow them down and point out that the goal is to learn deeply, not quickly.}]

Even when students are directing their own learning, coaches must still provide metacognitive guidance.  Remember that traning your students to be coaches doesn't mean that you stop being one!


@subsection{Conclusion}

To conclude, there are many possible Language Learning Loops.  You can even create your own.  And you are allowed to switch between different loops at will (even in the middle of a class).

As long as a loop contains the essential qualities, it is valid, and you may do it.     

In general, though, you should be training yourself and your students to become more and more active participants in the learning process.

After just one hour of coaching, you can self-assess with some of these questions:

@itemlist[@item{@bold{Do your students know about this handbook?}  If not, why were you hiding it from them?  The first step to helping them to become better coaches is to reveal the resources that @bold{you} use.}
          @item{@bold{Have your students seen you use this handbook to run a Language Learning Loop and at least one tactic?}  It's fine if you have the contents of this book memorized -- but you still need to teach out of the book.  Why?  Because it implicitly teaches students how to teach.  If they see you using the handbook, they will be less shy about using it themselves when you hand it over to them and ask them to lead an activity.  Use the book -- and let your team see you using it.  It is a mark of an experienced coach if you can both teach and also reveal your teaching process at the same time.}
          @item{@bold{Do your students know what a Language Learning Loop is?  Do they know what a tactic is?}  If not, why not?  Weren't you doing a Language Learning Loop with them?  (You should have been!  That's your job as a coach.)  If you were, then why weren't you calling it the "Language Learning Loop"?  All coaches need to know the names for the things that coaches do.  Therefore, your students (who are all coaches-in-training) should know these words: "tactic", "challenge card", "Language Learning Loop", etc.  They should know these terms because you've been using them the whole time!}
          @item{@bold{Would your students be able to lead a tactic on their own?}  If not, that's okay.  This can take time for some students.  But ask yourself, what can you do next time to challenge them to take on even more of a leadership role? }]

@section{Tactics}

@subsection{Disintegrating Code}

@(require "./disintegrating-code.rkt")

@(verbatim
   (tactic->string
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers)))

@subsection{Code Anatomy}

@(require "./code-anatomy.rkt")

@(verbatim
   (tactic->string
    (code-anatomy 'Coach
     'Team
     'Team-Computers
     'the-challenge-card
     'the-whiteboard
     'the-markers)))

@subsection{???}

TODO

@subsection{???}

TODO

@subsection{???}

TODO

@subsection{???}

TODO

@subsection{???}

TODO

@section{Advanced Tactics}

These are tactics that are simply longer.  If students have done many smaller tactics, they are ready for these.  If they cannot do smaller tactics quickly and efficiently, though, they are probably not ready. 

There's no harm in trying.  But if it takes too long to get your team to understand how to do these tactics, then they simply need more practice.  Do some easier ones and come back to these on a different day.

@subsection{Mafia}

@(require "./mafia.rkt")

@(verbatim
(tactic->string
 (mafia 'Coach
           'Team
           'Team-Computers
           'the-challenge-card
           'the-whiteboard
           'the-markers
           'the-timer)))


@subsection{Team Memorize}

@(require "./team-memorize.rkt")

@(verbatim
   (tactic->string
    (team-memorize 
     'Coach
     'Team
     'Team-Computers
     'the-challenge-card
     'the-timer
     'the-whiteboard
     'the-markers)))

@subsection{???}

TODO


@subsection{???}

TODO

@subsection{???}

TODO
