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

@(tri-badge #:bgs (shuffle pallet3)
      double-swords-icon
      carrot-icon
      coins-icon)

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

@subsection{Coin Katas}
@(render coin-katas)

@subsection{Sky Katas}
@(render sky-katas)

@subsection{Starvation Rate Katas}
@(render starvation-rate-katas)

@subsection{BG Katas}
@(render bg-katas)

@subsection{NPC Katas}
@(render npc-katas)

@include-section["practice-game-jam.scrbl"]

@(include-section survival/scribblings/assets-library)
 

