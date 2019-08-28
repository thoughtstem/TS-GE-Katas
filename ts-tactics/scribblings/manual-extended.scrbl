#lang scribble/manual

@(require "../tactics/lang.rkt"
          scribble/core
          scribble/html-properties
          scribble/latex-properties
          racket/runtime-path)

@(define (about #:title title
                #:summary summary
                #:science (science "")
                #:key-metacognitive-concepts (metacognition '())
                #:short-term-outcomes (short-term '())
                #:long-term-outcomes (long-term '())
                )
   (list
     (subsection "About " title)
     (para (bold "Summary.") " " (italic summary))
     (para (bold "Scientific Grounding.") " " science)
     (bold "Key meta-cognitive concepts")
     (itemize (map item metacognition))
     (bold "Short-term cognitive outcomes")
     (itemize (map item short-term))
     (bold "Long-term cognitive outcomes")
     (itemize (map item long-term))))

@(define-runtime-path tactics-doc-css-path "./tactics-doc.css")
@(define-runtime-path tactics-doc-tex-path "./tactics-doc.tex")

@(define pdf-style
   (make-style "pdf-style"
          (list (css-addition tactics-doc-css-path)
                (tex-addition tactics-doc-tex-path)
                )))

@title[#:style pdf-style]{ThoughtSTEM Language Learning Handbook}

@section{Introduction}

Welcome!  This handbook contains learning "tactics" -- i.e. algorithms, games, and activities designed to help people become extremely fluent in a variety of programming languages.

If you're a coach, you should use these tactics to do two things:

@nested[#:style 'inset
        @itemlist[#:style 'ordered
          @item{Help help team members learn to code}
          @item{Help team members use the learning tactics in this book, to learn to code}]]

This second point is subtle but incredibly important: You are not just teaching coding; you are teaching people how to learn.  This manifests in many ways.  You're not just playing games with team; you're teaching them how to play the games.  You're not just being a coach; you're teaching them how to coach themselves.  You're not just being a teacher; you're teaching them how to teach.   You're not just being a leader; you're teaching them how to lead.

What all this means is: as team members become more and more skilled at doing these tactics, you should be giving them more and more responsibility for helping you lead the tactics. 

@itemlist[@item{A @bold{brand new member} might simply follow along as you lead a tactic. That's fine.  But...}
          @item{A @bold{first-day member} who has done a few tactics already should be capable of helping to explain those tactics to others.}
          @item{A @bold{new member} with a few days of class under their belt should be able to help you out as an assistant coach in various ways.}
          @item{@bold{After a few weeks, a member} should be able to lead a few easy learning tactics from memory and a few advanced ones if they are referencing this book.} 
          @item{@bold{After a few months, a member} should be able to lead many tactics on their own from memory and any tactic if they use this book.}]

Your team will only experience this growth in self-driven learning and leadership if you encourage them to begin taking on leadership roles as soon as possible.

@itemlist[@item{@bold{Don't}: Only use this book to teach coding.}
          @item{@bold{Do}: Teach @emph{how to use this book} while you're teaching coding.}]

Here's one concrete way you can do that: In this book, you will see tactics that give an instruction to you, the coach.  For example:

@(tactic->scribble
  (instruction 'Coach
               (hand-write
                (contents-of
                 (back-of 'Challenge-Card))
                (bottom-half-of 'The-Whiteboard))))

A novice coach might see this instruction and immediately begin writing on the whiteboard. 

But let me ask you, who is "the coach"?  Remember, it isn't just you.  Think of your team members as coaches-in-training from day 1.   

Ask @emph{them} to write code on the board.  Ask @emph{them} to interpret the instructions for you.  Ask @emph{them} to step into your shoes and lead for a few seconds.  A few minutes.  A full tactic.  Two tactics in a row.  And so on.

Your team members should always be actively participating as both learners and leaders.  With your help, they can simultaneously improve at both.

It can take time.  Have patience.  Believe in your team members.  Believe in yourself. 

@section{The Language Learning Loop}

The core thing you'll be doing as a coach is running a "Language Learning Loop".
It's essential that coaches (and coaches-in-training) know what that is and isn't.

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
      (body-action "officially test on challenge-card")))))

A Language Learning Loop is any high level learning algorithm that has these 5 essential qualities:

@itemlist[@item{@bold{It is a loop}.  The part that says @tactic->scribble[(until (predicate "is over" "class"))] is what makes it a "loop".}
          @item{@bold{It involves selecting a challenge card in some language being learned} (e.g. @racket[battlearena], @racket[html5-lang], @racket[vr-lang], or any other ThoughtSTEM language)}
          @item{@bold{It involves selecting a tactic} -- i.e. a learning algorithm -- from this handbook.  All tactics in this book are language-independent!  That is: any tactic will work for any language.  Note, there are many challenge cards, but few tactics.  You can (and should!) repeat tactics frequently -- but you will only repeat challenge cards if you want to.}
          @item{@bold{It involves doing that tactic together with the team} -- helping them understand both the code on the challenge card, but also the tactic itself, so that they become better and better learners in the future.}
          @item{@bold{It ends with all team members being officially tested} -- to see if they can write the code from the back of the challenge card while only seeing the front of the card.  Whether they pass or fail, the conclusion of this test is the end of one cycle of the loop -- at which point it can begin again with a new challenge card (or the same one).}]

There are as many Language Learning Loops as there are coaches, and we do encourage you to develop your own unique loop (i.e. unique coaching style) over time.  However, when you do decide to innovate on the Language Learning Loop, it is essential that you avoid accidentally leading something that does @bold{not} fit the definition of a Language Learning Loop.  

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

Remember that team members get badges like these for every ten tests that they pass:

@(require ts-kata-util/badge-maker/main)

@avengers-badges

These badges need to mean something.  The tests are what help the badges maintain integrity.  Tests are not easy to pass; and badges are not easy to earn.  It's supposed to be that way.

However, with the appropriate attitude, the learning (and earning) process can be fun -- even though it is not easy.  That's precisely your job as a coach: to help team members stay excited about challenging themselves, to help them embrace failure as a opportunity, to help them become proud of their hard work, to help them realize that they @bold{can} do this even though it is hard.

There is nothing wrong with the "Basic".  Many coaches, even extremely advanced ones, use this exact loop.  Also, because it is so simple, it is a great one to teach to assistant coaches (i.e. your team members). 

There are other Language Learning Loops, however, with different properties.  We'll look at a few now.

@subsection{The "Reduce Failures"}

Some coaches do not like to see team members fail.  That's understandable.  This is a loop that greatly increases the chances that all of the team members will pass the test at the end of the loop.  It does so by having another loop inside it, in which you @bold{really} make sure that the team is prepared for the test at the end.

 @(tactic->scribble
(until (predicate "is up" "time")
     (instruction 'Coach
      (body-action "pick challenge-card"))

     (instruction 'Coach
      (body-action "pick tactic"))

     (until (predicate "is completed satisfactorily" "the tactic")
      (instruction (group-add 'Coach 'Team)
       (body-action "do tactic together")))

     (instruction 'Team
      (body-action "officially test on challenge-card"))))

This Language Learning Loop is good for novice members (who tend to be sensitive to failure).   The drawback is that it takes longer to get to the test.  (Then again, the "drawback" is also the whole point -- to delay getting there until members are ready.)

@subsection{The "100% Pass Rate"}

Here's one that makes absolutely certain that members pass the test at the end of the loop.  It works by having an inner loop that
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
                         'the-markers
                         'the-timer))

By the time the tactic is complete, the team members have written the entire code without any prompting -- which is precisely what the
official test requires them to do.  Thus, the test can be skipped (since they did it during the tactic).  No need to test the team twice!

This Language Learning Loop is excellent for sensitive novice team members.  It has a drawback, though: It only involves one tactic!
There are many tactics in this book.  Each tactic helps strengthen different coding skillsets.  A well-rounded education does
require doing a diverse variety of tactics over time.

This is a great loop to start with, though. (Adding in the @bold{Code Anatomy} tactic into the loop can be a great way to add another dimension to the educational experience.)

@subsection{The "Choose Your Own Adventure"}

This is a great loop for advanced team members because it gives them more agency over their learning.  Here, the tactic is chosen by discussion, and this continues until @emph{the team} decides to move on to the test.

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


This works best with team members who know a variety of tactics and who have developed sufficient metacognitive skill to know which tactics will help them and their team learn most effectively. 

It is also a perfect example of the fundamental principle of this handbook: Teach your team how to learn.  The more you involve them as active participants in their own learning, the better.

Note, you will need to know when to override the team's decisions if their pedagogical insights are flawed (which will be often):

@itemlist[@item{If they tend to keep picking the same comfortable tactics over and over, you will need to encourage them to explore new ones and to embrace discomfort.}
          @item{If they tend to be reluctant to test themselves, you may need to encourage them to stop doing tactics and take the official test -- teaching them that failing a test is not something to be afraid of.}
          @item{If they tend to be too focused on taking tests and earning badges as fast as possible, you may need to slow them down and point out that the goal is to learn deeply, not quickly.}]

And so on...

Remember that training your team to be coaches doesn't mean that you stop being one!


@subsection{Language Learning Loops, Conclusion}

To conclude, there are many possible Language Learning Loops.  You can even create your own.  And you are allowed to switch between different loops at will (even in the middle of a class).

As long as a loop contains the essential qualities, it is valid, and you may do it.     

Keep in mind, though, the mark of a good coach isn't how cool or complicated your Language Learning Loops are.  It's how and what your team is learning.  

Are they learning coding?  Are they learning how to coach themselves and others?  These are what matter.

After just one hour of coaching, you can self-assess with some of these questions:

@itemlist[@item{@bold{Do your team members know about this handbook?}  If not, why were you hiding it from them?  The first step to helping them to become better coaches is to reveal the resources that @bold{you} use.  Help them understand how @bold{they} can use those same resources.}
          @item{@bold{Have your team members seen you use this handbook to lead a Language Learning Loop and at least one tactic?}  It's fine if you have the contents of this book memorized (the more you coach, the more tactics you'll memorize) -- but you still need to teach "out of the book".  Why?  Because it implicitly teaches the team how @bold{they} can teach.  If they see you using the handbook, they will be less shy about using it themselves when you hand it over to them and ask them to lead an activity.  Use the book -- and let your team see you using it.  It is a mark of an experienced coach if you can simultaneously: 1) teach coding and 2) teach your teaching process.}
          @item{@bold{Do your team members know what a Language Learning Loop is?  Do they know what a tactic is?}  If not, why not?  Weren't you doing a Language Learning Loop with them?  (You should have been!  That's your job as a coach.)  If you were, then why weren't you calling it the "Language Learning Loop"?  Do use the vocabulary from this book as you lead activities and structure the educational experience.  Your team should know words like "tactic", "challenge card", "Language Learning Loop", etc.  If you are coaching correctly, these words should be coming up frequently. }
          @item{@bold{Would your team members be able to lead a tactic on their own?}  If not, that's okay.  This can take time for some team members.  But ask yourself, what can you do next time to challenge them to take on even more of a leadership role? }]



@section{Disintegrating Code}

@(require "../tactics/tactic-library/disintegrating-code.rkt")

  @(tactic->scribble
    (disintegrating-code 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers
                         'the-timer))


@(about #:title   "Disintegrating Code"
        #:summary "Learners begin by copying code verbatim and end by writing it from memory."
        #:science "This is a type of \"Faded Worked Example\" -- an activity in which the educator gradually removes pedagogical scaffolding until there is none left."
        #:key-metacognitive-concepts (list "Don't let learners believe that real programmers memorize and regurgitate."
                                           "Make it clear that the goal is fluency and language mastery."
                                           "Make it clear that memorization is just a power tool for language learning (similar to memorizing a Spanish story if you were in Spanish class.)"
                                           "Make it clear that in the grand scheme of things, it's less about what they are memorizing and more about the act of memorization itself, and how that trains your brain to be a better programmer."
                                           (list "Tell them it's okay if they eventually forget what they just memorized -- as long as they remember " (bold "how") " to memorise it again.")
                                           "Make it clear that they are training a powerful abstract skill: The ability to translate from English into code." 
                                           "Make it clear that this is critical for being a software developer, and that it will take many years to become an expert at this cognitive process.")
        #:short-term-outcomes (list "Introduces specification (front of card) and implementation (back of card)." 
                                    "Introduces learners to the Fundamental Cognitive Act of Software Development: the translation from specification to implementation.")
        #:long-term-outcomes  (list "Trains pattern matching (\"code vision\")"
                                    "Trains recall and recognition for language identifiers (\"knowledge acquisition\")"
                                    "Trains general memory skills for abstract grammars (\"chunking\")"
                                    "Trains grammatical intuitions for the language at hand (\"syntactic and semantic intuition\")"
                                    "Frees working memory for creativity and design by reducing cognitive load caused by lack of language fluency."))

@section{Code Anatomy}

@(require "../tactics/tactic-library/code-anatomy.rkt")

  @(tactic->scribble
    (code-anatomy 'Coach
                  'Team
                  'Team-Computers
                  'the-challenge-card
                  'the-whiteboard
                  'the-markers
                  'the-timer))

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

@(about #:title   "Code Anatomy"
        #:summary "Learners tie appropriate technical vocabulary to syntactic structures"
        #:science "Although individuals can learn a language's grammar implicitly (Krashen's \"Input Hypothesis\"), having a common technical vocabulary is critical for discussing code with other developers -- i.e. communication, collaboration, leadership, etc.  The exercise also gives names to the syntactic constructs that developers tend to \"chunk\" when they look at code -- which can help language learners detect and talk about the parts of the code that they too should be learning to chunk.  This meta-language learning is the key part of this tactic."
        #:key-metacognitive-concepts (list
                                        "Make it clear that software developers use technical language daily."
                                        "Make it clear that learning the names for things is critical for communicating with other developers."
                                        "Make it clear that learning the names for things makes it easier to assess one's own learning (you now have a vocabulary for expressing what you know and don't know)."
                                        "Make it clear that just covering the vocabulary once is not the point.  The point is to gain a kind of instantaneous, fluent recall over these concepts, such that when you see certain syntactic structures, you think of their names automatically."
                                        "Make it clear that, with practice, learners will move from recognition, to recall, to automaticity with all named concepts."
                                        (list "Make it clear that knowing the names for things does not mean you can write or read code.  It is just an aid to " (bold "becoming") " fluent, not something that makes you fluent automatically.")
                                        (list "Make it clear that this tactic isn't just to " (bold "cover") " the vocabulary -- but to build greater and greater " (bold "fluency") " over time.  It should still be done even after learners know the vocabulary.")
                                        "Make it clear that the speed at which learners can complete this tactic is the main indicator of their fluent retrieval of key information.  As always, help them aspire to be faster and more fluent.") 
        #:short-term-outcomes (list
                                 "Exposes learners to key coding vocabulary"
                                 "Exposes learners to the systematic deconstruction of code into its parts"
                                 "Helps learners analyze code independently of its specification: structural analysis."
                                 "Aids memory regarding the code at hand") 
        #:long-term-outcomes  (list
                                 "Learners gain a structured methodology for deconstructing code into its nameable parts"
                                 "Learners gain a structured methodology for \"chunking\" their understanding of code"
                                 "First: Learners gain recognition over key vocabulary"
                                 "Second: Learners gain recall over key vocabulary"
                                 "Third: Learners gain fluency regarding key vocabulary"))


@section{Make it More Precise, then Make it More Precise}

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

@(about #:title   "Make it More Precise, then Make it More Precise"
        #:summary "Learners translate from English to more and more technical and precise English prior to writing the implementation"
        #:science "The translation from abstract English specification to more precise English has been studied under the name \"Abstraction Transition Taxonomy\" and found to facilitate learning of programming at the college level.  This tactic expands upon this by providing more cognitive scaffolding for the English to English translation process.  The tactic is also firmly grounded in industry-relevant 21st-century coding skills: Software developers rarely have the luxury of implementing a specification without also helping to write that specification more clearly.  Software developers need to be skilled at all linguistic levels: from highly abstract English ideas, to extremely concrete executable code, and the myriad of linguistic levels in between."
        #:key-metacognitive-concepts (list
                                        "Make it clear that real software developers do precisely this activity: clarifying specifications before implementing."
                                        "Make it clear that software developers need to be masters of their native language, and masters of how to use their native language to express ideas very precisely."
                                        "Make it clear that your ability to communicate precisely and your ability to think precisely go hand in hand."
)
        #:short-term-outcomes (list
                                 "Demonstrates an abstract problem solving process that can be used across a range of problems"
                                 "Makes learners aware of the Fundamental Cognitive Act of Software Development and helps isolate its essential quality: iteratively adding clarity and precision to an idea that previously lacked both."
                                 "Helps learners realize that they (as speakers and writers of English) already have key cognitive tools that they will use as software developers.") 
        #:long-term-outcomes  (list
                                 "Learners gain a structured methodology for implementing code from a specification"
                                 "Learners gain a structured methodology for making any idea more clear than it previously was" 
                                 "First: Learners gain recognition over English phrases that can be clarified"
                                 "Second: Learners gain recall over standard techniques for phrasing things more precisely"
                                 "Third: Learners gain fluency in English to English translation, able to effortlessly rephrase ideas for technical audience or a non-technical audience, as well as to translate a specification into a structured implementation plan."))

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
                    'the-markers
                    'the-timer))

@(about #:title   "Reverse Engineering"
        #:summary "Learners must reverse engineer the specifications from a running program, without seeing the original specifications or the code itself."
        #:science "There is a rich history of teaching computing through reverse engineering, with many publications on the subject since (at least) 1991.  It works well because it forces learners to engage with the active construction of specifications -- rather than the passive acceptance of the specification as is.  Software engineers are frequently tasked with writing specifications and adapting them over time.  They may even be explicitly given a specification like: Write an app that's like our competitor's, but better.  Such a specification requires reverse engineering before any coding can begin."
        #:key-metacognitive-concepts (list
                                        "Make it clear that real software developers do reverse engineering frequently."
                                        "Make it clear that their specification doesn't have to be the same as the one written on the card.  However, the team should hold themselves to high standard.  If their specification differs greatly from the one written on the card, the question needs to be asked: Why?  And: Which specification is better?"
                                        "Make it clear that specifications aren't \"right\" or \"wrong\".  Value judgements must frequently be made to determine which of two specifications is better and why.  You can and should discuss such things when they arise."
)
        #:short-term-outcomes (list
                                 "Teaches the vocabulary word: \"reverse engineering\""
                                 "Makes learners aware that specifications can arise from engaging with software"
                                 "Makes learners aware that not all specifications are equal"
                                 "Makes learners aware that the same implementation can be specified in many ways, and that the different ways can be evaluated relative to each other through discussion with team members"
) 
        #:long-term-outcomes  (list
                                 "Learners gain an ability to deconstruct an interface and predict which coding constructs were necessary in its implementation"
                                 "Learners gain a fluency in deconstructing an interface into a list of features that can be implemented separately -- aiding the developer's ability to deconstruct large problems into smaller ones."))

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


@section{The End}

This handbook is a living document.  If you have ideas for more tactics, let us know.  We'll be adding more.

Any and all suggestions for improvement are welcome.  Email: @verbatim{contact@"@"thoughtstem.com}




@;include-section["./sub-routines.scrbl"]


