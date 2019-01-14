#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          ts-kata-util/katas/rendering/pict
          ts-fundamentals/katas
          "../katas.rkt"
          "../rendering.rkt")

@title{Katas for Coaches}

You can always become a better coach!  This kata collection is for
exactly that.

It breaks down into two core skillsets that can easily
be strengthened through katas:

1) @bold{Your ability to coach with katas.}  This is a lifelong journey.  But the best way is to practice with other coaches, getting feedback and refining your craft.  See the teaching katas.

2) @bold{Your own coding ability.}  This is also a lifelong journey.  You can strengthen your codeing skills by doing the exact same katas you'll be teaching to students.
(If you want a student to do it in 5 minutes, you should be able to do it in 2, etc.)
But there are thousands of katas you could do, which are the most important ones?  See below.

@table-of-contents[]

@section{Coaching Katas}

@subsection{What are katas?}

That's the key question.  

At the most basic level, a kata is three things:

@itemlist[@item{@bold{A stimulus.}  A description of something a student is intended to take in -- usually auditory or visual stimulus.}
          @item{@bold{A response.}  A description of something a student is intended to do afterward.}
          @item{@bold{(Optional) Refinements.} Ways of describing how the student is intended to do the above.}]

Here's an example:

@(kata->pict core-values)

But usually, katas will be displayed in a way that's more integrated
with the document you're reading.  Here's the same kata printed
how you might usually see it on one of our webpages:

@(kata->scribble core-values)

@subsection{Using katas}

We'll be seeing lots of katas like the above in a moment.  But
before we get to that, we need to say a few words on how katas are supposed to be used by
coaches and students.

A coach's job is to help students master katas, one by one, with the following @bold{Four Phases of Kata Master}:

@itemlist[@item{@bold{Encounter.}  The coach will show the entire kata (stimulus, response, and refinements) to the student.}
          @item{@bold{Training.}   The coach will help the student train for the testing phase.  This may involve having the student do other, simpler katas.}
          @item{@bold{Testing.}    The coach will show the stimulus only.  The student must produce the correct response.  The student should not receive assistance during the test.}
          @item{@bold{Praise.}     The coach will praise the student.
           Where possible, praise should be "growth focused".
           One of the best ways to do this is to point out the student's success in the testing phase to their work in the training phase.}]

Here are some "meta katas" to test your understanding of what a kata is and how you're supposed to use them.

@(scribblify-collection #:level subsubsection meta-katas)

@subsection{Easy Coach Katas}

What follows are some @bold{coach katas}.  These are katas that
are intended to give you practice at coaching.  These are "easy" -- in
the sense that they are suitable for training novice coaches or
as warmup katas for more advanced coaches.

@(scribblify-collection #:level subsubsection teaching-katas)

@section{Coding Katas}

@(scribblify-collection  #:level subsection fundamentals-katas)
