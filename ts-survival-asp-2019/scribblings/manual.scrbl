#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ts-kata-util/katas/main
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do))

@title{Survival Games}

@survival-badges

@table-of-contents[]

@section{Intro Katas}

@(render code-of-awesomeness-katas)
@(render game-jam)
@(render hello-world-katas)

@(sections-for kata-section
               avatar-katas
               food-katas
               enemy-katas
               crafter-katas)

@section{Level Design}
@(render bg-and-level-design-katas)

@section{Extra Katas}
@(render coin-katas)
@(render weapon-crafter-katas)
@(render sky-katas)
@(render npc-katas)

@include-section["game-jam.scrbl"]

@(include-section survival/scribblings/assets-library)
 

