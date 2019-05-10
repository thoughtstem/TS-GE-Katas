#lang scribble/manual

@(require ;ts-kata-util/katas/main
          ;ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Pokemon Summer Camp}
@larger[@larger{Coding for Pokemon Fans}]

@pokemon-badges

@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render hello-world-katas)

@section{Pokemon Katas}
@(render pokemon-katas)

@section{Food Katas}
@(render food-katas)

@section{Trainer Katas}
@(render trainer-katas)

@section{Crafter Katas}
@(render crafter-katas)

@section{Friend Katas}
@(render friend-katas)

@section{Extra Katas}
@(render stone-katas)
@(render sky-katas)
@(render level-design-katas)
@(render town-katas)

@;(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-pokemon)
@;(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section survival-pokemon/scribblings/assets-library)