#lang scribble/manual

@(require "../lang.rkt")


@title{ThoughtSTEM Learning Tactics Handbook}

@section{Introduction}

Welcome!  This handbook contains learning algorithms (and games) designed to help people learn programming. 

If you're a coach, you should use these tactics to teach your students two things:

@itemlist[@item{How to code}
          @item{The learning tactics themselves}]

This is a subtle but incredibly important point: You are not just teaching coding; you are teaching people how to learn coding.  You're not just playing games with students; you're teaching them how to play the games by themselves.  You're not just being a coach; you're teaching them how to be coaches.  You're not just being a teacher; you're teaching them how to be teachers.   You're not just being a leader; you're teaching them how to be leaders.

Although these tactics are designed to be fun and entertaining, your job is not to create fun educational experiences -- but rather to teach students how to create fun educational experiences for themselves and others.

What all this means is, as students become more and more skilled at doing these tactics, you should be giving them more and more responsibility for helping you run the tactics. 

@itemlist[@item{A @bold{brand new student} might simply follow along as you lead a tactic. That's fine.  But...}

          @item{A @bold{first-day student} who has done a few tactics already should be capable of helping to explain those tactics to others.}
          @item{A @bold{new student} with a few days of class under their belt should be able to help out as an "assistant" coach in various ways.}
          @item{@bold{Intermediate students} should be able to run a few easy tactics from memory and a few advanced ones if they are referencing this book.} 
          @item{@bold{Advanced students} should be able to run many tactics on their own and any tactic if they are referncing it in this book.}]

Students will only experience this growth in self-driven learning and leadership if you encourage them to begin taking on leadership roles as soon as possible.

@emph{Don't: Just use this book to teach coding}

@emph{Do: Teach them how to use this book}

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

Ask @emph{them} to write code on the board.  Ask @emph{them} to interpret the instructions for you.  Ask @emph{them} to step into your shoes and lead for a few seconds.  A few minutes.  A full tactic.  Two tactics in a row.  And so on.

The sooner they can lead their own tactics without help, the sooner you can help them at a much deeper level: i.e. helping them analyze their own strengths and weaknesses, selecting tactics that nurture those strengths and target those weaknesses.

This can take time.  Have patience.  But believe in your students.  And believe in yourself. 

@section{Main Loops}

The most basic of tactics loops is this one.  (TODO: Discuss what is NOT a tactics loop...)

@(verbatim
   (tactic->string 
    (list
    (until (predicate "is up" "time")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (instruction (group-add 'Coach 'Team)
      (body-action "do tactic together"))

     (instruction 'Team
      (body-action "test on challenge-card"))))))

But many teachers prefer this one.

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
      (body-action "test on challenge-card"))))))


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



