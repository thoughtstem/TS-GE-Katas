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