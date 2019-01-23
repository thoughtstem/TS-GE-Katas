#lang scribble/manual

@(require ts-kata-util/katas/main
          ts-kata-util/katas/rendering
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Fundamentals for In-School Programs}

This collection is based on our ts-fundamentals kata collection. Running
this program is a little different than running a kata-based curriculum
in an after school program. Here are some tips:


@larger[@larger[@bold{Gamification}]]

Like any ThoughtSTEM curriculum, @bold{fun} is a pivotal part of running
a successful program! However, in an in-school program, we are unable
to supply many of the physical objects of our typical gamification (no
tokens, TSD, market, etc).

So it's up to you, @bold{coach}! Find the fun in success, of earning katas
especially -- create rituals, mini celebrations, and just plain excitement
when challenges are approached and overcome. For example:

@itemlist[@item{High fives!}
          @item{Silly victory dances -- done by students or by you??}
          @item{Everyone counting down to the start of a timed
           kata challenge}
          @item{Be creative, silly and FUN!}]

@larger[@larger[@bold{Kata Memorization}]]

Depending on how often we run your in-school program, you likely will
have to shift away from the emphasis on pure memorization of the code over
time. Building a large repertoire of code concepts that can be
acccessed without hints may not be possible with a two week plus break
between classes.

Adjust the focus to memorization for that day, @bold{teamwork and team knowledge}, and general
understanding of the code tnat can last over time. The hope is that
by the end of the course, students will be able to create simple shapes
from memory, and more complex shapes with some guidance, hints and reminders.

@larger[@larger[@bold{Don't Forget...}]]

Though there are a few differences between in-school programs and ASPs, it is
important to keep the key themes of kata-based programming including:

@itemlist[@item{The exciting, challenging aspects of Katas -- especially using
           time limits.}
          @item{Core Values}
          @item{Excitement!}]


@table-of-contents[]

@section{Day 1 -- Shapes}

@(render day-1-katas)


@section{Day 2 -- Beside & Above}

@bold{REVIEW} Core Values

@(render day-2-katas)



@section{Day 3 -- Overlay}

@bold{REVIEW} Beside and above

@(render day-3-katas)


@section{Day 4 -- Making Pictures}

@bold{REVIEW} Beside, above, and overlay

@(render day-4-katas)


@section{Day 5 -- Making Complex Pictures}

@bold{REVIEW} Creating houses and trees

@(render day-5-katas)


