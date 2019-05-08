#lang scribble/manual


@(require ;ts-kata-util/katas/main
          ;ts-kata-util/katas/rendering
          ts-kata-util/badge-maker/main
          "../katas.rkt"
          "../rendering.rkt"
          (except-in racket read do) 
          )

@title{Mario Summer Camp}
@larger[@larger{Coding for Mario Fans}]

@mario-badges

@table-of-contents[]

@section{Intro Katas}
@(render core-values)
@(render hello-world-katas)

@(include-section ts-camp-materials/scribblings/half-day-schedule)
@(include-section ts-camp-materials/scribblings/gameshow-mario)
@(include-section ts-camp-materials/scribblings/game-jam-resources)
@(include-section adventure-mario/scribblings/assets-library)