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


@section{Session End Art Jam!}

As with any kata-based curriculum, the final class is a challenging "jam" that tests and
celebrates the skills students have learned over the session. With Fundamentals, we have
an @bold{Art Jam} where they use their creativity, plus the 2htdp/image skills they have learned.

Here are the 4 parts of an Art Jam. Adjust timing of each section to fit within the hour
and support your students towards success:

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


