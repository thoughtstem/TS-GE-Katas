#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          ts-kata-util/badge-maker/main
          ts-kata-util/kata-card/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          pict)

@title{Adventure Games}

Welcome to the kata collection for @bold{Adventure Games}.
This is for students and coaches participating in their local scholastic game jams for Fall 2019.

@adventure-badges

@table-of-contents[]

@section{Intro Katas}

@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@(sections-for kata-section
               avatar-katas
               coin-katas
               level-design-katas
               fetch-quest-katas
               enemy-katas
               food-katas
               crafter-katas
               weapon-crafter-katas
               sky-katas
               bg-katas
               npc-katas)

@section{Extra Katas}


@include-section["practice-game-jam.scrbl"]

@(include-section adventure/scribblings/assets-library)

@section{Kata Card}

Full Size Kata Card design for this course:

@(kata-card)

To print -- Save image and print @bold{9 per page}.

