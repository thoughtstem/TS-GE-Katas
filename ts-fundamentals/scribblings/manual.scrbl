#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt")

@title{Fundamentals}

These are a collection of katas intended to help you improve
your fundamental skills as a programmer.

@bold{Fundamental skills} can be broken down into various types:

@itemlist[@item{@bold{Meta-cognitive Skills.} Knowing how to learn coding.  Yes, believe it or not, you can learn about how to learn coding before you even start learning coding.}
          @item{@bold{Reading Skills.} Being able to read code and (quickly) determine what it does.}
          @item{@bold{Writing Skills.} Being able to read a high level specification like "Write code that does ___" and (quickly) translate that idea into code.}
          @item{@bold{Refactoring Skills.} Being able to take a program and (quickly) rewrite so that the code is shorter, but it continues to do the same thing.}]

In general, the most difficult skills to aquire are writing skills.  Currently, the bulk
of the katas in this collection are intended to target code writing skills.  We'll be adding more
of each type in the future.

@table-of-contents[]


@section{Meta(cognitive) Skills}

The ThoughtSTEM core values are a succinct way of encapsulating
two recent results from the field of learning sciences.  Namely,
1) that learning improves when you are aware of your own learning process
(see @link["https://en.wikipedia.org/wiki/Metacognition"]{Meta-Cognition}), and 2) that learning improves
when you are learning in a social setting (see @link["https://en.wikipedia.org/wiki/Social_constructivism"]{Social Constructivism}).

Together, these scientific insights motivate the two core values below.

Memorizing and reciting these values helps keep students focused on the two most important things when
they are learning: their own growing abilities; and their membership
within a society of other learners.

@(render core-values)

@section{Writing Skills}

These katas are generally listed in order of difficulty.

Note that (as is always the case with katas), doing the kata once is not necessarily enough.
You must do them in the appropriate time limit or faster.  (Or if no time limit is specified,
you should be able to do the kata at roughly the same speed that you would be able to type it
if you were copying it verbatim.)  Why so fast?  Katas are about mastery, not about exposure.

Katas are meant to be repeated.  Hold yourself to a high standard.  Get your timer out.

@(render katas)

@section{Reading Skills}

Check back later.

@section{Refactoring Skills}

Check back later.

@section{Session End Art Jam!}

As with any kata-based curriculum, the final class is a challenging "jam" that tests and
celebrates the skills students have learned over the session. With Fundamentals, we have
an @bold{Art Jam} where they use their creativity, plus the 2htdp/image skills they have learned.

Here are the 4 parts of an Art Jam. Adjust timing of each section to fit within the hour
and support your students towards success,

@subsection{Review}
Take some time to briefly review the skills you have learned this session.

@itemlist[@item{Different shapes}
          @item["Shape Combinations"
                 @itemlist[@item{Beside}
                           @item{Above}
                           @item{Overlay}]]
          @item{Complex Combinations -- nesting shape combos}]

@subsection{Brainstorm}
Students have a short but reasonable amount of time to come up with a picture they can
make with the shapes and combos they have learned. A @bold{theme} can help students
focus and find something quickly!

@margin-note[@bold{Tip:} "If you have access to scrap paper and pencils, the students
             can actually draw out their ideas!"]

Encourage students to:
@itemlist[@item{think simple!}
          @item{think relationships -- how will this shape combine with this one?}
          @item{start thinking code even while designing}]

@bold{WARNING:} You don't want to have students plan an amazing elaborate picture
only to end up frustrated when they can't even code a fraction of it. Giving examples
(trees! houses! smiley faces! snowman!), a simple theme can help or limiting the
number of shapes they can use can help.

@subsection{Code!}
The majority of the class is spent coding! Keep the energy positive, encourage students
to help each other, and be a supportive guide throughout the process.

Encourage student to:
@itemlist[@item{Break it down into the smallest combos first.}
          @item{Keep thinking simple!}
          @item{Celebrate any success, even if they don't finish.}]

@subsection{Show and Tell}
In the last few minutes, "open the museum" and let students see each other's work! You
can also delay cleanup so parents can have a chance to see work, if possible!

@subsection{REMEMBER!}
@bold{Excitement!!!}

@larger{FUN!}

@italic[@bold{Any success is a success worth celebrating!}]
