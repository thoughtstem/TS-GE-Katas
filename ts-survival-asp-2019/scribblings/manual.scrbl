#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Survival Games}

Welcome to the kata collection for @bold{Survival Games}.
This is for students and coaches participating in their local scholastic game jams for Winter/Spring 2019.

@survival-badges

@table-of-contents[]

@section{Intro Katas}

@(render core-values)
@(render game-jam)
@(render hello-world-katas)

@(sections-for kata-section
               avatar-katas
               food-katas
               enemy-katas
               crafter-katas)

@section{Extra Katas}

@subsection{BG Katas}
@(render bg-katas)

@subsection{Level Design Katas}
@(render level-design-katas)

@subsection{Coin Katas}
@(render coin-katas)

@subsection{Weapon Crafter Katas}
@(render weapon-crafter-katas)

@subsection{Sky Katas}
@(render sky-katas)

@subsection{NPC Katas}
@(render npc-katas)

@include-section["practice-game-jam.scrbl"]

@(include-section survival/scribblings/assets-library)
 

