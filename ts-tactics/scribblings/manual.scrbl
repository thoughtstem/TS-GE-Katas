#lang scribble/manual

@(require "../tactics/lang.rkt"
          scribble/core
          scribble/html-properties
          scribble/latex-properties
          racket/runtime-path)

@(define-runtime-path tactics-doc-css-path "./tactics-doc.css")
@(define-runtime-path tactics-doc-tex-path "./tactics-doc.tex")
@(define-runtime-path ts-logo-path "../tactics/base/img/ts-tree.png")

@(define pdf-style
   (make-style "pdf-style"
          (list (css-addition tactics-doc-css-path)
                (tex-addition tactics-doc-tex-path)
                )))

@(define logo-style
   (make-style "LogoStyle"
               '()))

@title[#:style pdf-style]{ThoughtSTEM Language Learning Tactics}

@(centered (image ts-logo-path #:style logo-style))

@section{Disintegrating Code}

@(require "../tactics/tactic-library/disintegrating-code.rkt")
@(para (italic "Players write code from the whiteboard; each round more and more code disappears!"))
@(tactic->scribble
  (disintegrating-code 'the-tactics-master
                       'the-players
                       'the-chromebooks
                       'the-challenge-card
                       'the-whiteboard
                       'the-whiteboard-markers
                       'the-timer))

@section{Code Anatomy}

@(require "../tactics/tactic-library/code-anatomy.rkt")

@(para (italic "Label and define the different parts of the code, then use the labels as a guideline to rebuild the code as a team."))
@(tactic->scribble
  (code-anatomy 'the-tactics-master
                'the-players
                'the-chromebooks
                'the-challenge-card
                'the-whiteboard
                'the-whiteboard-markers
                'the-timer
                ))

@section{Reverse Engineering}

@(require "../tactics/tactic-library/reverse-engineer.rkt")

@(para (italic "Starting with the finished game, players evaluate the elements of the game and how to code it."))
@(tactic->scribble
  (reverse-engineer 'the-tactics-master
                    'the-players
                    'the-master-chromebook
                    'the-player-chromebooks
                    'the-challenge-card
                    'the-kata-page
                    'the-whiteboard
                    'the-whiteboard-markers
                    'the-timer))

@section{Building Up!}

@(require "../tactics/tactic-library/building-up.rkt")

@(para (italic "Break down the process of building a more complex game into easy steps before coding it."))
@(tactic->scribble
  (building-up 'the-tactics-master
               'the-players
               'the-chromebooks
               'the-challenge-card
               'the-whiteboard/paper
               'the-whiteboard-markers/pen))

@section{Code Carousel}

@(require "../tactics/tactic-library/code-carousel.rkt")

@(para (italic "Players pair up and try to code a game, while rotating computers every 45 seconds!"))
@(tactic->scribble
  (code-carousel 'the-tactics-master
                 'the-players
                 'the-chromebooks
                 'the-challenge-cards
                 'the-whiteboard/paper
                 'the-whiteboard-markers/pen
                 'the-timer))


@;{
If your students forget, here are a some reminders you can show them.

The @bold{#lang line} always comes first and should be self-explanatory.

Here is an example @bold{definition} (anything that starts with @racket[define]).
You would put a box around the whole thing (from the parenthesis before @racket[define] to the matching one).

@codeblock{
  (define (foo)
    42)
}

Here is a @bold{top-level expression}.  You can recognize it because it doesn't start with @racket[define], and is not
wrapped up inside more code.  Below, the @racket[(basic-avatar)] is not a top-level expression, but the containing
@racket[(start-game #:avatar (basic-avatar))] is:

@codeblock{
  (start-game 
     #:avatar (basic-avatar))
}

A @bold{keyword} is anything with a pound-sign and a colon: e.g. @racket[#:avatar].

A @bold{parenthesized expression} is anything that starts and ends with a parenthesis.  That includes: 

@itemize[@item{definitions}
         @item{top-level expressions}
         @item{any expression nested in a definition}
         @item{any expression nested in a top-level expression}]

An expression's @bold{nesting depth} is how many other @bold{parenthesized expressions} are wrapped around it.  For example, there are three expressions below:
 
@codeblock{
  (start-game 
     #:avatar (basic-avatar #:sprite (my-cool-sprite)))
}

The @racket[start-game] expression has a depth of 0 (because there are 0 parentheses that wrap around it).  The @racket[basic-avatar] expression has a depth of 1, because it is inside the @racket[start-game] expression.  And the @racket[my-cool-sprite] expression has a depth of 2, because it is inside the @racket[basic-avatar] expression.

All expressions have a @bold{nesting depth}. 

@;#:summary "Learners tie appropriate technical vocabulary to syntactic structures"


@section{Make it More Precise, then Make it More Precise}

@(require "../tactics/tactic-library/translation-challenge.rkt")

@(tactic->scribble
  (translation-challenge 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-whiteboard-markers
                         'five-minutes
                         'timer))

@;#:summary "Learners translate from English to more and more technical and precise English prior to writing the implementation"

@section{Reverse Engineering}

@(require "../tactics/tactic-library/reverse-engineer.rkt")
 @(para (italic "Starting with the finished game, players evaluate the elements of the game and how to code it."))
 @(tactic->scribble
   (reverse-engineer 'Coach
                     'Team
                     'Coach-Computer
                     'Team-Computers
                     'the-challenge-card
                     'the-kata-page
                     'the-whiteboard
                     'the-whiteboard-markers))

@; #:summary "Learners must reverse engineer the specifications from a running program, without seeing the original specifications or the code itself."

@section{Advanced Tactics}

These are tactics that are longer and more complex -- and a bit more like "games".  If the team members have done many simpler tactics, they are ready for these.  You can use them as a reward for becoming more adept.

These tactics, due to the complex team dynamics they call for, help to build higher-level skills -- i.e. communication, collaboration, leadership, and teaching skills.  

Note that the instructions in these tactics may make use of @bold{subroutines} -- which are instructions that aren't printed in the tactic itself.  It'll look something like this:

@tactic->scribble[
  (list
    (instruction team (verb "Do something"))
    (instruction team (verb "Do something else"))
    (sub-routine (select-secret-subgroup 'Hackers))
    (instruction team (verb "Do something at the end")))
]

How many instructions are in the tactic above?  It may seem that there are just three or four.  But the @bold{GO SUB:} instruction is very special.

Whenever you see one of these, someone on the team must type in the program shown.  This will print out further instructions to be followed.  When all of those instructions are followed to completion, only then should the instructions after the subroutine be followed -- i.e. only after selecting the secret sub group would the team proceed to @tactic->scribble[(instruction team (verb "Do something at the end"))]

Doing tactics with subroutines requires keeping track of where you were in the tactic before you started doing the subroutine (because you'll need to come back there when the subroutine is finished).  It is the team's responsibility to keep these things in mind -- which is why these tactics are for advanced teams.

@bold{IMPORTANT:}

You will need to install/update the @racket[ts-tactics] package to run these tactics.  In DrRacket: @italic{File > Install Package...}

@section{Mafia}

@(require "../tactics/tactic-library/mafia.rkt")

@(tactic->scribble
 (mafia 'Coach
           'Team
           'Team-Computers
           'the-challenge-card
           'the-whiteboard
           'the-whiteboard-markers
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
     'the-whiteboard-markers))


@section{The End}

This handbook is a living document.  If you have ideas for more tactics, let us know.  We'll be adding more.

Any and all suggestions for improvement are welcome.  Email: @verbatim{contact@"@"thoughtstem.com}




@;include-section["./sub-routines.scrbl"]


}
