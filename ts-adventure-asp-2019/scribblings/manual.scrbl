#lang scribble/manual

@(require ts-kata-util/katas/rendering
          ;ts-kata-util/katas/main
          ts-kata-util/badge-maker/main
          ;ts-kata-util/kata-card/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do)
          ;pict
          )

@title{Adventure Games}

@adventure-badges

@table-of-contents[]

@section{Intro Katas}

@(render code-of-awesomeness-katas)
@(render game-jam)
@(render hello-world-katas)

@(sections-for kata-section
               avatar-katas
               enemy-katas
               npc-katas
               food-katas
               fetch-quest-katas
               )

@section{Extra Katas}

@(render level-design-katas)
@(render coin-katas)
@(render crafter-katas)
@(render weapon-crafter-katas)
@(render sky-katas)
@(render bg-katas)


@include-section["game-jam.scrbl"]

@(include-section adventure/scribblings/assets-library)